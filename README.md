# sonableai

A new Flutter project.

## Getting Started

```
$>echo "
NEWS_API_KEY=$NewsAPI_Key
GROQ_API_KEY=$GroqAPI_Key
NVIDIA_API_KEY=$NvidiaAPI_Key
" > ./server/.env
$>cd server
$>python podcaster.py
$>cd ../gateway
$>go build -o gateway(.exe, if needed)
$>./gateweay(.exe, if needed)
$>cd ../
$>flutter pub get
$>flutter run
```

## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/to/resolution-aware-images).

## Localization

This project generates localized messages based on arb files found in
the `lib/src/localization` directory.

To support additional languages, please visit the tutorial on
[Internationalizing Flutter apps](https://flutter.dev/to/internationalization).
