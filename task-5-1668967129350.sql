INSERT INTO "select extract(year from o.order_date) as ""year"", extract(month from o.order_date) as ""month"", count(o.order_id) as order_count, round(SUM(od.quantity*od.unit_price*(1-od.discount))) as ""revenue"" 
from orders o 
join order_details od 
	on od.order_id = o.order_id
where extract(year from o.order_date) = 1997
group by ""year"", ""month""
order by ""month""" ("year","month",order_count,revenue) VALUES
	 (1997,1,85,61258.0),
	 (1997,2,79,38484.0),
	 (1997,3,77,38547.0),
	 (1997,4,81,53033.0),
	 (1997,5,96,53781.0),
	 (1997,6,76,36363.0),
	 (1997,7,77,51021.0),
	 (1997,8,84,47288.0),
	 (1997,9,95,55629.0),
	 (1997,10,106,66749.0);
INSERT INTO "select extract(year from o.order_date) as ""year"", extract(month from o.order_date) as ""month"", count(o.order_id) as order_count, round(SUM(od.quantity*od.unit_price*(1-od.discount))) as ""revenue"" 
from orders o 
join order_details od 
	on od.order_id = o.order_id
where extract(year from o.order_date) = 1997
group by ""year"", ""month""
order by ""month""" ("year","month",order_count,revenue) VALUES
	 (1997,11,89,43534.0),
	 (1997,12,114,71398.0);
