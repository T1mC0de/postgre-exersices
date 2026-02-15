select bks.starttime as start, fac.name as name
from cd.bookings as bks join cd.facilities as fac on bks.facid = fac.facid
where fac.name like '%Tennis Court%' and date(starttime) = '2012-09-21'
group by start, name
order by start ASC;