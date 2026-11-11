# Hostel Mart 🛒

A modern, cross-platform mobile shopping application built with **Flutter** and **Dart**. Hostal Mart provides an intuitive e-commerce experience for browsing footwear, filtering by brand, selecting sizes, and managing items in a shopping cart.

---

## 🚀 Features

- **Product Showcase**: Browse a catalog of footwear products with prices, brand information, and images.
- **Brand Filtering**: Filter products dynamically by brand (e.g., Nike, Adidas, Bata).
- **Product Details & Size Selection**: View detailed product specifications and select available shoe sizes before adding items to the cart.
- **Shopping Cart Management**: Add or remove items from your cart powered by `Provider` state management, complete with deletion confirmation dialogs.
- **Responsive Layout**: Custom responsive grid/list switching depending on screen constraints.
- **Custom Typography**: Styled with the `ComicRelief` custom font family.

---

## 🛠️ Tech Stack & Dependencies

- **Framework**: [Flutter](https://flutter.dev/) (Material 3 enabled)
- **Language**: [Dart](https://dart.dev/)
- **State Management**: [`provider`](https://pub.dev/packages/provider)
- **Assets**: Custom typography (`ComicRelief-Regular.ttf`, `ComicRelief-Bold.ttf`)

---

## 📁 Project Structure

```text
lib/
├── main.dart                 # Application entry point & theme definition
├── home_page.dart            # Main navigation shell with BottomNavigationBar
├── product_list.dart         # Product grid/list view with filter chips & search bar
├── product_details_page.dart # Detailed product view with size selector & add-to-cart button
├── products_cart.dart        # Product card UI widget
├── cart_page.dart            # Shopping cart UI with deletion confirmation
├── cart_provider.dart        # Provider for state management of cart items
└── global_var.dart           # Product mock data
```

---

## 📥 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (v3.10+ recommended)
- Android Studio / VS Code with Flutter extensions
- Android Emulator or physical device

### Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   cd shoping
   ```

2. **Add Image Assets:**
   > ⚠️ **Note:** The `assets/images/` directory is ignored in Git (via `.gitignore`). Please ensure you place your product image files (`img_1.jpg`, `img_2.jpg`, `img_3.jpg`, `img_4.jpg`, etc.) into the `assets/images/` folder prior to running the app.

3. **Install dependencies:**
   ```bash
   flutter pub get
   ```

4. **Run the application:**
   ```bash
   flutter run
   ```
