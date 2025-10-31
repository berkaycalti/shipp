# 🚀 Implementation Tasks - Shipp Dating App

## 📋 Genel Bakış

Bu doküman, Figma'dan kod çıktıları geldikten sonra implementasyon için detaylı task listesini içerir.

---

## 🏗️ Phase 1: Proje Kurulumu ve Altyapı

### 1.1 Flutter Proje Yapısı
- [ ] Klasör yapısını oluştur (`lib/features/`, `lib/core/`, `lib/data/`)
- [ ] `analysis_options.yaml` yapılandır
- [ ] Linting kuralları ayarla

### 1.2 Bağımlılıklar (pubspec.yaml)
```yaml
Dependencies:
- [ ] flutter_riverpod (state management)
- [ ] go_router (routing)
- [ ] dio (HTTP client)
- [ ] shared_preferences (local storage)
- [ ] flutter_svg (SVG support)
- [ ] cached_network_image (image caching)
- [ ] image_picker (photo selection)
- [ ] google_maps_flutter (maps)
- [ ] geolocator (location)
- [ ] web_socket_channel (real-time)
- [ ] firebase_messaging (push notifications)
- [ ] in_app_purchase (payments)
- [ ] intl (date formatting)
- [ ] uuid (UUID generation)
```

### 1.3 Theme & Design System
- [ ] Light theme tanımla
- [ ] Dark theme tanımla
- [ ] Color palette (primary, secondary, accent)
- [ ] Typography system (font sizes, weights)
- [ ] Spacing system
- [ ] Theme provider setup

### 1.4 Routing
- [ ] Route tanımları
- [ ] Route guards (auth check)
- [ ] Deep linking support
- [ ] Navigation helper functions

---

## 🔐 Phase 2: Authentication & Onboarding

### 2.1 Splash Screens
**Ekranlar:** `Splash 1.png`, `Splash 2.png`
- [ ] Splash screen widget
- [ ] Logo animation
- [ ] Auto navigation logic
- [ ] Dark mode support

### 2.2 Onboarding
**Ekranlar:** `Onboarding 1.png`, `Onboarding 2.png`, `Onboarding 3.png`
- [ ] Onboarding screen widget
- [ ] PageView ile swipe
- [ ] Skip button
- [ ] Progress indicator
- [ ] Navigation to auth

### 2.3 Welcome Screen
**Ekran:** `Welcome.png`
- [ ] Welcome screen UI
- [ ] Google Sign In button
- [ ] Apple Sign In button
- [ ] Phone login button
- [ ] Social auth integration

### 2.4 Sign In
**Ekranlar:** `Sign In (Default).png`, `Sign In (Error).png`
- [ ] Email/Password form
- [ ] Validation logic
- [ ] Error state handling
- [ ] "Forgot password" link
- [ ] Social login buttons
- [ ] API integration

### 2.5 Create Account (8 Steps)
**Ekranlar:** `Create Account-1.png` to `Create Account-8.png`

**Adım 1:**
- [ ] Email/Phone selection
- [ ] Input validation
- [ ] Next button logic

**Adım 2:**
- [ ] Phone/Email verification
- [ ] OTP input screen
- [ ] Resend code

**Adım 3:**
- [ ] Name input
- [ ] Basic info form

**Adım 4:**
- [ ] Birth date picker
- [ ] Birth time picker
- [ ] Birth location picker (astroloji için kritik)

**Adım 5:**
- [ ] Gender selection
- [ ] Sexual orientation

**Adım 6:**
- [ ] Photo upload (multiple)
- [ ] Image picker integration
- [ ] Image cropper

**Adım 7:**
- [ ] Bio input
- [ ] Interests selection

**Adım 8:**
- [ ] Preferences setup
- [ ] Final review
- [ ] Account creation API call

### 2.6 Verification
**Ekranlar:** `Verification.png`, `Verification (Keyboard).png`
- [ ] OTP input widget (6 digits)
- [ ] Auto-focus next field
- [ ] Resend timer
- [ ] API verification call

---

## 🏠 Phase 3: Home/Discovery Screen

### 3.1 Ana Home Ekranı
**Ekranlar:** `Home.png`, `Home (Another Person).png`

**Widgets:**
- [ ] Swipeable card stack
- [ ] User profile card component
- [ ] Photo carousel (swipeable)
- [ ] Zodiac sign badge
- [ ] Compatibility percentage display
- [ ] Distance indicator
- [ ] Age display

**Actions:**
- [ ] Swipe gesture detection
  - [ ] Left swipe = Dislike
  - [ ] Right swipe = Like
  - [ ] Up swipe = Super Like
- [ ] Button actions (Like, Dislike, Super Like, Boost)
- [ ] Card animation on swipe

