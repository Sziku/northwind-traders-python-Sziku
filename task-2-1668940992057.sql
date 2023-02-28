INSERT INTO "select c.category_name , count(c.category_id) as number_of_products
from categories c 
join products p 
	on c.category_id = p.category_id
group by c.category_name 
order by number_of_products desc, c.category_name" (category_name,number_of_products) VALUES
	 ('Confections',13),
	 ('Beverages',12),
	 ('Condiments',12),
	 ('Seafood',12),
	 ('Dairy Products',10),
	 ('Grains/Cereals',7),
	 ('Meat/Poultry',6),
	 ('Produce',5);
