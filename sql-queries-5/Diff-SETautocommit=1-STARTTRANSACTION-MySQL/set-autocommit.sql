SET autocommit=1; --Enables autocommit mode

/*These are equivalent*/
SET autocommit = DEFAULT;

SET autocommit='ON';
SET @@autocommit = 'ON';

SET SESSION autocommit = 'ON';
SET @@SESSION.autocommit = 'ON';

SET LOCAL autocommit = 'ON';
SET @@LOCAL.autocommit = 'ON';

SELECT @@autocommit; --Query autocommit mode
