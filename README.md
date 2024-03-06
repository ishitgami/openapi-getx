# Flutter with Getx and OpenAPI

Flutter GetX OpenAPI Project repository! This project represents a fully functional Flutter application built with GetX for efficient state management and integrated with OpenAPI for seamless communication with backend services.

## Project Structure

The project follows a well-defined directory structure to keep your code organized and maintainable. Here's an overview of the key directories:

- **Src**: The main source code directory.

    - **Common**: Contains common files such as enum, constants, exceptions, colors, screen sizes, and enums.

    - **Data**: Responsible for data handling.

        - **Datasource**: Data sources, such as API clients or databases.

    - **Domain**: Contains the core business logic.

        - **Repository**: Interfaces that define how data is accessed in the domain layer.

        - **Usecase**: Use cases that represent the application's business operations.

    - **Presentation**: Handles the user interface and interaction.

        - **Controller**: Getx Controller classes responsible for managing the state of your application.

        - **Page**: Flutter pages/screens.

        - **Widget**: Reusable UI components.

    - **Utilities**: Helper classes and utilities for the application.

- **dependency.dart**: Dependency injection setup using Getx.

- **Main.dart**: The entry point of the Flutter application.

- **openapi**:The Dart code for OpenAPI integration was generated using openapi-generator. You can find the OpenAPI JSON file [here](https://petstore3.swagger.io/api/v3/openapi.json).

## Getting Started

1. Clone this repository to your local machine:

   ```shell
   git clone https://github.com/ishitgami/openapi-getx

2. Navigate to the project directory:

   ```shell
   cd openapi-getx

3. Install dependencies using Flutter's package manager:

   ```shell
    flutter pub get

4. Run Project

   ```shell
    flutter run

## Note

- **OpenAPI**: The app utilizes the PetStore OpenAPI for backend integration. You can find the OpenAPI swagger [here](https://petstore3.swagger.io/#/).

- **Image Usage**: Images displayed in the app are randomly selected to enhance the user experience.

## Contact

For any inquiries or assistance, feel free to contact me at [ishitgami01@gmail.com](mailto:ishitgami01@gmail.com).