# Userflow Analysis - Shipp Dating App

## 📊 Userflow Diagram Breakdown

Bu doküman, Figma'dan gelen userflow diyagramının detaylı analizini içerir.

---

## 🚀 Authentication Flow

### 1. Splash Screen
- **Entry Point:** Uygulama açılışı
- **Duration:** ~2-3 saniye
- **Action:** Otomatik geçiş
- **Next:** Onboarding veya Register/Login (ilk kullanım kontrolü)

### 2. Onboarding (3 Steps)
- **Flow:** `Splash → Onboarding Step 1 → Step 2 → Step 3`
- **Purpose:** Uygulamayı tanıtma
- **Features:**
  - Swipe ile geçiş
  - Skip butonu (opsiyonel)
  - Progress indicator
- **Next:** `Register/Login`

### 3. Register/Login Screen
- **Entry Points:**
  - Onboarding sonrası
  - Doğrudan giriş (returning user)
- **Features:**
  - Email/Phone login
  - Social login (Google, Apple)
  - "Forgot Password" linki
  - "Create Account" butonu
- **Transitions:**
  - `→ Forgot Password` (çift yönlü)
  - `→ Create Account` (tek yönlü)
  - `→ Home` (başarılı login sonrası)

### 4. Create Account
- **Flow:** Multi-step form (8 steps)
- **Steps:**
  1. Email/Phone selection
  2. Verification (OTP)
  3. Name & basic info
  4. Birth date/time/location (astroloji için)
  5. Gender & orientation
  6. Photo upload
  7. Bio & interests
  8. Preferences setup
- **Next:** `Home` (profil oluşturulduktan sonra)

### 5. Forgot Password
- **Entry:** Register/Login ekranından
- **Flow:** Email/Phone → OTP → New Password
- **Back:** Register/Login ekranına dönüş

---

## 📱 Main Navigation (Bottom Nav Bar)

Uygulamanın 5 ana bölümü, alt kısımda sabit bir navigation bar ile erişilebilir:

### 1. 🏠 Home (Home Icon)
- **Route:** `/home`
- **Features:**
  - Swipeable profile cards
  - Like/Dislike/SuperLike actions
  - Boost functionality
  - Compatibility scores
  - Astrology info display
- **Transitions:**
  - `→ Notifications` (çift yönlü)

### 2. 🗺️ Map (Compass Icon)
- **Route:** `/map`
- **Features:**
  - Map view with user pins
  - List view toggle
  - Location-based discovery
  - Filters
- **No sub-routes**

### 3. ⭐ Stage / Showcase (Star + Plus Icon)
- **Route:** `/showcase` (Premium Showcase)
- **Features:**
  - Profile showcase/spotlight
  - Premium features display
  - Boost options
- **Transitions:**
  - `→ Payment Steps` (premium purchase flow)

### 4. ❤️ Matches / Chats (Heart Icon)
- **Route:** `/matches`
- **Features:**
  - Matches list
  - Conversations list
  - Unread indicators
  - Online status
- **Transitions:**
  - `→ Chat` (individual conversation)
  - `→ Voice/Video Call` (from chat)

### 5. 👤 Profile (User Icon)
- **Route:** `/profile`
- **Features:**
  - User profile display
  - Photo gallery
  - Bio & interests
  - Astrology info
- **Transitions:**
  - `→ Profile Detail` (full view)
  - `→ Settings` (çift yönlü)

---

## 🔄 Detailed Flow Paths

### Home Flow
```
Home
  └─→ Notifications (bidirectional)
```

### Showcase Flow
```
Showcase (Premium Showcase)
  └─→ Payment Steps
      ├─→ Payment methods
      ├─→ Subscription plans
      └─→ Purchase confirmation
```

### Matches/Chats Flow
```
Matches / Chats
  ├─→ Chat (individual conversation)
  │     └─→ Voice / Video Call
  └─→ Voice / Video Call (direct from matches)
```

