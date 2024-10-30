Select a.Name
from Employee as a
Inner Join Employee as b on a.ManagerID = b.ManagerID;