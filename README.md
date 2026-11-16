# Project 2 – Login & Sign Up

Mobile App Development with Flutter · Lectures 5–9

Two pages (Login and Sign up) with navigation between them. The text field and the button are built once as custom widgets and used on both pages.

## Project structure

```
lib/
├── main.dart                     # MaterialApp, opens the Login page
├── core/
│   └── app_colors.dart           # all app colors in one place
├── widgets/
│   ├── custom_text_field.dart    # custom text field (with show/hide password)
│   └── custom_button.dart        # custom full-width button
└── screens/
    ├── login_page.dart           # logo, title, Email, Password, Forgot password?, Login, Sign up link
    └── signup_page.dart          # back arrow, title, 4 fields, Create account, Log in link
assets/images/logo.svg            # app logo (SVG)
test/widget_test.dart             # checks the pages and the navigation
```

## Requirements checklist

| Requirement | Where |
|---|---|
| Login page: logo, title, Email & Password, "Forgot password?", Login button, Sign up link | `login_page.dart` |
| Sign up page: back arrow, title, Full name, Email, Password, Confirm password, Create account button, Log in link | `signup_page.dart` |
| Navigation: Sign up → `Navigator.push`; Log in & back arrow → `Navigator.pop` | both pages |
| Custom widgets used on both pages | `CustomTextField`, `CustomButton` |
| Own colors, logo and text | `app_colors.dart`, `logo.svg` |
| No overflow when the keyboard is open | `SafeArea` + `SingleChildScrollView` |

## How to run

```bash
flutter pub get
flutter run
flutter test   # optional: checks the navigation works
```
