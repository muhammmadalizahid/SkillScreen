create table public.applications (
  id uuid not null default gen_random_uuid (),
  candidate_id uuid not null,
  job_id uuid not null,
  status text null default 'applied'::text,
  applied_at timestamp with time zone null default now(),
  constraint applications_pkey primary key (id),
  constraint applications_candidate_id_job_id_key unique (candidate_id, job_id),
  constraint applications_candidate_id_fkey foreign KEY (candidate_id) references candidates (id) on delete CASCADE,
  constraint applications_job_id_fkey foreign KEY (job_id) references jobs (id) on delete CASCADE
) TABLESPACE pg_default;


create table public.candidate_answers (
  mcq_id uuid not null,
  selected_answer text not null,
  is_correct boolean not null,
  constraint candidate_answers_pkey primary key (mcq_id),
  constraint candidate_answers_mcq_id_fkey foreign KEY (mcq_id) references mcqs (id) on delete CASCADE
) TABLESPACE pg_default;

create table public.candidates (
  id uuid not null default gen_random_uuid (),
  name text not null,
  email text not null,
  constraint candidates_pkey primary key (id),
  constraint candidates_email_key unique (email)
) TABLESPACE pg_default;

create table public.domains (
  id uuid not null default gen_random_uuid (),
  name text not null,
  description text null,
  constraint domains_pkey primary key (id),
  constraint domains_name_key unique (name)
) TABLESPACE pg_default;

create table public.job_skills (
  job_id uuid not null,
  skill_id uuid not null,
  weight integer not null,
  constraint job_skills_pkey primary key (job_id, skill_id),
  constraint job_skills_job_id_fkey foreign KEY (job_id) references jobs (id) on delete CASCADE,
  constraint job_skills_skill_id_fkey foreign KEY (skill_id) references skills (id) on delete CASCADE,
  constraint job_skills_weight_check check (
    (
      (weight >= 1)
      and (weight <= 100)
    )
  )
) TABLESPACE pg_default;

create table public.jobs (
  id uuid not null default gen_random_uuid (),
  title text not null,
  description text null,
  experience_level text null,
  domain_id uuid not null,
  created_at timestamp with time zone null default now(),
  constraint jobs_pkey primary key (id),
  constraint jobs_domain_id_fkey foreign KEY (domain_id) references domains (id)
) TABLESPACE pg_default;

create table public.mcqs (
  id uuid not null default gen_random_uuid (),
  test_session_id uuid not null,
  skill_id uuid null,
  question text not null,
  options text[] not null,
  correct_answer text not null,
  constraint mcqs_pkey primary key (id),
  constraint mcqs_skill_id_fkey foreign KEY (skill_id) references skills (id),
  constraint mcqs_test_session_id_fkey foreign KEY (test_session_id) references test_sessions (id) on delete CASCADE
) TABLESPACE pg_default;

create table public.skill_dependencies (
  skill_id uuid not null,
  depends_on_skill_id uuid not null,
  constraint skill_dependencies_pkey primary key (skill_id, depends_on_skill_id),
  constraint skill_dependencies_depends_on_skill_id_fkey foreign KEY (depends_on_skill_id) references skills (id) on delete CASCADE,
  constraint skill_dependencies_skill_id_fkey foreign KEY (skill_id) references skills (id) on delete CASCADE,
  constraint skill_dependencies_check check ((skill_id <> depends_on_skill_id))
) TABLESPACE pg_default;

create table public.skills (
  id uuid not null default gen_random_uuid (),
  domain_id uuid not null,
  name text not null,
  description text null,
  constraint skills_pkey primary key (id),
  constraint skills_domain_id_name_key unique (domain_id, name),
  constraint skills_domain_id_fkey foreign KEY (domain_id) references domains (id) on delete CASCADE
) TABLESPACE pg_default;

create table public.test_results (
  application_id uuid not null,
  mcq_score numeric not null,
  total_questions integer not null,
  correct_answers integer not null,
  percentage numeric not null,
  completed_at timestamp with time zone null default now(),
  constraint test_results_pkey primary key (application_id),
  constraint test_results_application_id_fkey foreign KEY (application_id) references applications (id) on delete CASCADE
) TABLESPACE pg_default;


create table public.test_sessions (
  id uuid not null default gen_random_uuid (),
  application_id uuid not null,
  started_at timestamp with time zone null default now(),
  completed_at timestamp with time zone null,
  constraint test_sessions_pkey primary key (id),
  constraint test_sessions_application_id_fkey foreign KEY (application_id) references applications (id) on delete CASCADE
) TABLESPACE pg_default;