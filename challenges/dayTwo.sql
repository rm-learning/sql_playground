--
-- Responder quantos pagamentos foram realizados pelo cliente com 
-- costumer_id = 100.
--

SELECT
    count(*)
FROM payment
WHERE customer_id = 100

--
-- Responder qual é o sobrenome da cliente do GreenCycles chamada 'ERIKA'.
--

SELECT
    last_name
FROM customer
WHERE first_name = 'ERIKA'

--
-- Responder quantos aluguéis ainda não foram retornados (nulos).
--

SELECT
    count(*)
FROM rental
WHERE return_date is null

--
-- Retornar uma lista com todos os payment-ids que possuem um valor menor ou 
-- igual a 2$.
--

SELECT
    payment_id,
    amount
FROM payment
WHERE amount <= 2

/*
 * Listar todos os pagamentos feitos pelos clientes de id 322, 346 e 354, em
 * que o valor é menor ou igual a 2$ ou maior que 10$. A ordenação primária
 * deve ser ascendente pelo id do cliente e a secundária deve ser descendente
 * pelo valor pago.
*/

SELECT
    *
FROM payment
WHERE (customer_id = 322 OR customer_id = 346 OR customer_id = 354) 
        AND (amount <= 2 OR amount > 10)
ORDER BY customer_id, amount DESC

--
-- Responder quantos pagamentos com valor entre 1.99$ e 3.99$ foram feitos nos
-- dias 26 e 27 de janeiro de 2020 na GreenCycles. 
--

SELECT
    count(*)
FROM payment
WHERE (payment_date BETWEEN '2020-01-26' AND '2020-01-27 23:59') 
	AND (amount BETWEEN 1.99 AND 3.99)

--
-- Listar os pagamentos de valor 4.99$, 7.99$ e 9.99$ realizados no mês de
-- janeiro de 2020 pelos clientes de customer_id: 12, 25, 67, 93, 124, 234.
--

SELECT
    count(*)
FROM payment
WHERE customer_id IN(12, 25, 67, 93, 124, 234) AND amount IN(4.99, 7.99, 9.99) 
	AND payment_date BETWEEN '2020-01-01' AND '2020-01-31 23:59'

--
-- Responder quantos filmes existem com a palavra 'Documentary' na descrição.
--

SELECT
    count(*)
FROM film
WHERE description LIKE '%Documentary%'

--
-- Responder quantos clientes do GreenCycles possuem um nome de 3 letras e
-- encerram o sobrenome com a letra 'X' ou 'Y'.
--

SELECT
    count(*)
FROM customer
WHERE first_name LIKE '___' AND (last_name LIKE '%X' OR last_name LIKE '%Y')

--
-- Responder quantos filmes existem com a palavra 'Saga' na descrição e que
-- o título começa com a letra 'A' ou termina com a letra 'R'. Além disso,
-- usar o alias 'number-of-movies'.

SELECT
    count(*) AS number_of_movies
FROM film
WHERE description LIKE '%Saga%' AND (title LIKE 'A%' OR title LIKE '%R')

--
-- Criar uma lista com todos os clientes que tem 'ER' no nome e a letra 'A' na
-- segunda letra. A ordenação deve ser feita de forma descendente.
--

SELECT 
    *
FROM customer
WHERE first_name LIKE '_A%' AND first_name LIKE '%ER%'
ORDER BY last_name DESC

--
-- Responder quantos pagamentos foram realizados no valor de 0$ ou entre 3.99$
-- e 7.99$ no dia 01 de maio de 2020.
--

SELECT 
    count(*)
FROM payment
WHERE payment_date BETWEEN '2020-05-01' AND '2020-05-02' 
	AND (amount = 0 OR amount BETWEEN 3.99 AND 7.99)