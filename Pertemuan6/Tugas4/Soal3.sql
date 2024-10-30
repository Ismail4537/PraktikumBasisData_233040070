Select a.ProjectName, b.DepartementName
from Projects as a
right join Departements as b on a.departementID = b.departementID