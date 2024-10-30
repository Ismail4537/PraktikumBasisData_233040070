Select a.Name, b.ProjectName
from Employee as a
inner join departements as c on a.departementId = c.departementID
left join Projects as b on c.departementID = b.departementID