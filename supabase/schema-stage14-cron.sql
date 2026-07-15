-- Run once in the SQL Editor AFTER deploying the answer-faq Edge Function.
-- Enables the two Postgres extensions needed to call an Edge Function on a
-- schedule, then schedules it to run every 5 minutes.

create extension if not exists pg_cron with schema extensions;
create extension if not exists pg_net with schema extensions;

-- Replace <ANON_KEY> with your project's anon key (Project Settings -> API).
-- Safe to hardcode here: the anon key is public by design (it already ships
-- in the site's client-side JS bundle).
select cron.schedule(
  'answer-faq-questions',
  '*/5 * * * *',
  $$
  select net.http_post(
    url := 'https://duuayhmssvyxghvmrnlj.supabase.co/functions/v1/answer-faq',
    headers := jsonb_build_object(
      'Authorization', 'Bearer <ANON_KEY>',
      'Content-Type', 'application/json'
    )
  );
  $$
);

-- To check it's registered:
--   select * from cron.job;
-- To see run history:
--   select * from cron.job_run_details order by start_time desc limit 10;
-- To remove it later:
--   select cron.unschedule('answer-faq-questions');
