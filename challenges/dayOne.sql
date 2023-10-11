--
-- Selecionar o nome, o sobrenome e o e-mail dos clientes da GreenCycles.
--

SELECT
    first_name,
    last_name,
    email
FROM customer

--
-- Exibir o sobrenome seguido do nome. A ordenação deve ser descendente tanto
-- para o sobrenome quanto para o nome (caso duas ou mais pessoas tenham o
-- mesmo sobrenome).
--

SELECT
    first_name,
    last_name,
    email
FROM customer
ORDER BY last_name DESC, first_name DESC

--
-- Exibir os valores pagos distintos por meio de ordenação descendente.
--

SELECT DISTINCT
    amount
FROM payment
ORDER BY amount DESC

--
-- Exibir os diferentes distritos de onde vieram os clientes da GreenCycles.
--

SELECT DISTINCT
    district
FROM address
ORDER BY district

--
-- Obter a data do último aluguel pago da GreenCycles.
--

SELECT
    rental_date
FROM rental
ORDER BY rental_date DESC
LIMIT 1

--
-- Responder quantos filmes a empresa possui?
--

SELECT DISTINCT
    COUNT(*)
FROM film

--
-- Responder a quantidade de sobrenomes distintos existentes na lista de 
-- clientes da GreenCycles.
--

SELECT DISTINCT
    COUNT(last_name)
FROM customer