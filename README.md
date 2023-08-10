<p align="center"><a href="https://flutter.dev" target="_blank"><img src="https://avatars.githubusercontent.com/u/14101776" width="100" alt="Flutter Logo"></a></p>

## About Shamo Mobile

Shamo Mobile is a mobile application used to easily buy and sell shoes. This application is built using the Flutter framework, which allows developers to create applications with attractive and responsive interfaces for various platforms.

## Get Started

_Here's the installation and use of this repo :_

1. Clone the repo
   ```sh
   git clone git@github.com:donisaputradev/shamo_mobile.git
   #or
   git clone https://github.com/donisaputradev/shamo_mobile.git
   ```
3. get package to get all the packages needed
   ```sh
   flutter pub get
   #or
   flutter packages get
   ```
4. How to start debug :

   for vs code & android studio can use run/debug idea

   #### Launch Development
   ```dart
   flutter run -t lib/main_dev.dart --flavor dev
   ```
   #### Launch Staging/Sandbox
   ```dart
   flutter run -t lib/main_stag.dart --flavor stag
   ```
   #### Launch Production
   ```dart
   flutter run -t lib/main_prod.dart --flavor prod
   ```
5. To build APK desired flavor use the following commands :

   #### Build Development
   ```dart
   flutter build apk -t lib/main_dev.dart --flavor dev
   ```
   #### Build Staging/Sandbox
   ```dart
   flutter build apk -t lib/main_stag.dart --flavor stag
   ```
   #### Build Production
   ```dart
   flutter build apk -t lib/main_prod.dart --flavor prod
   ```
   And for builds for release, see the documentation according to the [Android] and [iOS] platforms.

## Support Me

<p><a href="https://www.buymeacoffee.com/donisaputradev"> <img align="left" src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" height="50" width="210" alt="donisaputradev" /></a></p><br><br>

## License

The open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