### 3.2 Swipe Action States
**Ekranlar:** 
- `Home (Liked).png` - Beğenildi feedback
- `Home (Unliked).png` - Beğenilmedi feedback
- `Home (Super Like).png` - Super Like feedback
- `Home (Boost).png` - Boost aktif
- `Home (Boost Successful).png` - Boost başarılı
- `Home (You Have No Boost Left!).png` - Boost bitti

- [ ] Swipe feedback animations
- [ ] API calls (like/dislike/superlike)
- [ ] Boost activation logic
- [ ] Error handling (no boost left)

### 3.3 Popups & Dialogs
**Ekran:** `Home (Popup).png`
- [ ] Match popup (mutual like)
- [ ] Generic popup widget
- [ ] Toast notifications

---

## 🗺️ Phase 4: Explore Screen

### 4.1 Map View
**Ekranlar:** `Explore (Map View).png`, `Explore (Click Map).png`
- [ ] Google Maps integration
- [ ] User pins on map
- [ ] Pin clustering
- [ ] Pin tap → Profile preview
- [ ] Current location indicator
- [ ] Map controls (zoom, center)

### 4.2 List View
**Ekranlar:** `Explore (List View).png`, `Explore (View All).png`
- [ ] List/Grid toggle
- [ ] User list item widget
- [ ] Infinite scroll / pagination
- [ ] Pull to refresh
- [ ] Profile preview on tap

### 4.3 Profile Click
**Ekran:** `Explore (Click Profile).png`
- [ ] Profile detail modal/bottom sheet
- [ ] Quick actions
- [ ] Navigation to full profile

### 4.4 Filters
**Ekran:** `Filters.png`
- [ ] Age range slider
- [ ] Distance slider
- [ ] Gender filter
- [ ] Zodiac sign filter (multi-select)
- [ ] Interests filter
- [ ] Apply/Reset buttons
- [ ] Filter state management

---

## 💬 Phase 5: Messages

### 5.1 Messages List
**Ekranlar:** `Messages.png`, `Messages _ White.png`
- [ ] Conversation list widget
- [ ] Last message preview
- [ ] Unread count badge
- [ ] Online status indicator
- [ ] Avatar display
- [ ] Timestamp formatting
- [ ] Pull to refresh

### 5.2 Chat Screen
**Ekranlar:** `Messages (Keyboard).png`

**Components:**
- [ ] Message list (ListView)
- [ ] Message bubble widget
  - [ ] Text messages
  - [ ] Image messages
  - [ ] Voice messages
  - [ ] Timestamp
  - [ ] Read status (sent/delivered/read)
- [ ] Input field
- [ ] Send button
- [ ] Attachment button

**Features:**
- [ ] Auto-scroll to bottom
- [ ] Keyboard handling
- [ ] Image picker integration
- [ ] Voice recorder
- [ ] Emoji picker
- [ ] Typing indicator

### 5.3 Photo Messages
**Ekranlar:** `Messages (Photo).png`, `Messages (Photo Dropdown).png`, `Messages (Single-Show Photo).png`
- [ ] Photo selection from gallery/camera
- [ ] Image preview before send
- [ ] Photo viewer (full screen)
- [ ] Photo options dropdown
- [ ] Photo upload progress

### 5.4 Voice Messages
**Ekranlar:** `Messages (Voice Record).png`, `Messages (Voice Record) _ White-1.png`
- [ ] Voice recorder widget
- [ ] Record button (hold to record)
- [ ] Recording duration indicator
- [ ] Play/pause voice messages
- [ ] Waveform visualization
- [ ] Audio playback

### 5.5 Message Actions
**Ekranlar:** `Messages (Delete).png`, `Messages (Delete Dropdown).png`
- [ ] Long press → Delete options
- [ ] Delete confirmation dialog
- [ ] Unsend functionality
- [ ] Message reactions (emoji)

**Real-time:**
- [ ] WebSocket connection
- [ ] Message synchronization
- [ ] Typing indicators
- [ ] Online status

---

## 👤 Phase 6: Profile

### 6.1 Profile Screen
**Ekranlar:** `Profile.png`, `Profile (Premium).png`
- [ ] Profile header (photo carousel)
- [ ] Photo swipeable gallery
- [ ] Basic info section
  - [ ] Name, age
  - [ ] Zodiac sign
  - [ ] Bio
- [ ] Interests tags
- [ ] Edit button
- [ ] Premium badge (if applicable)

### 6.2 Profile Detail
**Ekranlar:** 
- `Profile Detail (Full View).png`
- `Profile Detail (Phone Size).png`
- `Click Profile.png`
- `Click Profile (Dropdown).png`

**Sections:**
- [ ] Photo gallery (full view)
- [ ] Astrology details
  - [ ] Sun sign
  - [ ] Moon sign
  - [ ] Rising sign
  - [ ] Compatibility score
