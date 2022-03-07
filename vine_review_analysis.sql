SELECT * INTO vote_count_20
FROM vine_table 
WHERE total_votes > 20;

SELECT * INTO vote_50_percent
FROM vote_count_20 
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;
 
SELECT * INTO vine_program_reviews 
FROM vote_50_percent 
WHERE vine = 'Y';

SELECT * INTO non_vine_program_reviews 
FROM vote_50_percent 
WHERE vine = 'N';




