create extension if not exists vector;

create schema if not exists vecs;

create table if not exists vecs.docs (
  id uuid primary key,
  vec vector,
  metadata jsonb
);

create index if not exists docs_metadata_idx on vecs.docs using gin (metadata jsonb_path_ops);