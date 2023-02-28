INSERT INTO "select c.country, count(*) as number_of_costumers
from customers c 
group by c.country
order by number_of_costumers desc  
limit 5" (country,number_of_costumers) VALUES
	 ('USA',13),
	 ('France',11),
	 ('Germany',11),
	 ('Brazil',9),
	 ('UK',7);
