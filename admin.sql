-- Run in Supabase SQL Editor AFTER setup.sql
create table admins (email text primary key);
alter table admins enable row level security;
create policy "admin reads self" on admins for select to authenticated
  using (email = auth.jwt() ->> 'email');

create policy "admin manages events" on events for all to authenticated
  using (exists (select 1 from admins where email = auth.jwt() ->> 'email'))
  with check (exists (select 1 from admins where email = auth.jwt() ->> 'email'));

create policy "admin reads registrations" on registrations for select to authenticated
  using (exists (select 1 from admins where email = auth.jwt() ->> 'email'));
create policy "admin deletes registrations" on registrations for delete to authenticated
  using (exists (select 1 from admins where email = auth.jwt() ->> 'email'));

-- Replace with the email(s) of your admin accounts (add more rows for coordinators)
insert into admins (email) values ('your-email@example.com');
