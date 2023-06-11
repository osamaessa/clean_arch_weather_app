# clean_arch_weather_app

# Flutter Project

This is a Flutter project that utilizes the clean architecture pattern, BLoC state management, Dartz, Dio for HTTP requests, and GetIt for dependency injection.

## Overview

The project follows the clean architecture pattern to achieve separation of concerns and maintain a modular codebase. It consists of two main pages:

- Page 1: Home
  - Current Weather 
  - City Selector

- Page 2: Details
  - Details for weather 
  - Weather for next 3 days

## Technologies Used

The project incorporates the following technologies:

- BLoC State Management: is a state management pattern commonly used in Flutter applications. It helps to separate the business logic from the UI, making the codebase more organized, testable, and maintainable.
- Dartz: is a functional programming package for Dart and Flutter that brings functional programming concepts and constructs to the language. It provides a set of tools and utilities that enable developers to write concise, expressive, and robust code using functional programming techniques.
- Dio: A powerful HTTP client for Dart/Flutter, which supports global configuration, interceptors, FormData, request cancellation, file uploading/downloading, timeout, and custom adapters etc.
- GetIt: This is a simple Service Locator for Dart and Flutter projects with some additional goodies highly inspired by Splat. It can be used instead of InheritedWidget or Provider to access objects e.g. from your UI.

## Prerequisites

Before running the project, ensure that you have the following installed:

- Flutter SDK: https://docs.flutter.dev/get-started/install
- Dart SDK: https://dart.dev/get-dart

## Getting Started

To get started with the project, follow these steps:

1. Clone the repository: `git clone https://github.com/osamaessa/clean_arch_weather_app.git`
2. Navigate to the project directory: `cd flutter_project`
3. Install the dependencies: `flutter pub get`
4. Run the application: `flutter run`

## Project Structure

The project follows a modular structure based on clean architecture principles. Here's an overview of the directory structure:


