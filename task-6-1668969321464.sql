INSERT INTO "select  c.company_name, count(o.order_id) as orders , array_to_string(array_agg(o.order_id), ', ') as order_ids
from customers c 
join orders o 
	on o.customer_id = c.customer_id 
where c.country like 'USA'
group by c.company_name, c.country  
having  count(o.order_id) < 5
order by orders" (company_name,orders,order_ids) VALUES
	 ('Lazy K Kountry Store',2,'10482, 10545'),
	 ('Trail''s Head Gourmet Provisioners',3,'10574, 10577, 10822'),
	 ('The Cracker Box',3,'10624, 10775, 11003'),
	 ('Let''s Stop N Shop',4,'10579, 10719, 10735, 10884'),
	 ('The Big Cheese',4,'10310, 10708, 10805, 10992');