- [ ] About section
- [ ] Interests
- [ ] Actions dropdown (Report, Block, etc.)

### 6.3 Profile Settings
**Ekran:** `Profile Settings.png`
- [ ] Photo management (add/remove/reorder)
- [ ] Bio editor
- [ ] Basic info editor
- [ ] Interests editor
- [ ] Save changes

### 6.4 Card Dropdowns
**Ekranlar:** 
- `Card Dropdown.png`
- `Card Dropdown (Report).png`
- `Card Dropdown (Request Received).png`

- [ ] Dropdown menu widget
- [ ] Report user option
- [ ] Block user option
- [ ] Request received confirmation

---

## 🔮 Phase 7: Astrology Features

### 7.1 Astrology Journey Main
**Ekranlar:** 
- `Personal Astrology Journey.png`
- `Personal Astrology Journey (Add Profile).png`

- [ ] Main navigation screen
- [ ] Feature cards (Birth Chart, Horoscope, etc.)
- [ ] Empty state (if no profile)

### 7.2 Birth Chart
**Ekran:** `Personal Astrology Journey (Birth Chart).png`
- [ ] Birth chart visualization
  - [ ] Circular chart (houses)
  - [ ] Planet positions
  - [ ] Zodiac signs
  - [ ] Aspects (lines)
- [ ] Interactive chart (tap for details)
- [ ] Planet legend
- [ ] Chart data API integration

### 7.3 Daily Horoscope
**Ekran:** `Personal Astrology Journey (Daily Horoscope).png`
- [ ] Sun sign selector
- [ ] Daily horoscope text
- [ ] Date selector
- [ ] Share functionality

### 7.4 Daily Advice
**Ekran:** `Personal Astrology Journey (Daily Advice).png`
- [ ] Personalized daily advice
- [ ] Transit information
- [ ] Recommendations based on chart

### 7.5 Compatibility Analysis
**Ekranlar:** 
- `Personal Astrology Journey (Astrological Compatibility).png`
- `Personal Astrology Journey (Astrological Compatibility Default).png`
- `Personal Astrology Journey (Result).png`

- [ ] User selector (pick a match)
- [ ] Compatibility score display (0-100)
- [ ] Detailed breakdown
  - [ ] Sun-Moon compatibility
  - [ ] Venus-Mars compatibility
  - [ ] Planetary aspects
- [ ] Visual representation (charts)
- [ ] Share compatibility result

---

## ⭐ Phase 8: Premium & Payments

### 8.1 Premium Screen
**Ekranlar:** `Premium.png`, `Premium (First Login Ads).png`
- [ ] Premium features list
- [ ] Pricing cards
- [ ] Subscription plans
- [ ] Benefits comparison
- [ ] Purchase buttons

### 8.2 Purchase Screens
**Ekranlar:**
- `Buy (Boost).png`
- `Buy (Aura).png`
- `Buy (Süper Like).png`

**Common Features:**
- [ ] Product details
- [ ] Quantity selector
- [ ] Price display
- [ ] Purchase button
- [ ] Success/Error handling

**Boost:**
- [ ] Boost duration display
- [ ] Current boost count

**Aura:**
- [ ] Aura points display
- [ ] Aura usage explanation

**Super Like:**
- [ ] Super Like count
- [ ] Package options

### 8.3 In-App Purchase Integration
- [ ] iOS IAP setup
- [ ] Android IAP setup
- [ ] Product fetching
- [ ] Purchase flow
- [ ] Receipt validation
- [ ] Backend verification

### 8.4 Showcase
**Ekranlar:** 
- `Showcase.png`
- `Showcase (Free User).png`
- `Showcase (You Have No Point Left!).png`

- [ ] Profile showcase display
- [ ] Boost/Spotlight effects
- [ ] Premium indicators
- [ ] Empty state (no points)

---

## ⚙️ Phase 9: Settings & Preferences

### 9.1 Preferences (7 Steps)
**Ekranlar:** `Preferences-1.png` to `Preferences-7.png`

**Adım 1:**
- [ ] Gender preference selection
- [ ] Age range preference

**Adım 2:**
- [ ] Distance preference
- [ ] Location settings

**Adım 3:**
- [ ] Zodiac sign preferences
- [ ] Multi-select

**Adım 4:**
- [ ] Interests selection
- [ ] Tag input/add

**Adım 5:**
- [ ] Other preferences
- [ ] Advanced filters

**Adım 6:**
- [ ] Review selections
- [ ] Edit options

**Adım 7:**
- [ ] Save preferences
- [ ] API update

### 9.2 Notifications Settings
**Ekranlar:** `Notifications Settings.png`, `Notifications.png`
- [ ] Push notification toggles
- [ ] Email notification toggles
- [ ] In-app notification toggles
- [ ] Notification history list
- [ ] Clear notifications

