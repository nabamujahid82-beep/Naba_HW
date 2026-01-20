1: Count how many students passed the exam.
A: select
distinct(result_status),
count(result_status)
from day_2_exam
where result_status = 'Pass'
group by result_status



Q2: Find the average score of all students who failed.select
 A: select
distinct(result_status),
avg(total_score)
from day_2_exam
where result_status = 'Fail'
group by 1


Q3: Get the highest score among all students.
A: select
MAX(total_score) AS highest_score
from day_2_exam


Q4: Get the lowest score among passed students.
A: select
 MIN(total_score) AS lowest_score
 from day_1_exam
 where result_status = 'Pass';


Q5: Sum the total marks of all students who scored above 40.
A: select
 SUM(total_score)
 from day_2_exam
 where total_score >40;

Q6: Count students by result status for those who scored 35 or more.
A: select
count(*)
from day_2_exam
where total_score >=35
group by result_status

Q7: Find average score grouped by result status for students with scores between 30 and 40.
A: select
AVG(total_score)
from day_2_exam
where total_score between 30 and 40
group by result_status;

Q8: Get maximum and minimum scores grouped by result status for students who scored less than 35.
A: select
MAX(total_score),
MIN(total_score)
from day_2_exam
where total_score <35
group by result_status;

Q9: Count students grouped by result status for those whose names start with 'A'.
A:select
count(*)
from day_2_exam
where student_name like 'A%'
group by result_status;

Q10: Sum total scores grouped by result status for students who scored exactly 35, 40, or 45.
A: select
SUM(total_score)
from day_2_exam
where total_score IN (35,40,45)
group by result_status;

Q11: Count students by each score value, ordered by score descending.
A: select
count(*)
from day_2_exam
group by total_score
order by total_score desc;


Q12: Show average score for each result status, ordered by average score.
A: select
avg(total_score) AS average_score
from day_2_exam
group by result_status
order by average_score;


Q13: Count how many students got each score, only for scores above 30, ordered by frequency.
A: select
SUM(total_score) AS total_score
from day_2_exam
group by result_status
order by total_score;


Q14: Get total marks sum for each result status, ordered by sum.
A: select
 SUM(total_score) AS total_score
 from day_2_exam
 group by result_status
 order by total_score;



Q15: Find minimum score for each result status, ordered by min score.
A:select
 MIN(total_score) AS min_score
 from day_2_exam
 group by result_status
 order by min_score;


Q16: For passed students only, show count, average, max and min scores grouped by whether score is above 40.
A:select
count(*),
AVG(total_score),
MAX(total_score),
MIN(total_score)
from day_2_exam
where result_status = 'Pass'
group by (total_score >40)

Q17: Count and average score for each result status, only for scores not equal to 35.
A:select
 count(*),
 AVG(total_score)
 from day_2_exam
 where total_score <> 35
 group by result_status;


Q18: Group students by score ranges (0-20, 21-30, 31-40, 41-50) and show count for each range.

Q19: For each result status, show count of students with scores greater than 30 and less than 40.
A: select
 count(*)
 from day_2_exam
 where total_score >30 AND total_score <40
 group by result_status

Q20: Group by first letter of student name and show count and average score for each lette