### Profile Flow
```
Profile
  ├─→ Profile Detail
  │     ├─→ Full profile view
  │     ├─→ Photo gallery
  │     └─→ Astrology details
  └─→ Settings (bidirectional)
        ├─→ Profile Settings
        ├─→ Notification Settings
        ├─→ Membership
        └─→ Terms and Privacy Policy
```

---

## 🛡️ Authentication Requirements

### Public Routes (No Auth Required)
- ✅ Splash
- ✅ Onboarding
- ✅ Register/Login
- ✅ Create Account
- ✅ Forgot Password
- ✅ Terms and Privacy Policy (view only)

### Authenticated Routes (Auth Required)
- 🔒 Home
- 🔒 Map
- 🔒 Showcase
- 🔒 Matches/Chats
- 🔒 Profile
- 🔒 Notifications
- 🔒 All Settings pages
- 🔒 Payment Steps
- 🔒 Chat
- 🔒 Voice/Video Call

---

## 🎯 Navigation Patterns

### 1. **Bottom Navigation**
- 5 ana tab (Home, Map, Showcase, Matches, Profile)
- Her tab bağımsız stack navigation'a sahip
- Tab değiştirirken state korunur

### 2. **Stack Navigation**
- Her tab kendi navigation stack'ine sahip
- Detail screens stack'e eklenir
- Back button doğal olarak çalışır

### 3. **Modal Navigation**
- Payment flows modal olarak açılabilir
- Settings alt sayfaları modal veya stack olabilir

---

## 📋 Implementation Notes

### Route Guards
```dart
// Authentication guard
- Check if user is logged in
- Redirect to Register/Login if not authenticated
- Save intended route for redirect after login
```

### Deep Linking
- Support deep links to specific profiles
- Support deep links to chat conversations
- Support deep links to showcase/premium

### State Management
- Each main tab should maintain its own state
- Global state for authentication
- Global state for matches/unread counts

### Navigation State Persistence
- Bottom nav bar selected index persistence
- Tab history preservation
- Scroll position preservation (where applicable)

---

## 🔄 User Journey Examples

### New User Journey
```
Splash 
  → Onboarding (3 steps)
  → Register/Login
  → Create Account (8 steps)
  → Home (first time setup complete)
```

### Returning User Journey
```
Splash
  → Home (if authenticated)
  → Register/Login (if not authenticated)
```

### Purchase Premium Journey
```
Showcase
  → Payment Steps
  → Payment Processing
  → Success → Back to Showcase
```

### Match & Chat Journey
```
Home
  → Swipe right (like)
  → Match popup (if mutual)
  → Matches tab
  → Chat
  → Voice/Video Call (optional)
```

---

## 🎨 UI/UX Considerations

1. **Smooth Transitions:** Ekranlar arası geçişlerde animasyonlar
2. **Loading States:** API çağrıları sırasında loading indicators
3. **Error Handling:** Network errors, validation errors için user-friendly messages
4. **Empty States:** Matches boşsa, chat listesi boşsa meaningful empty states
5. **Offline Support:** Offline durumunda cached data gösterimi

---

## ✅ Implementation Checklist

### Phase 1: Routing Setup
- [ ] Route definitions
- [ ] Navigation structure (bottom nav + stacks)
- [ ] Route guards (auth check)
- [ ] Deep linking setup

### Phase 2: Authentication Flow
- [ ] Splash screen
- [ ] Onboarding (3 steps)
- [ ] Register/Login
- [ ] Create Account (8 steps)
- [ ] Forgot Password

### Phase 3: Main Navigation
- [ ] Bottom navigation bar
- [ ] 5 main tabs setup
- [ ] Tab state management

### Phase 4: Screen Implementations
- [ ] Each screen from userflow
- [ ] Sub-screens (Settings pages, etc.)
- [ ] Modal screens (Payment, etc.)

### Phase 5: Flow Completion
- [ ] All transitions working
- [ ] Back navigation
- [ ] Deep linking
- [ ] State persistence

