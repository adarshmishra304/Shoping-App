# Hostel Mart 🛒

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-%230075BA.svg?style=for-the-badge&logo=dart&logoColor=white)
![Material 3](https://img.shields.io/badge/Material_3-757575?style=for-the-badge&logo=materialdesign&logoColor=white)
![Provider](https://img.shields.io/badge/Provider-6.1.5-blue?style=for-the-badge)

**Hostel Mart** is a modern, cross-platform mobile shopping application built with **Flutter** and **Dart**. The app offers a seamless e-commerce experience designed specifically for footwear browsing, filtering by brand, selecting custom sizes, and managing items in a real-time shopping cart.

---

## 🚀 Key Features

- 🛍️ **Product Catalog**: Browse a wide collection of footwear with titles, pricing, brand details, and high-quality image previews.
- 🏷️ **Dynamic Brand Filtering**: Easily filter products by brand (e.g., Nike, Adidas, Bata) using interactive chips.
- 📐 **Interactive Size Selector**: Select specific shoe sizes before adding items to your cart.
- 🛒 **Cart Management with Provider**: Real-time state-managed shopping cart allowing users to view, add, and remove items with pop-up confirmation dialogs.
- 📱 **Responsive Layout**: Uses `LayoutBuilder` to dynamically switch between grid and list views depending on screen constraints and device orientation.
- 🎨 **Custom Theme & Typography**: Custom styled theme utilizing the `ComicRelief` font family and Material 3 design principles.

---

## 🏗️ Architecture & State Management

The application follows clean Flutter architecture principles:
- **State Management**: Built with the [`provider`](https://pub.dev/packages/provider) package (`ChangeNotifierProvider` & `CartProvider`) to manage global cart state efficiently.
- **Navigation**: Uses an `IndexedStack` paired with a `BottomNavigationBar` for smooth tab switching between the main product feed and the shopping cart.
- **UI Components**: Modularized into reusable widgets (`ProductsCart`, `ProductDetailsPage`, `ProductList`, `CartPage`).

---

## 📁 Project Structure

```text
Shoping/
├── assets/
│   ├── fonts/
│   │   ├── ComicRelief-Bold.ttf
│   │   └── ComicRelief-Regular.ttf
│   └── images/               # Product images (ignored by .gitignore)
│       ├── img_1.jpg
│       ├── img_2.jpg
│       ├── img_3.jpg
│       └── img_4.jpg
├── lib/
│   ├── main.dart             # App entry point, MaterialApp setup, & ThemeData
│   ├── home_page.dart        # Main navigation container & BottomNavigationBar
│   ├── product_list.dart     # Product feed, search bar, & category filter chips
│   ├── product_details_page.dart # Detailed product page, size picker, & cart action
│   ├── products_cart.dart    # Reusable product card UI widget
│   ├── cart_page.dart        # Shopping cart view & deletion confirmation modal
│   ├── cart_provider.dart    # Cart state notifier (add/remove functionality)
│   └── global_var.dart       # Product mock data repository
├── pubspec.yaml              # App configuration, assets, & dependency definitions
└── .gitignore                # Git ignore rules for build files, OS junk, & image assets
```

---

## 📥 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (v3.10.8 or higher)
- [Dart SDK](https://dart.dev/get-dart)
- Android Studio / VS Code with Flutter & Dart extensions
- Android Emulator / iOS Simulator / Physical Device

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/shoping.git
   cd shoping
   ```

2. **Add Required Images:**
   > ⚠️ **Important Notice regarding Images:**
   > The `assets/images/` directory is listed in [.gitignore](file:///.gitignore) to keep the repository lightweight. Ensure you place your product images (`img_1.jpg`, `img_2.jpg`, `img_3.jpg`, `img_4.jpg`) into the `assets/images/` directory before building the application.

3. **Install Dependencies:**
   ```bash
   flutter pub get
   ```

4. **Run the Application:**
   ```bash
   flutter run
   ```

---

## ⚙️ Development Commands

| Command | Description |
| :--- | :--- |
| `flutter pub get` | Installs project dependencies defined in `pubspec.yaml` |
| `flutter run` | Runs the app in debug mode on connected device |
| `flutter analyze` | Analyzes code for potential issues and static warnings |
| `flutter test` | Executes unit and widget tests |
| `flutter build apk` | Builds an Android APK binary for release |

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
