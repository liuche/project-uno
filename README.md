# project-uno
TODO: The next NMX app: an experimental social experience.

## Development
You'll have to have the following installed to develop:
* CocoaPods

Run the following:

```sh
pod install # Install dependencies
open Uno.xcworkspace # Open Xcode project.
```

If you're running into problems with dependencies make sure your pod repos are up to date:
```sh
pod repo udate
pod update
```

### API keys
You'll need the `Uno/Uno/GoogleService-Info.plist` file, which containes secure information to connect to Firebase. *Please do not add this file to version control.*

If you are a team member, this file is available in the Engineering gdrive. If you are not, please contact a team member directly to discuss recieving this file for development.

You can build and run in Xcode.
