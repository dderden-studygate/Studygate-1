# Study Gate App

This folder turns the exported `StudyGate_Fixed_2026-04-18_20-17-33.html` prototype into a shareable web app.

## What works

- Child and parent views from the original prototype
- Local persistence through browser storage
- Parent confirmation flow
- Quiz results sending flow
- Local outbox fallback for email/text actions
- Outbox viewer for sent parent confirmations and quiz result messages
- Installable PWA behavior when the app is hosted over HTTPS

## Important note

Outgoing email/text payloads are saved to a local outbox instead of using a real mail provider. This keeps the app working without external credentials, but every phone stores its own data and outbox locally.

## Local preview

Double-click:

- `Run Study Gate.cmd`

That will try to serve the app locally with Node so service worker and install behavior can work in a browser. If Node is not available, it falls back to opening `index.html`.

## Publish it

- Upload the contents of this folder to any static host over HTTPS.
- Keep `index.html`, `outbox.html`, `manifest.webmanifest`, `sw.js`, and the `icons` folder together.
- After it is online, people can open the public URL on their phones and add it to their home screen.

Useful files:

- `index.html`
- `outbox.html`
- `manifest.webmanifest`
- `sw.js`

## Limitations

- Device data does not sync between different phones yet.
- Email/text actions are saved to the local outbox instead of being sent through a real provider.
- Real cross-device sync and real message delivery would need a cloud backend.
