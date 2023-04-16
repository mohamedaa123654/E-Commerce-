# E Commerce 

This project is powered by Flutter **>=2.8.0** and Dart **>=2.18.0 <3.0.0**.


Bloc ([flutter_bloc](https://pub.dev/packages/flutter_bloc)) is used as an approach to state management, more precisely Cubit over Bloc from the same package. Bloc/Cubit handles `Events` and changes `States`. Screens and Widgtes subscribe to Bloc changes and send events (for Cubit, this is a direct method call).

68f4.jpeg"> <img  alt="Coding" height="400" src="https://user-images.githubusercontent.com/33372890/232257836-a29aa6ae-2e98-486f-9b31-671aa8d0b175.jpeg">

The main packages used in the project:
```yaml
  flutter_svg: ^1.0.3
  retrofit: ^3.0.1+1
  analyzer: ^3.3.1
  dio: ^4.0.4
  json_serializable: ^6.1.4
  internet_connection_checker: ^0.0.1+3
  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.2
  dartz: ^0.10.0
  shared_preferences: ^2.0.13
  pretty_dio_logger: ^1.1.1
  freezed: ^1.1.1
  get_it: ^7.2.0
  lottie: ^1.2.2
  country_code_picker: ^2.0.2
  image_picker: ^0.8.5
  rxdart: ^0.27.3
  carousel_slider: ^4.0.0
```


## Project structure <a name="structure"></a>
|   |   |
|---|---|
|*main.dart*|The entry point to the application. Here is the initialization of DioHelper, CacheHelper and registration of common Blocs and Sizer that are used throughout the application.|
|*bloc/*|Global Cubit and Bloc Observer.|
|*constants/*|All constants in the application.|
|*data/*|Model classes used in the application and data providers (local and remote) network(requests, responses).|
|*presentation/*|All UI elements used in the application.|
|---|---|
|*presentation/router/*|Registration of all routes in application.|
|*presentation/screens/*|Application screens and Cubit.|
|*presentation/styles/*|Constants for UI such as colors, fonts, styles.|
|*presentation/view/*|Special UI elements of application.|
|*presentation/widgets/*|Common UI elements.|
|---|---|




|*presentation/widgets/*|Common UI elements.|
|---|---|



