/*Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными
Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.*/
SELECT
    CASE
        WHEN quantity < 100 THEN 'Меньше 100'
        WHEN quantity >= 100 AND quantity <= 300 THEN '100-300'
        ELSE 'Больше 300'
    END AS segment,
    COUNT(*) AS count_of_sales
FROM sql_hometask2_sales
GROUP BY segment
LIMIT 1000;
