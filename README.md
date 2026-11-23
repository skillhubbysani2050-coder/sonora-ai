# Sonora

Sonora is an original open-source audio product prototype with browser-based speech playback and a scripted support-agent demo.

## Working features

- Responsive, accessible landing page
- Play text through speech voices installed in the visitor’s browser/device
- Select a local browser voice; audio is not uploaded or saved
- Scripted FAQ chat demo
- Developer API example (illustrative, not a live API)

No hosted text-to-speech API, AI model, customer accounts, billing, or production backend is connected yet. Speech quality and available voices depend on the visitor’s device.

## Supabase setup

`supabase/schema.sql` contains the starter data model and row-level access policies. No Supabase project is connected yet. Create a Supabase project, apply the schema, and configure its public project URL and anon key before enabling database-backed features. Never commit a service-role key or database password.

## Run locally

```bash
python -m http.server 4173
```

Open `http://127.0.0.1:4173`.

## Public preview

https://skillhubbysani2050-coder.github.io/sonora-ai/

## License

MIT
