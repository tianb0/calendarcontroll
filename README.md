```bash
xcodebuild archive \
-scheme CalendarControl \
-configuration Release \
-destination 'generic/platform=iOS' \
-archivePath './build/CalendarControl.framework-iphoneos.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
```

```bash
xcodebuild archive \
-scheme CalendarControl \
-configuration Release \
-destination 'generic/platform=iOS Simulator' \
-archivePath './build/CalendarControl.framework-iphonesimulator.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
```

```bash
xcodebuild archive \
-scheme CalendarControl \
-configuration Release \
-destination 'platform=macOS,arch=x86_64,variant=Mac Catalyst' \
-archivePath './build/CalendarControl.framework-catalyst.xcarchive' \
SKIP_INSTALL=NO \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
```

```bash
xcodebuild -create-xcframework \
-framework './build/CalendarControl.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/CalendarControl.framework' \
-framework './build/CalendarControl.framework-iphoneos.xcarchive/Products/Library/Frameworks/CalendarControl.framework' \
-framework './build/CalendarControl.framework-catalyst.xcarchive/Products/Library/Frameworks/CalendarControl.framework' \
-output './build/CalendarControl.xcframework'
```
