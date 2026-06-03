# Share My Location

A lightweight progressive web app that lets a user capture their current location and open the native SMS app with a pre-filled Google Maps link.

## What it does

- Retrieves the user's current GPS location using browser geolocation.
- Continues tracking location updates until the user sends the SMS so the latest coordinates are used.
- Shows latitude, longitude, and accuracy.
- Accepts a recipient phone number.
- Opens the SMS composer with a ready-to-send message.
- Remembers the last phone number entered across browser sessions.
- Uses a service worker to cache the app shell for offline availability.
- Displays a build version based on the commit count.

## Files

- `location-share.html` — main PWA page and client-side application logic.
- `manifest.json` — web app manifest for installable PWA metadata.
- `sw.js` — service worker that caches shell assets.
- `icon.svg` — app icon used by the manifest.

## How to use

1. Host the directory on a static web server or open `location-share.html` in a browser.
2. Tap `Get My Location` and allow location access.
3. Enter the recipient's phone number.
4. Tap `Send Location via SMS` to launch the native SMS app with the message pre-filled.

## Notes

- The app uses the `sms:` URI scheme to open the messaging app on mobile devices.
- The service worker caches `location-share.html`, `manifest.json`, and `icon.svg` for offline loading of the app shell.
- Geolocation only works when the browser supports it and the user grants permission.

## Development

This project is purely static and requires no backend.

### Serving locally

Use any static server. For example:

```bash
python3 -m http.server 8000
```

The site also supports a build-time version file. Run `./build-version.sh` before deploying to generate `version.js`.

Then open `http://localhost:8000/location-share.html`.

## Debugging in VS Code

This repo includes a VS Code Chrome launch configuration. Start the `Launch Chrome with location-share` debug target to launch Chrome at `http://localhost:8000/location-share.html` and automatically start a local server.

### Git hooks (optional, recommended)

To have Git run `build-version.sh` on every commit (so `version.js` stays up-to-date), enable the repository-local hooks and make the pre-commit hook executable:

```bash
git config core.hooksPath .githooks
chmod +x .githooks/pre-commit
./build-version.sh
```

After this, committing will run the build script automatically.

By default the pre-commit hook will stage `version.js` when it changes so the generated build file is included in the commit. The hook will not modify your commit message.

## License

No license specified.
