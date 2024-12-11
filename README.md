# Movie Vault with TMDB API

Movie Vault – your ultimate destination for discovering and exploring your favorite movies and TV shows!

![](/.github/images/screenshots_1.png)

## Motivation

I built this app to implement what I've learned about Flutter and challenge myself to further improve my skills.

There are still tech debts 👇 to implement later as I learn more about Flutter, yet it should have implemented common features.

## Current Features
- Recommendations
- List Movies (Now Playing, Popular, Top Rated, Upcoming)
- List TV Series (Airing Today, On The Air, Popular, Top Rated)
- Credits
- Reviews
- Search
- Watch List
- Authentication with Email & Password
- Reset Password

## Tech Debt to implement

- Refactoring Project Structure, improve Feature-First with DDD
- UX Watch List
  - current: refresh all data
  - expected: live update
- Error dialog user friendly
- Verification email account
- Link multiple account
- Store watch list in remote db

## Planned to implement

- Settings Menu
- Dark Mode
- Dio
- Go Router
- Shimmer
- Animation

## Packages in use

- [flutter_riverpod](https://pub.dev/packages/riverpod) and [riverpod_generator](https://pub.dev/packages/riverpod_generator) for data caching (and much more!)
- [freezed](https://pub.dev/packages/freezed) for JSON serialization
- [http](https://pub.dev/packages/http) for networking
- [sqflite](https://pub.dev/packages/sqflite) for local database
- [firebase_auth](https://pub.dev/packages/firebase_auth) for authentication
- [cloud_firestore](https://pub.dev/packages/cloud_firestore) for remote database
- [envied](https://pub.dev/packages/envied) for handling API keys
- [cached_network_image](https://pub.dev/packages/cached_network_image) for caching images
- [google_fonts](https://pub.dev/packages/google_fonts) for font styling
- [flutter_native_splash](https://pub.dev/packages/flutter_native_splash) for handling splash screen
- [Intl](https://pub.dev/packages/intl) for date, time formatting

## Getting a TMDB API Key and Running the Project

This project uses the TMDB API to get the latest movies data.

Before running the app, you need to [sign up on the TMDB website](https://www.themoviedb.org/signup), then obtain an API key on the [settings API page](https://www.themoviedb.org/settings/api).

Once you have this, create an `.env` file **at the root of the project** and add your key:

```dart
// .env
TMDB_KEY=your-api-key
```

Then, run the code generator:

```
dart run build_runner build -d
```

This will generate a `env.g.dart` file inside `lib/env`. This contains the `tmdbApiKey` that is used when making requests to the TMDB API.

Congratulations, you're good to go. 😎

## Running the project with Firebase

To use this project with Firebase, follow these steps:

- Create a new project with the Firebase console
- Enable Firebase Authentication, along with the Email/Password Authentication Sign-in provider in the Firebase Console (Authentication > Sign-in method > Email/Password > Edit > Enable > Save)
- Enable Cloud Firestore

Then, follow one of the two approaches below. 👇

### 1. Using the CLI

Make sure you have the Firebase CLI and [FlutterFire CLI](https://pub.dev/packages/flutterfire_cli) installed.

Then run this on the terminal from the root of this project:

- Run `firebase login` so you have access to the Firebase project you have created
- Run `flutterfire configure` and follow all the steps

For more info, follow this guide:

- [How to add Firebase to a Flutter app with FlutterFire CLI](https://codewithandrea.com/articles/flutter-firebase-flutterfire-cli/)

### 2. Manual way (not recommended)

If you don't want to use FlutterFire CLI, follow these steps instead:

- Register separate iOS, Android, and web apps in the Firebase project settings.
- On Android, use `com.example.movie_vault` as the package name.
- then, [download and copy](https://firebase.google.com/docs/flutter/setup#configure_an_android_app) `google-services.json` into `android/app`.
- On iOS, use `com.example.movie_vault` as the bundle ID.
- then, [download and copy](https://firebase.google.com/docs/flutter/setup#configure_an_ios_app) `GoogleService-Info.plist` into `iOS/Runner`, and add it to the Runner target in Xcode.

That's it. Have fun!

## [LICENSE: MIT](LICENSE.md)
