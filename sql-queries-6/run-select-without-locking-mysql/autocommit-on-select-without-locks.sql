SET autocommit=ON; --Set autocommit on

SELECT * 
FROM Department; --Runs in a separate transaction without acquiring any locks

SELECT * 
FROM DEPARTMENT 
FOR UPDATE; --Runs in a separate transaction without acquiring any locks

SELECT * 
FROM DEPARTMENT 
FOR SHARE; --Runs in a separate transaction without acquiring any locks
