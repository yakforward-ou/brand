
### yakforward brand

assets and flutter widgets for Yakforward OÜ brand

### how to import assets directly from package

- add `yakforward_brand` to your dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  yakforward_brand: ^1.0.0
```

- add assets as in the example below

```yaml
flutter:
  uses-material-design: true
  assets:
    - packages/yakforward_brand/logo.png
    - packages/yakforward_brand/icon.fft
```