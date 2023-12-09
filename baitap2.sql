-- bài 1
select
distinct city
from STATION
where
id%2=0
-- bài 2
select
count(city) - count(distinct city)
from Station
-- Bài 4
SELECT
round(CAST(sum(item_count*order_occurrences)/sum(order_occurrences) AS DECIMAL),1) AS avg_item
FROM items_per_order
-- Bài 5
SELECT
candidate_id
FROM candidates
where skill IN('Python', 'Tableau', 'PostgreSQL')
Group by 1
having count(candidate_id) =3
-- bài 7
SELECT
card_name
,Max(issued_amount)-MIN(issued_amount) AS difference
FROM monthly_cards_issued
Group by 1
Order by difference
