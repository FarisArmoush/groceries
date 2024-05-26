## Architecture

I've implemented a clean architecture for this project, ensuring a clear separation of concerns. Here's a brief overview of the data flow:

1. **DataSource**: Responsible for retrieving data from any source, like APIs, remote/local databases, or cache.
   
2. **Repository**: Acts as a bridge between the DataSource and the rest of the app. It defines the methods for fetching and storing data.

3. **RepositoryImpl**: Implements the methods defined in the Repository. It interacts with the DataSource to fetch or store data.

4. **UseCase**: Contains business logic and use case-specific operations. It utilizes the Repository to get or manipulate data.

5. **Bloc**: Manages the state of the app. It communicates with the UseCase to obtain data and updates the UI accordingly.

6. **Widgets**: The UI components that display the information to the user. They interact with the Bloc to reflect the app's state.

## Configuration Layer

I've organized configuration-related elements in a separate layer to maintain clarity and modularity. This layer includes:

- **Localization**: Translation keys for multilingual support.
  
- **Injection**: Solution object for managing instances.

## Shared

The shared layer is a collection of utility classes and objects that dont really belong somewhere specific.
  
- **Exceptions**: Custom exceptions for error handling.

- **Logger**: Custom logger.

## Presentaion Layer

This layer includes all classes that influence the user interface:

- **Application**: Contains the entry point for the application
- **Blocs**: Shared blocs that are used throughout the app.
- **Common**: Shared componenet that are used throughout the entire layer.
- **Constants**: Contains data that rarely change, such as icons and illustrations.
- **Extensions**: Some extensions that make the code easier to read.
- **Formz**: Form objects that make validation easier.
- **Models**: Models that are limited to the presentaion layer.
- **Modules**: This folder contains UI modules in the app, each module contains a view, widgets, and blocs folder.
- **Router**: Solution objects for managing app navigation.
- **Widgets**: Widgets that are commonly used throughout the applications