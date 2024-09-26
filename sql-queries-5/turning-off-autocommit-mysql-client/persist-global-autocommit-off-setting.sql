/*Use one of these to turn off global autocommit mode across server restarts in addition to for subsequent client sessions*/
SET PERSIST autocommit = 'OFF';
SET @@PERSIST.autocommit = 0;

/*Use one of these to turn off global autocommit mode across server restarts only*/
SET PERSIST_ONLY autocommit = 'OFF';
SET @@PERSIST_ONLY.autocommit = 0;
