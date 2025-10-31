import '../models/support_model.dart';
import '../services/api_service.dart';
import '../../core/utils/logger.dart';
import '../constants/api_endpoints.dart';

/// Support Repository
/// Handles all support ticket-related API calls
class SupportRepository {
  final ApiService _apiService;

  SupportRepository(this._apiService);

  /// Get all support tickets
  Future<List<SupportTicketModel>> getTickets({
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final response = await _apiService.get(
        ApiEndpoints.tickets,
        queryParameters: {
          'page': page,
          'limit': limit,
        },
      );
      final List<dynamic> data = response.data['data'] ?? response.data;
      return data.map((json) => SupportTicketModel.fromJson(json)).toList();
    } catch (e) {
      Logger.error('Error getting tickets', e);
      rethrow;
    }
  }

  /// Get ticket by ID
  Future<SupportTicketModel> getTicketById(String ticketId) async {
    try {
      final response = await _apiService.get(
        ApiEndpoints.ticketById(ticketId),
      );
      return SupportTicketModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error getting ticket', e);
      rethrow;
    }
  }

  /// Create a new support ticket
  Future<SupportTicketModel> createTicket({
    required String category,
    required String subject,
    required String description,
    TicketPriority priority = TicketPriority.medium,
  }) async {
    try {
      final response = await _apiService.post(
        ApiEndpoints.tickets,
        data: {
          'category': category,
          'subject': subject,
          'description': description,
          'priority': priority.name,
        },
      );
      return SupportTicketModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error creating ticket', e);
      rethrow;
    }
  }

  /// Update ticket (add comment, change status, etc.)
  Future<SupportTicketModel> updateTicket(
    String ticketId,
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await _apiService.put(
        ApiEndpoints.ticketById(ticketId),
        data: data,
      );
      return SupportTicketModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error updating ticket', e);
      rethrow;
    }
  }
}

