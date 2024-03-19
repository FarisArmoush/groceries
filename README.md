[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)
<a href="https://github.com/felangel/bloc"><img src="https://tinyurl.com/bloc-library" alt="Bloc Library"></a>

# About Groceries

Groceries is grocery list mobile app that helps users organize and manage their
lists. Groceries allows you to create multiple lists for different purposes.

Groceries supports item categorization, quantity tracking and the ability to 
share lists with others, making it convenient for families, friends or any group 
to coordinate their shopping activities.

Overall, Groceries is designed to simplify the process of creating and managing 
shopping lists, making it easier to remember what you need to buy and ensuring
you don't forget any essential items while grocery shopping.

---

# Grocery Shopping App

This repository contains the source code for my grocery shopping app developed using Flutter and Firebase.

## Architecture

I've implemented a clean architecture for this project, ensuring a clear separation of concerns. Here's a brief overview of the data flow:

1. **DataSource**: Responsible for retrieving raw data from various sources, like APIs or databases.
   
2. **Repository**: Acts as a bridge between the DataSource and the rest of the app. It defines the methods for fetching and storing data.

3. **RepositoryImpl**: Implements the methods defined in the Repository. It interacts with the DataSource to fetch or store data.

4. **UseCase**: Contains business logic and use case-specific operations. It utilizes the Repository to get or manipulate data.

5. **Bloc**: Manages the state of the app. It communicates with the UseCase to obtain data and updates the UI accordingly.

6. **Widgets**: The UI components that display the information to the user. They interact with the Bloc to reflect the app's state.

## Configuration Layer

I've organized configuration-related elements in a separate layer to maintain clarity and modularity. This layer includes:

- **Translations**: Translation keys for multilingual support.
  
- **Routing**: Solution objects for managing app navigation.
  
- **Theme Configurations**: Configuration settings for the app's theme.

## Util Layer

The util layer is a collection of utility classes and objects, including:

- **Forms Objects**: Utilities for handling forms.
  
- **App Constants**: Constants for colors, fonts, etc.
  
- **Exceptions**: Custom exceptions for error handling.
  
- **Extensions**: Extensions for adding functionality to existing classes.
  
- **Parameters Models**: Models used when sending objects to Firebase.

## How to Use

To get started with the app, follow these steps:

1. Clone the repository.
   
2. Set up Firebase configurations.
   
3. Run the app on your Flutter development environment.

Feel free to explore the codebase, and if you have any questions or suggestions, don't hesitate to reach out!

## Note
In the add items module, you will not be able to access my official database that has those items, but i will include an apk in the future for you to install it on your phone/emulator and test it out.

## Generation Commands
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs

dart run build_runner watch --delete-conflicting-outputs


## Release APK 
flutter build apk --release -t lib/main_development.dart --flavor development

flutter build apk --release -t lib/main_staging.dart --flavor staging

flutter build apk --release -t lib/main_production.dart --flavor production

## Release IPA

flutter build ipa --release -t lib/main_development.dart --flavor development

flutter build ipa --release -t lib/main_staging.dart --flavor staging

flutter build ipa --release -t lib/main_production.dart --flavor production
