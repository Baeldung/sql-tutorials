BACKUP DATABASE University 
TO DISK = 'C:\Backups\University_FULL.bak' 
WITH FORMAT, 
      INIT, 
      NAME = 'Full Backup Before Index Rebuild', 
      SKIP, 
      STATS = 10;
