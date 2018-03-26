drop table if exists master_plan;

create table master_plan(
	start_time_utc text,
	duration text,
	date text,
	team text,
	spass_type text,
	target text,
	request_name text,
	library_definition text,
	title text,
	description text
);

COPY master_plan
FROM '/home/aguirao/Desarrollo/a-curious-moon/code_and_data/data/master_plan.csv'
WITH DELIMITER ',' HEADER CSV;
