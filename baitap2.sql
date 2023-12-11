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
  -- Bài 6
  SELECT
user_id
,DATE(Max(post_date))-DATE(Min(Post_date)) as days_between
FROM posts
where post_date >='2021-01-01' and post_date < '2022-01-01'
GROUP BY 1
having count(user_id) >= 2
-- bài 7
SELECT
card_name
,Max(issued_amount)-MIN(issued_amount) AS difference
FROM monthly_cards_issued
Group by 1
Order by difference
-- Bài 8
SELECT
manufacturer
,count(drug) AS drug_count
,ABS (sum(cogs-total_sales)) AS total_loss
FROM pharmacy_sales
where total_sales <cogs
Group by 1
order by total_loss DESC
-- đang rối não đoạn sao k phải lấy doanh thu -chi phí nếu lỗ ra số âm mà lại là chi phí trừ doanh thu ?
-- bài 9
select
id,
movie,
 description,
 rating
 from Cinema
where id%2=1 and description <> 'boring'
order by rating desc
-- Bài 10
select
teacher_id,
count(distinct subject_id) as cnt
from Teacher
group by 1
-- Bài 11
select
user_id
,count(follower_id) as followers_count
from Followers
Group by 1
order by user_id 
--Bài 12
select
class
from Courses
having count(class) >=5
