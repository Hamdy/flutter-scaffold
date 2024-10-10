# app

A Scaffolf Flutter Application **with Everything** you need to start a flutter app.
You can study this example or use it in your app as a starting point to save time.

## What's different here ?

- Clean Structure
  - [Isar DB support](https://isar.dev)
    - Storage class. Can be found [here](./lib/Storage.dart)
    - Schema file can be found [here](./lib/schema.dart)
    - Supports User, Notification, Log, Device db collections
  
  - Separate Settings file. Can be found [here](./lib/settings.dart)
  - Http client. Can be found [here](./lib/client.dart)
    - Uses [Flutter Dio](https://pub.dev/packages/dio).
    - Supports JWT tokens. It retries to refresh token on 401
    - authentication token & refresh tokens are saved into DB
  
  - Firebase support
  - Logger. Can be found [here](./lib/logger.dart)
  - Router. Can be found [here](./lib/router.dart)
  - API file with all backend api end points. Can be found [here](./lib/api.dart)
  
  - Theme file. Can be found [here](./lib/theme.dart) with Custom colors, and font styles
  - Initializer. can be found [here](./lib/init.dart)
  - Localization Support. Mainly Arabic & English, other languages can be added
  - External Font (Janna) support
  
- Bloc support
  - Preferences Cubit to fetch preferences like theme, locale remotely
  - Locale Cubit to change locale
  - Theme cubit to change theme

- TestScreen() to test changing locale and theme on the fly utilizing flutter bloc.

<img src="https://github.com/user-attachments/assets/4b968297-8e58-401e-87ec-b90321c85e1c" alt="Image description" width="200"/>
<img src="https://github.com/user-attachments/assets/7194b853-54a2-49a7-a8e7-09a09a505fd3" alt="Image description" width="200"/>
<img src="https://github.com/user-attachments/assets/708cb92e-4855-4f0c-a58b-0c43e3568565" alt="Image description" width="200"/>

