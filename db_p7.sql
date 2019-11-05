
CREATE TABLE public.Ingredient (
                ingredientID INTEGER NOT NULL,
                name VARCHAR NOT NULL,
                CONSTRAINT ingredient_pk PRIMARY KEY (ingredientID)
);


CREATE TABLE public.Product (
                productID INTEGER NOT NULL,
                ingredientID INTEGER NOT NULL,
                name VARCHAR NOT NULL,
                description VARCHAR,
                imageURL VARCHAR,
                price NUMERIC(2) NOT NULL,
                quantity INTEGER NOT NULL,
                CONSTRAINT product_pk PRIMARY KEY (productID)
);


CREATE TABLE public.User (
                userID INTEGER NOT NULL,
                firstName VARCHAR NOT NULL,
                lastName VARCHAR NOT NULL,
                password VARCHAR NOT NULL,
                userType INTEGER NOT NULL,
                CONSTRAINT user_pk PRIMARY KEY (userID)
);


CREATE TABLE public.Customer (
                userID INTEGER NOT NULL,
                address VARCHAR NOT NULL,
                email VARCHAR NOT NULL,
                phoneNumber VARCHAR,
                CONSTRAINT customer_pk PRIMARY KEY (userID)
);


CREATE TABLE public.Restaurant (
                restaurantID INTEGER NOT NULL,
                address VARCHAR NOT NULL,
                CONSTRAINT restaurant_pk PRIMARY KEY (restaurantID)
);


CREATE TABLE public.Stock (
                ingredientID INTEGER NOT NULL,
                restaurantID INTEGER NOT NULL,
                quantity INTEGER NOT NULL,
                CONSTRAINT stock_pk PRIMARY KEY (ingredientID, restaurantID)
);


CREATE TABLE public.Employee (
                userID INTEGER NOT NULL,
                restaurantID INTEGER NOT NULL,
                isAdmin BOOLEAN NOT NULL,
                employeeType INTEGER NOT NULL,
                CONSTRAINT employee_pk PRIMARY KEY (userID)
);


CREATE SEQUENCE public.order_orderid_seq;

CREATE TABLE public.Order (
                orderID INTEGER NOT NULL DEFAULT nextval('public.order_orderid_seq'),
                userID INTEGER NOT NULL,
                productID INTEGER NOT NULL,
                restaurantID INTEGER NOT NULL,
                date TIMESTAMP NOT NULL,
                state INTEGER NOT NULL,
                totalPrice NUMERIC(2) NOT NULL,
                CONSTRAINT order_pk PRIMARY KEY (orderID, userID)
);


ALTER SEQUENCE public.order_orderid_seq OWNED BY public.Order.orderID;

CREATE INDEX order_idx
 ON public.Order
 ( date DESC );

ALTER TABLE public.Product ADD CONSTRAINT ingredient_product_fk
FOREIGN KEY (ingredientID)
REFERENCES public.Ingredient (ingredientID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Stock ADD CONSTRAINT ingredient_stock_fk
FOREIGN KEY (ingredientID)
REFERENCES public.Ingredient (ingredientID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Order ADD CONSTRAINT product_order_fk
FOREIGN KEY (productID)
REFERENCES public.Product (productID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Order ADD CONSTRAINT user_order_fk
FOREIGN KEY (userID)
REFERENCES public.User (userID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Employee ADD CONSTRAINT user_employee_fk
FOREIGN KEY (userID)
REFERENCES public.User (userID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Customer ADD CONSTRAINT user_customer_fk
FOREIGN KEY (userID)
REFERENCES public.User (userID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Order ADD CONSTRAINT restaurant_order_fk
FOREIGN KEY (restaurantID)
REFERENCES public.Restaurant (restaurantID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Employee ADD CONSTRAINT restaurant_employee_fk
FOREIGN KEY (restaurantID)
REFERENCES public.Restaurant (restaurantID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Stock ADD CONSTRAINT restaurant_stock_fk
FOREIGN KEY (restaurantID)
REFERENCES public.Restaurant (restaurantID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