---

## 📋 Phase 10: Additional Features

### 10.1 Support Request
**Ekranlar:** `Support Request.png`, `Support Request (Request Received).png`
- [ ] Support form
- [ ] Category selection
- [ ] Message input
- [ ] Attachment support
- [ ] Submit & confirmation

### 10.2 Legal Pages
**Ekranlar:** `Terms of Use.png`, `Privacy Policy.png`
- [ ] Terms of Use screen
- [ ] Privacy Policy screen
- [ ] Scrollable content
- [ ] Accept/Decline buttons

### 10.3 Liked & Super Like
**Ekranlar:** `Liked & Super Like.png`
- [ ] Matches list
- [ ] Super Likes section
- [ ] Filters (liked/super liked)
- [ ] Remove like option

---

## 🎨 Phase 11: Design System & Components

### 11.1 Shared Widgets
- [ ] Custom buttons (primary, secondary, outlined)
- [ ] Text inputs (with validation)
- [ ] Cards
- [ ] Dialogs/Modals
- [ ] Bottom sheets
- [ ] Loading indicators
- [ ] Empty states
- [ ] Error states

### 11.2 Animations
- [ ] Page transitions
- [ ] Swipe animations
- [ ] Button press feedback
- [ ] Loading animations
- [ ] Success/Error animations

### 11.3 Dark Mode
- [ ] Tüm ekranlarda dark mode support
- [ ] Theme switcher
- [ ] System theme detection

---

## 🔌 Phase 12: Backend Integration

### 12.1 API Service Layer
- [ ] Base API client setup
- [ ] Authentication interceptor
- [ ] Error handling
- [ ] Response models
- [ ] Request models

### 12.2 API Endpoints (Backend ile koordine)
- [ ] Auth endpoints (login, register, verify)
- [ ] User endpoints (profile, update)
- [ ] Matches endpoints (swipe, get matches)
- [ ] Messages endpoints
- [ ] Astrology endpoints (chart, compatibility)
- [ ] Payment endpoints
- [ ] Settings endpoints

### 12.3 Real-time (WebSocket)
- [ ] WebSocket connection manager
- [ ] Message updates
- [ ] Typing indicators
- [ ] Online status
- [ ] Reconnection logic

### 12.4 File Upload
- [ ] Image upload service
- [ ] Progress tracking
- [ ] Error handling
- [ ] Multiple file upload

---

## 🧪 Phase 13: Testing & QA

### 13.1 Unit Tests
- [ ] ViewModel/Provider tests
- [ ] Service tests
- [ ] Utility function tests

### 13.2 Widget Tests
- [ ] Component tests
- [ ] Screen tests
- [ ] Integration tests

### 13.3 Manual Testing Checklist
- [ ] Authentication flow
- [ ] Swipe functionality
- [ ] Messaging
- [ ] Profile updates
- [ ] Payment flow
- [ ] Dark mode
- [ ] Error scenarios

---

## 📱 Phase 14: Platform Specific

### 14.1 iOS
- [ ] App Store configuration
- [ ] In-app purchase setup
- [ ] Push notifications
- [ ] Sign in with Apple
- [ ] Privacy permissions

### 14.2 Android
- [ ] Google Play configuration
- [ ] In-app purchase setup
- [ ] Push notifications
- [ ] Google Sign In
- [ ] Permissions handling

---

## 📊 Phase 15: Analytics & Monitoring

- [ ] Analytics events (Firebase Analytics)
- [ ] Crash reporting (Firebase Crashlytics)
- [ ] Performance monitoring
- [ ] User behavior tracking

---

## 🚀 Phase 16: Optimization & Polish

- [ ] Image optimization
- [ ] Lazy loading
- [ ] Performance optimization
- [ ] Memory management
- [ ] Battery optimization
- [ ] Code cleanup & refactoring

---

## 📝 Notlar

1. **Figma Kod Çıktısı Bekleniyor:** Bu task listesi, Figma'dan kod çıktıları geldikten sonra güncellenecek ve widget implementasyonları Figma çıktısına göre yapılacak.

2. **Öncelik Sırası:**
   - Phase 1-2 (Kurulum & Auth) → En yüksek öncelik
   - Phase 3-6 (Ana ekranlar) → Yüksek öncelik
   - Phase 7-9 (Özellikler) → Orta öncelik
   - Phase 10-16 (Ekstra & Optimizasyon) → Düşük öncelik

3. **Backend Koordinasyonu:** Her phase'de backend API'lerinin hazır olup olmadığı kontrol edilmeli.

4. **Incremental Development:** Her phase tamamlandıktan sonra test edilmeli ve çalışır durumda olmalı.

