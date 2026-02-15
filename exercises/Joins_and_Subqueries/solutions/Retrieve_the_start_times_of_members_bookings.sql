select starttime
from cd.bookings join cd.members using (memid)
where cd.members.firstname = 'David' AND cd.members.surname = 'Farrell'
