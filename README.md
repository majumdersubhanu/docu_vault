# DocuVault

**DocuVault** is a secure, biometric-authenticated document locker built with Flutter and powered by
Supabase. It enables users to store, manage, and optionally sync sensitive documents with
industry-standard encryption, all within a streamlined, user-friendly mobile interface.

---

## Features

- **Biometric Authentication**: Face ID or fingerprint login for secure and convenient access.
- **Encrypted Local Storage**: Documents are stored locally using SQLite with AES-256 encryption.
- **Cloud Sync**: Files can be encrypted client-side and synced securely to Supabase Storage.
- **Secure Key Management**: Biometric access unlocks encryption keys stored in the device’s secure
  storage. Biometrics are never used directly for encryption.
- **Multi-Provider Authentication**: Sign in with Google or phone number using Supabase Auth.
- **File Management**: Upload, preview, search, and organize documents.
- **Cross-Platform**: Developed using Flutter for both Android and iOS.

---

## Tech Stack

| Layer      | Technology                                                                                   |
|------------|----------------------------------------------------------------------------------------------|
| Frontend   | Flutter + Dart                                                                               |
| Backend    | Supabase (Auth, Storage, Postgres)                                                           |
| Encryption | AES-256 (`encrypt`), Biometric unlock (`local_auth`), Key storage (`flutter_secure_storage`) |

---

## Security Architecture

- AES-256 encryption is applied to all documents before local storage.
- An encryption key is securely stored using the platform’s secure keystore or keychain.
- Biometric authentication is used to unlock this key, not as the key itself.
- Cloud sync is opt-in. Files are encrypted before upload to Supabase Storage.

---

## Ideal Use Cases

- Secure personal vault for IDs, certificates, and legal documents.
- Privacy-first document management app for mobile users.
- Offline-accessible file storage with secure cloud backup.

---

## Getting Started

### Prerequisites

- Flutter 3.10 or later installed
- Android Studio or Xcode
- A physical or emulated mobile device
- Supabase project with API keys and Storage enabled

### Clone the Repository

```shell
git clone https://github.com/majumdersubhanu/docu_vault.git
cd docu_vault
```

### Setup

```shell
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

### Run the App

```shell
flutter run
```

---

## Project Structure

```text
lib
├─┬─ ui
│ ├─┬─ core
│ │ ├─┬─ ui
│ │ │ └─── <shared widgets>
│ │ └─── themes
│ └─┬─ <FEATURE NAME>
│   ├─┬─ view_model
│   │ └─── <view_model class>.dart
│   └─┬─ widgets
│     ├── <feature name>_screen.dart
│     └── <other widgets>
├─┬─ domain
│ └─┬─ models
│   └─── <model name>.dart
├─┬─ data
│ ├─┬─ repositories
│ │ └─── <repository class>.dart
│ ├─┬─ services
│ │ └─── <service class>.dart
│ └─┬─ model
│   └─── <api model class>.dart
├─── config
├─── utils
├─── routing
├─── main_staging.dart
├─── main_development.dart
└─── main.dart

// The test folder contains unit and widget tests
test
├─── data
├─── domain
├─── ui
└─── utils

// The testing folder contains mocks other classes need to execute tests
testing
├─── fakes
└─── models
```

---

## Contribution Guidelines

Contributions are welcome. To propose changes:

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m 'Add feature'`)
4. Push to your fork (`git push origin feature/your-feature`)
5. Open a pull request

---

## License

This project is licensed under the MIT License. See `LICENSE` for details.

---

## Contact

Made with ❤️ by Subhanu Majumder
[https://www.linkedin.com/in/subhanumajumder/][LinkedIn] | [https://github.com/majumdersubhanu/][GitHub] | [mailto:reach.subhanu@gmail.com][Email]
