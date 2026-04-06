# 📦 SwiftUI JSON Example

A SwiftUI app demonstrating how to fetch JSON from a remote API and decode it into Swift models using `URLSession` and `Codable` — the core networking pattern for almost every iOS app.

---

## 🤔 What this is

This project shows the standard SwiftUI networking pattern: making an async `URLSession` data task, decoding the JSON response with `JSONDecoder` into a `Codable` struct, and displaying the result in a SwiftUI list. It covers error handling, loading states, and using `async/await` with `.task {}`.

## ✅ Why you'd use it

- **URLSession + async/await** — clean data fetching with `.task {}` view modifier
- **Codable** — JSON decoding into typed Swift structs with `JSONDecoder`
- **Loading & error states** — shows how to handle in-flight and failed requests in SwiftUI
- **List rendering** — displaying decoded JSON data in a scrollable `List`

## 📺 Watch on YouTube

[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtu.be/WZpKDS9PiA0)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@NoahDoesCoding97).

---

## 🚀 Getting Started

### 1. Clone the Repo
```bash
git clone https://github.com/NDCSwift/SwiftUIJsonExample.git
cd SwiftUIJsonExample
```

### 2. Open in Xcode
- Double-click `JsonExample.xcodeproj`

### 3. Set Your Development Team
In Xcode: **TARGET → Signing & Capabilities → Team**

### 4. Update the Bundle Identifier
Change `com.example.MyApp` to a unique identifier (e.g., `com.yourname.JsonExample`).

---

## 🛠️ Notes

- The app fetches from a public API — no API key required.
- If you see a code signing error, check that Team and Bundle ID are set.

## 📦 Requirements

- iOS 16+
- Xcode 15+
- Swift 5.9+

---

📺 [Watch the guide on YouTube](https://youtu.be/WZpKDS9PiA0)
