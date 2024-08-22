SET autocommit=0;   --Turn off autocommit mode

/* SQL 
   Statements within an implicit transaction */ 

COMMIT RELEASE; --Commit implicit transaction and disconnect user session
