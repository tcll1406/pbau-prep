alter table faq_questions
  add column answer text,
  add column answered_at timestamptz;
