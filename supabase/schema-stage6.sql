create table question_attempts (
  user_id uuid not null references auth.users(id) on delete cascade,
  question_id bigint not null references questions(id) on delete cascade,
  correct boolean not null,
  answered_at timestamptz not null default now(),
  primary key (user_id, question_id)
);

alter table question_attempts enable row level security;

create policy "Users manage their own attempts" on question_attempts
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

create table faq_questions (
  id bigint generated always as identity primary key,
  user_id uuid not null references auth.users(id) on delete cascade,
  email text not null,
  question text not null,
  created_at timestamptz not null default now()
);

alter table faq_questions enable row level security;

create policy "Users insert their own questions" on faq_questions
  for insert with check (auth.uid() = user_id);

create policy "Users read their own questions" on faq_questions
  for select using (auth.uid() = user_id);
