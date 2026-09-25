-- Run in Supabase SQL Editor
create table events (
  id bigint generated always as identity primary key,
  name text not null, track text not null, description text,
  event_date date not null, start_time time not null, end_time time,
  venue text, team_size text default '1-4', fee numeric default 0, prize text,
  coordinator_name text, coordinator_phone text,
  reg_open boolean default true, is_published boolean default true
);
create table registrations (
  id bigint generated always as identity primary key,
  event_id bigint references events(id) not null,
  name text not null, email text not null, phone text, college text, team_members text,
  created_at timestamptz default now(),
  unique (event_id, email)
);
alter table events enable row level security;
alter table registrations enable row level security;
create policy "public read events" on events for select using (is_published = true);
create policy "public can register" on registrations for insert with check (true);
