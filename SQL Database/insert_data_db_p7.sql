BEGIN TRANSACTION;


--- ================================================================================
--- ingredient
--- ================================================================================
	INSERT INTO public.ingredient (ingredientID, name) VALUES (	1,	'Sauce tomate'	);
	INSERT INTO public.ingredient (ingredientID, name) VALUES (	2,	'Fromage'	);
	INSERT INTO public.ingredient (ingredientID, name) VALUES (	3,	'Jambon'	);
	INSERT INTO public.ingredient (ingredientID, name) VALUES (	4,	'Olives'	);
	INSERT INTO public.ingredient (ingredientID, name) VALUES (	5,	'Pepperoni'	);
	INSERT INTO public.ingredient (ingredientID, name) VALUES (	6,	'Oignons'	);
	INSERT INTO public.ingredient (ingredientID, name) VALUES (	7,	'Poivrons'	);
	INSERT INTO public.ingredient (ingredientID, name) VALUES (	8,	'Champignons'	);



--- ================================================================================
--- product
--- ================================================================================
	INSERT INTO public.product (productID, name, price) VALUES (	1,	'Margharita',	8.50	);
	INSERT INTO public.product (productID, name, price) VALUES (	2,	'Romana',	9.50	);
	INSERT INTO public.product (productID, name, price) VALUES (	3,	'Reine',	10.50	);
	INSERT INTO public.product (productID, name, price) VALUES (	4,	'New-Yorkaise',	11.00	);
	INSERT INTO public.product (productID, name, price) VALUES (	5,	'Végétarienne',	10.00	);



--- ================================================================================
--- user
--- ================================================================================
	INSERT INTO public.user (userID, firstName, lastName, password, isEmployee) VALUES (	1,	'Bastien',	'Morel', 'fkdjflkdjf', true	);
	INSERT INTO public.user (userID, firstName, lastName, password, isEmployee) VALUES (	2,	'Linda',	'Marchal', 'dkjflkgjfklg', false	);
	INSERT INTO public.user (userID, firstName, lastName, password, isEmployee) VALUES (	3,	'Jordan',	'Popelin', 'dkljfkgj', false	);
	INSERT INTO public.user (userID, firstName, lastName, password, isEmployee) VALUES (	4,	'Coline',	'Haillet', 'kjglfkdgjf', true	);
	INSERT INTO public.user (userID, firstName, lastName, password, isEmployee) VALUES (	5,	'Célia',	'Cuvillier', 'smflfdgmlf', true	);
	INSERT INTO public.user (userID, firstName, lastName, password, isEmployee) VALUES (	6,	'Benjamin',	'Lauzet', 'jsdlgjfdl', true	);



--- ================================================================================
--- customer
--- ================================================================================
	INSERT INTO public.customer (userID, address, email, phoneNumber) VALUES (	2,	'124 rue de Belleville, 75020 PARIS',	'lindamarchal@gmail.com',	0654825842	);
	INSERT INTO public.customer (userID, address, email, phoneNumber) VALUES (	3,	'34 rue de Tolbiac, 75013 PARIS',	'jordanpopelin@gmail.com',	0685218872	);




--- ================================================================================
--- employee
--- ================================================================================
	INSERT INTO public.employee (userID, restaurantID, employeeType) VALUES (	1, 1, 'Shop vendor'	);
	INSERT INTO public.employee (userID, restaurantID, employeeType) VALUES (	4, 1, 'Pizzaiolo'	);
	INSERT INTO public.employee (userID, restaurantID, employeeType) VALUES (	5, 1, 'Manager'	);
	INSERT INTO public.employee (userID, restaurantID, employeeType) VALUES (	6, 1, 'Delivery man'	);





--- ================================================================================
--- restaurant
--- ================================================================================
	INSERT INTO public.restaurant (restaurantID, address) VALUES (	1,	'366 rue de Vaugirard, 75015 PARIS'	);
	



--- ================================================================================
--- composition
--- ================================================================================
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	1,	1,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	1,	2,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	1,	4,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	2,	1,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	2,	2,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	2,	3,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	2,	4,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	3,	1,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	3,	2,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	3,	3,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	3,	8,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	3,	4,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	4,	1,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	4,	2,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES ( 4,	5,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	5,	1,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	5,	2,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	5,	4,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	5,	6,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	5,	7,  1	);
	INSERT INTO public.composition (productID, ingredientID, quantity) VALUES (	5,	8,  1	);



--- ================================================================================
--- stock
--- ================================================================================
	INSERT INTO public.stock (restaurantID, ingredientID, quantity) VALUES (	1,	1, 50	);
	INSERT INTO public.stock (restaurantID, ingredientID, quantity) VALUES (	1,	2, 38	);
	INSERT INTO public.stock (restaurantID, ingredientID, quantity) VALUES (	1,	3, 25	);
	INSERT INTO public.stock (restaurantID, ingredientID, quantity) VALUES (	1,	4, 152	);
	INSERT INTO public.stock (restaurantID, ingredientID, quantity) VALUES (	1,	5, 32	);
	INSERT INTO public.stock (restaurantID, ingredientID, quantity) VALUES (	1,	6, 61	);
	INSERT INTO public.stock (restaurantID, ingredientID, quantity) VALUES (	1,	7, 80	);
	INSERT INTO public.stock (restaurantID, ingredientID, quantity) VALUES (	1,	8, 73	);
	


--- ================================================================================
--- order
--- ================================================================================
	INSERT INTO public.order (orderID, userID, restaurantID, date, state, totalPrice) VALUES (	1,	2,  1,  '2019-12-15 20:15:00', 5, 20.50 	);
	INSERT INTO public.order (orderID, userID, restaurantID, date, state, totalPrice) VALUES (	2,	2,  1,  '2019-12-20 20:34:00', 5, 39.00 	);
	INSERT INTO public.order (orderID, userID, restaurantID, date, state, totalPrice) VALUES (	3,	3,  1,  '2019-12-21 19:15:00', 2, 47.50 	);



--- ================================================================================
--- basket
--- ================================================================================
	INSERT INTO public.basket (orderID, productID, quantity) VALUES (	1,	1,	1	);
	INSERT INTO public.basket (orderID, productID, quantity) VALUES (	1,	4,	1	);
	INSERT INTO public.basket (orderID, productID, quantity) VALUES (	2,	1,	1	);
	INSERT INTO public.basket (orderID, productID, quantity) VALUES (	2,	3,  1	);
	INSERT INTO public.basket (orderID, productID, quantity) VALUES (	2,	5,	2	);
	INSERT INTO public.basket (orderID, productID, quantity) VALUES (	3,	2,	5	);





COMMIT;
