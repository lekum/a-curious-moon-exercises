-- simple join
select targets.description as target, 
time_stamp, 
title
from events
inner join targets on target_id=targets.id;

-- using partial string
select targets.description as target, 
time_stamp, 
title
from events
inner join targets on target_id=targets.id
where title like '%flyby%' or '%fly by%';

-- correctly done without error
select targets.description as target, 
time_stamp, 
title
from events
inner join targets on target_id=targets.id
where title like '%flyby%' 
or title like '%fly by%';


-- case insenstive
select targets.description as target, 
time_stamp, 
title
from events
inner join targets on target_id=targets.id
where title ilike '%flyby%' 
or title ilike '%fly by%';

-- using regex
select targets.description as target, 
time_stamp, 
title
from events
inner join targets on target_id=targets.id
where title ~* '^T\d.*? flyby'


-- more expansive regex 
select targets.description as target, 
time_stamp, 
title
from events
inner join targets on target_id=targets.id
where title ~* '^T[A-Z0-9_].*? flyby';

-- adding event types
select targets.description as target, 
  event_types.description as event,
  time_stamp, 
  time_stamp::date as date,
  title
from events
left join targets on target_id=targets.id
left join event_types on event_type_id=event_types.id
where title ilike '%flyby%' 
or title ilike '%fly by%';


-- sleuthing
select target, title, date 
from import.master_plan 
where start_time_utc::date = '2005-02-17' 
order by start_time_utc::date;