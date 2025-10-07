# Janek Wenzlik - Portfolio Website

A responsive portfolio website built with Flutter for web.

## 🌟 Features

- **Responsive Design**: Optimized for mobile, tablet, and desktop devices
- **Modern UI**: Clean and professional design with dark theme
- **CV Section**: Professional experience and education timeline
- **Project Portfolio**: Showcase of web and mobile applications

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0 <4.0.0)
- Dart SDK
- Web browser for development

### Installation

1. Clone the repository:
```bash
git clone https://github.com/janek-w/janek-wenzlik.de.git
cd janek-wenzlik.de
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the application:
```bash
flutter run -d chrome
```

## 🛠️ Built With

- **Flutter** - UI framework
- **Google Fonts** - Typography (Lato font family)
- **Responsive Framework** - Responsive design implementation
- **Material Design** - Design system

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  google_fonts: ^6.3.2
  responsive_framework: ^1.5.1
  smooth_page_indicator: ^1.2.1
  carousel_slider: ^5.1.1
  material: ^1.0.0+2
  cupertino_icons: ^1.0.2
```

## 📱 Responsive Breakpoints

The application is optimized for different screen sizes:

- **Mobile**: 0-450px
- **Tablet**: 450-1000px
- **Desktop**: 1000-1200px
- **4K**: 1200px+

## 🎨 Design Features

### Color Scheme
- Background: Dark theme optimized
- Primary colors defined in `constants.dart`
- Material Design principles

### Typography
- Google Fonts integration with Lato font family
- Responsive text scaling

### Navigation
- Section-based navigation with global keys
- Smooth scrolling between sections
- Mobile-friendly drawer navigation

## 🚀 Deployment

### Web Deployment

1. Build for web:
```bash
flutter build web
```

2. The built files will be in the `build/web/` directory

3. Deploy to your preferred hosting service (Firebase Hosting, Netlify, etc.)

### Firebase Hosting (Example)

1. Install Firebase CLI:
```bash
npm install -g firebase-tools
```

2. Initialize Firebase:
```bash
firebase init hosting
```

3. Deploy:
```bash
firebase deploy
```





## Environment Setup

Ensure your Flutter environment supports web development:
```bash
flutter config --enable-web
flutter devices  # Should show Chrome as an available device
```

## 📱 Supported Platforms

- ✅ Web (Primary target)


## 📄 License

This project is private and not licensed for public use yet.

## 👨‍💻 Author

**Janek Wenzlik**
- Portfolio: [janek-wenzlik.de](https://janek-wenzlik.de)
- GitHub: [@janek-w](https://github.com/janek-w)


*Built with ❤️ using Flutter*