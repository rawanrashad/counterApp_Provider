Flutter Responsive Counter App Using Provider

This Flutter application demonstrates a simple counter app with state management using the `Provider` package. The app features five buttons to interact with the counter, and it's designed to be fully responsive, adjusting its layout and widgets based on screen size.
Features
- **Increment by 1**: Increases the counter value by 1.
- **Increment by 2**: Increases the counter value by 2.
- **Reset**: Resets the counter value to 0.
- **Decrement by 1**: Decreases the counter value by 1.
- **Decrement by 2**: Decreases the counter value by 2.
- Fully responsive design that works across all screen sizes.
- State management using `Provider`.
Screenshots

Installation
1. Clone the repository:
git clone https://github.com/rawanrashad/counterApp_Provider.git
2. Navigate to the project directory:
cd counterApp_Provider
3. Install dependencies:
flutter pub get
4. Run the app:
flutter run

Project Structure

lib/

│

├── counter_provider.dart   # State management with Provider

├── counter_screen.dart     # The main screen UI of the app

└── main.dart               # App entry point

Dependencies
- `provider: ^6.1.2`
Add these dependencies by running:
flutter pub get
License
This project is open-source and available under the *MIT License.

*The MIT License is a popular open-source software license developed by the Massachusetts Institute of Technology (MIT). It allows users to use, modify, and distribute the licensed software freely, including for commercial purposes. However, the license does require that if a user makes changes to the software, they must publish those changes and make the modified version freely available to others. This ensures that the software remains open-source and accessible to the public.
