create table if not exists public.voices (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  description text,
  language text not null default 'English',
  audio_url text,
  active boolean not null default true,
  created_at timestamptz not null default now()
);

create table if not exists public.agent_demos (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  greeting text,
  system_prompt text,
  published boolean not null default false,
  created_at timestamptz not null default now()
);

create table if not exists public.api_waitlist (
  id uuid primary key default gen_random_uuid(),
  email text not null unique,
  created_at timestamptz not null default now()
);

create table if not exists public.content_updates (
  id uuid primary key default gen_random_uuid(),
  section text not null,
  title text,
  body text,
  published boolean not null default false,
  published_at timestamptz not null default now()
);

alter table public.voices enable row level security;
alter table public.agent_demos enable row level security;
alter table public.api_waitlist enable row level security;
alter table public.content_updates enable row level security;

create policy "Public voices are readable"
  on public.voices for select using (active = true);
create policy "Published agent demos are readable"
  on public.agent_demos for select using (published = true);
create policy "Published content is readable"
  on public.content_updates for select using (published = true and published_at <= now());
create policy "Anyone can join the API waitlist"
  on public.api_waitlist for insert with check (true);
