import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/utils/validators.dart';
import '../../../core/utils/date_formatter.dart';
import '../../../core/constants/app_routes.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_text_field.dart';
import '../../../shared/services/location_service.dart';
import '../../../shared/widgets/loading_widget.dart';
import '../providers/astrology_provider.dart';

/// Add Profile Screen
/// Collects birth information and sends to AI model for analysis
class AddProfileScreen extends ConsumerStatefulWidget {
  const AddProfileScreen({super.key});

  @override
  ConsumerState<AddProfileScreen> createState() => _AddProfileScreenState();
}

class _AddProfileScreenState extends ConsumerState<AddProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _birthLocationController = TextEditingController();

  DateTime? _birthDate;
  TimeOfDay? _birthTime;
  bool _isLoading = false;
  String? _selectedLatitude;
  String? _selectedLongitude;

  @override
  void dispose() {
    _nameController.dispose();
    _birthLocationController.dispose();
    super.dispose();
  }

  Future<void> _selectBirthDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(const Duration(days: 365 * 25)),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() => _birthDate = picked);
    }
  }

  Future<void> _selectBirthTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() => _birthTime = picked);
    }
  }

  Future<void> _selectLocation() async {
    // TODO: Implement location picker
    // Show map or location search
    // Get coordinates from LocationService
    final position = await LocationService.getCurrentLocation();
    if (position != null) {
      setState(() {
        _selectedLatitude = position.latitude.toString();
        _selectedLongitude = position.longitude.toString();
      });
      
      final address = await LocationService.getAddressFromCoordinates(
        latitude: position.latitude,
        longitude: position.longitude,
      );
      if (address != null) {
        _birthLocationController.text = address;
      }
    }
  }

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) return;
    if (_birthDate == null || _birthTime == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select birth date and time')),
      );
      return;
    }

    setState(() => _isLoading = true);

    try {
      // Format birth time as HH:mm
      final timeString = '${_birthTime!.hour.toString().padLeft(2, '0')}:${_birthTime!.minute.toString().padLeft(2, '0')}';

      // Use Riverpod provider to analyze
      await ref.read(astrologyAnalysisProvider.notifier).analyzeBirthInfo(
        birthDate: _birthDate!,
        birthTime: timeString,
        birthLocation: _birthLocationController.text,
        latitude: _selectedLatitude,
        longitude: _selectedLongitude,
      );

      if (mounted) {
        final state = ref.read(astrologyAnalysisProvider);
        
        setState(() => _isLoading = false);
        
        if (state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: ${state.error}')),
          );
        } else if (state.result != null) {
          // Navigate to result screen with AI analysis
          context.push(
            AppRoutes.astrologyResult,
            extra: state.result,
          );
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Astrology Profile'),
      ),
      body: _isLoading
          ? const FullScreenLoading(message: 'Analyzing your birth chart...')
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Create Your Astrology Profile',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Enter your birth information to get personalized insights',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 32),

                    // Name field
                    AppTextField(
                      label: 'Name',
                      controller: _nameController,
                      validator: Validators.name,
                    ),
                    const SizedBox(height: 16),

                    // Birth date
                    InkWell(
                      onTap: _selectBirthDate,
                      child: InputDecorator(
                        decoration: const InputDecoration(
                          labelText: 'Birth Date',
                          suffixIcon: Icon(Icons.calendar_today),
                        ),
                        child: Text(
                          _birthDate != null
                              ? DateFormatter.formatDate(_birthDate!)
                              : 'Select birth date',
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Birth time
                    InkWell(
                      onTap: _selectBirthTime,
                      child: InputDecorator(
                        decoration: const InputDecoration(
                          labelText: 'Birth Time',
                          suffixIcon: Icon(Icons.access_time),
                        ),
                        child: Text(
                          _birthTime != null
                              ? DateFormatter.formatTime(
                                  DateTime(2000, 1, 1, _birthTime!.hour, _birthTime!.minute),
                                )
                              : 'Select birth time',
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Birth location
                    AppTextField(
                      label: 'Birth Location',
                      controller: _birthLocationController,
                      validator: Validators.required,
                      prefixIcon: Icons.location_on,
                      suffixIcon: Icons.search,
                      onSuffixTap: _selectLocation,
                    ),
                    const SizedBox(height: 32),

                    // Submit button
                    AppButton(
                      label: 'Analyze & Create Profile',
                      onPressed: _submitForm,
                      fullWidth: true,
                      icon: Icons.stars,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

