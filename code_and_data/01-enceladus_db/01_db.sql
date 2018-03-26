-- simple start
create table mission_plan(
  the_date date,
  title varchar(100),
  description text
);

-- with a PK
drop table if exists mission_plan;
create table mission_plan(
  id serial primary key,
  the_date date,
  title varchar(100),
  description text
);

-- raw
create table mission_plan(
  id integer not null
  --...
);

create sequence mission_plan_id_seq;
alter table mission_plan
alter column id set default nextval('mission_plan_id_seq');

alter table mission_plan 
add constraint mission_plan_pk primary key (id);
