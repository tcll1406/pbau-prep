create table questions (
  id bigint generated always as identity primary key,
  subject text not null,
  topic text not null,
  statement text not null,
  option_a text not null,
  option_b text not null,
  option_c text not null,
  option_d text not null,
  correct text not null check (correct in ('A','B','C','D')),
  feedback text not null
);

alter table questions enable row level security;

create policy "Public read access" on questions for select using (true);
