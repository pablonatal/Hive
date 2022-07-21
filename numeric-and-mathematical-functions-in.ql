Numeric and Mathematical Functions in Hive
The Numerical functions are listed below in alphabetical order. Use these functions in SQL queries. 
ABS( double n )

The ABS function returns the absolute value of a number.
hive> ABS(-100)

ACOS( double n )

The ACOS function returns the arc cosine of value n. This function returns Null if the value n is not in the range of -1<=n<=1.
hive> ACOS(0.5)

ASIN( double n )

The ASIN function returns the arc sin of value n. This function returns Null if the value n is not in the range of -1<=n<=1.
hive> ASIN(0.5)

BIN( bigint n )

The BIN function returns the number n in the binary format.
hive> BIN(100)

CEIL( double n ), CEILING( double n )

The CEILING or CEILING function returns the smallest integer greater than or equal to the decimal value n.
hive> CEIL(9.5)

CONV( bigint n, int from_base, int to_base )

The CONV function converts the given number n from one base to another base.
hive> CONV(100, 10,2)

COS( double n ) 

The COS function returns the cosine of the value n. Here n should be specified in radians.
hive> COS(180*3.1415926/180)

EXP( double n )

The EXP function returns e to the power of n. Where e is the base of natural logarithm and its value is 2.718.
hive> EXP(50)

FLOOR( double n )

The FLOOR function returns the largest integer less than or equal to the given value n.
hive> FLOOR(10.9)

HEX( bigint n)

This function converts the value n into hexadecimal format.
hive> HEX(16)
HEX( string n )

This function converts each character into hex representation format.
hive> HEX(‘ABC’)

LN( double n )

The LN function returns the natural log of a number.
hive> LN(123.45)

LOG( double base, double n )

The LOG function returns the base logarithm of the number n.
hive> LOG(3, 66)

LOG2( double n )

The LOG2 function returns the base-2 logarithm of the number n.
hive> LOG2(44)

LOG10( double n )

The LOG10 function returns the base-10 logarithm of the number n.
hive> LOG10(100)

NEGATIVE( int n ),  NEGATIVE( double n ) 

The NEGATIVE function returns –n
hive> NEGATIVE(10)

PMOD( int m, int n ), PMOD( double m, double n ) 

The PMOD function returns the positive modulus of a number.
hive> PMOD(3,2)

POSITIVE( int n ), POSITIVE( double n )

The POSITIVE function returns n
hive> POSITIVE(-10)

POW( double m, double n ), POWER( double m, double n )

The POW or POWER function returns m value raised to the n power.
hive> POW(10,2)

RAND( [int seed] )

The RAND function returns a random number. If you specify the seed value, the generated random number will become deterministic.
hive> RAND( )

ROUND( double value [, int n] )

The ROUND function returns the value rounded to n integer places.
hive> ROUND(123.456,2)

SIN( double n ) 

The SIN function returns the sin of a number. Here n should be specified in radians.
hive> SIN(2)

SQRT( double n )

The SQRT function returns the square root of the number
hive> SQRT(4)

UNHEX( string n )

The UNHEX function is the inverse of HEX function. It converts the specified string to the number format.
hive> UNHEX(‘AB’)