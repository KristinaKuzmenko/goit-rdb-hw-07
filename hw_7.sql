use mydb;

-- 1
select id, date, year(date), month(date), day(date) from orders;

-- 2
select id, date, date_add(date, interval 1 day) from orders;

-- 3
select id, date, unix_timestamp(date) from orders;

-- 4
select count(*) from orders
where date between '1996-07-10 00:00:00' and '1996-10-08 00:00:00';

-- 5
select id, date, json_object('id', id, 'date', date) from orders;