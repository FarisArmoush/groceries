## Generation Commands
```ssh
flutter clean
flutter pub get
dart run build_runner build -d
```
```ssh
dart run build_runner watch -d
```

## Release APK 

### Development
```ssh
flutter build apk --release -t lib/main_development.dart --flavor development
```

### Staging
```ssh
flutter build apk --release -t lib/main_staging.dart --flavor staging
``` 

### Production
```ssh
flutter build apk --release -t lib/main_production.dart --flavor production
```

## Release IPA

### Development
```ssh
flutter build ipa --release -t lib/main_development.dart --flavor development
```

### Staging
```ssh
flutter build ipa --release -t lib/main_staging.dart --flavor staging
``` 

### Production
```ssh
flutter build ipa --release -t lib/main_production.dart --flavor production
```
