Select a.EmployeeName, b.ProjectName
from Employee as a
left join departements as c on a.departementId = c.departementID
right join Projects as b on c.departementID = b.departementID