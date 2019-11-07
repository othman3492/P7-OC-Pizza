BEGIN TRANSACTION;

--- ===== Purge des tables
DELETE FROM public.ingredient;
DELETE FROM public.product;
DELETE FROM public.basket;
DELETE FROM public.composition;
DELETE FROM public.user;
DELETE FROM public.customer;
DELETE FROM public.restaurant;
DELETE FROM public.stock;
DELETE FROM public.employee;
DELETE FROM public.order;



COMMIT;