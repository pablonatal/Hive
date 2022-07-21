-- =======================================================================================
-- DATE FUNCTIONS IN HIVE
-- Date data types do not exist in Hive. In fact the dates are treated as strings in Hive. The date functions are listed below.
-- =======================================================================================
 
UNIX_TIMESTAMP()

This function returns the number of seconds from the Unix epoch (1970-01-01 00:00:00 UTC) using the default time zone.

UNIX_TIMESTAMP( string date )

This function converts the date in format 'yyyy-MM-dd HH:mm:ss' into Unix timestamp. This will return the number of seconds between the specified date and the Unix epoch. If it fails, then it returns 0.
Example: UNIX_TIMESTAMP('2000-01-01 00:00:00') returns 946713600

UNIX_TIMESTAMP( string date, string pattern )

This function converts the date to the specified date format and returns the number of seconds between the specified date and Unix epoch. If it fails, then it returns 0.
Example: UNIX_TIMESTAMP('2000-01-01 10:20:30','yyyy-MM-dd') returns 946713600

FROM_UNIXTIME( bigint number_of_seconds  [, string format] )

The FROM_UNIX function converts the specified number of seconds from Unix epoch and returns the date in the format 'yyyy-MM-dd HH:mm:ss'.
Example: FROM_UNIXTIME( UNIX_TIMESTAMP() ) returns the current date including the time. This is equivalent to the SYSDATE in oracle.

TO_DATE( string timestamp )

The TO_DATE function returns the date part of the timestamp in the format 'yyyy-MM-dd'.
Example: TO_DATE('2000-01-01 10:20:30') returns '2000-01-01'

YEAR( string date )

The YEAR function returns the year part of the date.
Example: YEAR('2000-01-01 10:20:30') returns 2000

MONTH( string date ) 

The MONTH function returns the month part of the date.
Example: YEAR('2000-03-01 10:20:30') returns 3

DAY( string date ), DAYOFMONTH( date )

The DAY or DAYOFMONTH function returns the day part of the date.
Example: DAY('2000-03-01 10:20:30') returns 1

HOUR( string date )

The HOUR function returns the hour part of the date.
Example: HOUR('2000-03-01 10:20:30') returns 10

MINUTE( string date )

The MINUTE function returns the minute part of the timestamp.
Example: MINUTE('2000-03-01 10:20:30') returns 20

SECOND( string date ) 

The SECOND function returns the second part of the timestamp.
Example: SECOND('2000-03-01 10:20:30') returns 30

WEEKOFYEAR( string date )

The WEEKOFYEAR function returns the week number of the date.
Example: WEEKOFYEAR('2000-03-01 10:20:30') returns 9

DATEDIFF( string date1, string date2 )

The DATEDIFF function returns the number of days between the two given dates.
Example: DATEDIFF('2000-03-01', '2000-01-10')  returns 51

DATE_ADD( string date, int days ) 

The DATE_ADD function adds the number of days to the specified date
Example: DATE_ADD('2000-03-01', 5) returns '2000-03-06' 

DATE_SUB( string date, int days )

The DATE_SUB function subtracts the number of days to the specified date
Example: DATE_SUB('2000-03-01', 5) returns ‘2000-02-25’


