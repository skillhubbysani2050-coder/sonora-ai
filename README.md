# Sonora

Sonora is an original, open-source AI audio SaaS landing website. It explores expressive voice generation, conversational agents, developer APIs, research, safety and customer stories.

## Run locally

```bash
python -m http.server 4173
```

Open `http://127.0.0.1:4173`.

## Open-source scope

- MIT licensed
- Responsive desktop and mobile interface
- Interactive voice studio demonstration
- Voice and conversational-agent previews
- Developer API code example
- SEO metadata and social-ready page structure
- Supabase integration layer prepared in `supabase/schema.sql`

## Supabase setup

No Supabase project is currently visible to the connected account. After a project is available, create `voices`, `agent_demos`, `api_waitlist` and `content_updates` tables from `supabase/schema.sql`, then set the public project URL and anonymous key through the hosting provider's environment variables.

Never commit Supabase service-role keys or database passwords.

## Repository

https://github.com/skillhubbysani2050-coder/sonora-ai
