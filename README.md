# Share My Location

A lightweight progressive web app that lets a user capture their current location and open the native SMS app with a pre-filled Google Maps link.

## What it does
- Retrieves the user's current GPS location using browser geolocation.
- Shows latitude, longitude, and accuracy.
- Accepts a recipient phone number.
- Opens the SMS composer with a ready-to-send message.
- Uses a service worker to cache the app shell for offline availability.

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

Then open `http://localhost:8000/location-share.html`.

## License
No license specified.
