-- Run this once in Supabase: SQL Editor → New query → Run.
create table if not exists public.expenses (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade default auth.uid(),
  client_id text not null,
  title text not null check (char_length(title) between 1 and 40),
  amount numeric(12,2) not null check (amount > 0),
  category text not null,
  occurred_on date not null,
  created_at timestamptz not null default now(),
  unique (user_id, client_id)
);

alter table public.expenses enable row level security;

create policy "Users can view their own expenses" on public.expenses for select using (auth.uid() = user_id);
create policy "Users can add their own expenses" on public.expenses for insert with check (auth.uid() = user_id);
create policy "Users can change their own expenses" on public.expenses for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "Users can delete their own expenses" on public.expenses for delete using (auth.uid() = user_id);

