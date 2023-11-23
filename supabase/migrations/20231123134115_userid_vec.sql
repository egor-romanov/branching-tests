alter table vecs.docs add column user_id uuid references auth.users(id);

create extension if not exists pgtap;