# Product Requirements Document (PRD)

## Project Name

Share My Location

## Purpose

Provide a lightweight progressive web app (PWA) that helps users share their current geographic location by opening the native SMS app with a pre-filled message.

## Single Source of Truth

This PRD is the authoritative requirements document for the `info_by_sms` codebase. All feature decisions, user needs, and acceptance criteria should refer to this file.

## Problem Statement

People often need to share their current location quickly, especially when they are traveling or meeting someone. Existing flow of copying coordinates, opening messaging apps, and pasting links is slow and error-prone.

## Target Users

- Mobile users who want to send their location to another person by SMS.
- Users who need a fast and accessible way to share location without requiring a full account or backend.

## Objectives

- Allow the user to capture their current location using browser geolocation.
- Build a usable SMS message with a Google Maps link to the captured coordinates.
- Open the native SMS application with the recipient number and message pre-filled.
- Support offline access to the basic app shell through a service worker.

## Key Features

1. Get current location via browser geolocation.
2. Display latitude/longitude and accuracy feedback.
3. Accept a recipient phone number.
4. Open the native SMS composer with the location link.
5. Register a service worker to cache the app shell for offline load.

## Product Scope

### In Scope

- Web UI for entering a phone number and fetching location.
- `navigator.geolocation` integration with user feedback.
- `sms:` URI generation to pre-fill the message.
- PWA manifest and service worker for installability and offline caching.
- Simple accessible mobile-first layout.

### Out of Scope

- Backend services or server-side location processing.
- Authentication or user accounts.
- Routing, multi-page navigation, or complex state management.
- Sending SMS directly from the browser without user confirmation.

## Functional Requirements

- FR1: The app must prompt for location permission when the user taps `Get My Location`.
- FR2: The app must show a loading indicator while geolocation is in progress.
- FR3: The app must display an error message if geolocation fails.
- FR4: The app must keep the `Send Location via SMS` button disabled until location is acquired.
- FR5: The app must generate a Google Maps URL with latitude and longitude.
- FR6: The app must open `sms:<phone>?body=<message>` when sending.
- FR7: The app must cache the app shell assets in `sw.js` during service worker install.

## Non-Functional Requirements

- NFR1: The app must be responsive on mobile screens.
- NFR2: The app shell must load while offline once the service worker caches assets.
- NFR3: The UI must be readable and accessible with simple controls.
- NFR4: The app must use only static assets and client-side JavaScript.

## User Experience

- The UI should be simple and focused on a single task.
- The app should display clear status text for location fetch success or failure.
- Button states should reflect readiness to send.
- The phone field should accept standard phone number formatting.

## Success Metrics

- User can obtain location and send SMS in fewer than 3 taps.
- The app shell is available after first install/load when offline.
- Geolocation error handling is clear and actionable.

## Future Enhancements

- Support copy-to-clipboard for the location link.
- Add optional message customization before opening SMS.
- Add support for alternate messaging apps or share sheet.
- Add better validation for phone numbers.
- Add analytics or error logging for geolocation failures.
