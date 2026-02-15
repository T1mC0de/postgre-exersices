SELECT DISTINCT rec.firstname, rec.surname
FROM cd.members AS mem JOIN cd.members rec ON rec.memid = mem.recommendedby
ORDER BY surname, firstname ASC;