INSERT INTO "select p.product_name, round(SUM(od.quantity*od.unit_price*(1-od.discount))) as ""sum"" 
from products p
join order_details od 
	ON od.product_id = p.product_id  
group by p.product_id 
order by ""sum""
limit 10" (product_name,sum) VALUES
	 ('Chocolade',1369.0),
	 ('Geitost',1648.0),
	 ('Genen Shouyu',1785.0),
	 ('Laughing Lumberjack Lager',2397.0),
	 ('Longlife Tofu',2432.0),
	 ('Gravad lax',2688.0),
	 ('Aniseed Syrup',3044.0),
	 ('Filo Mix',3233.0),
	 ('Louisiana Hot Spiced Okra',3383.0),
	 ('Valkoinen suklaa',3438.0);
