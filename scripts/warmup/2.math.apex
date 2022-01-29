// Math operations
System.debug('Math');
System.debug('=================');
Integer a = 2, b = 3;
Integer sum = a + b;
Integer product = a * b;

System.debug('The sum of ' + a + ' and ' + b + ' is: ' + sum);
System.debug('The product of ' + a + ' and ' + b + ' is: ' + product);

System.debug('');

Integer xI = 3, yI = 10;
Double xD = 3, yD = 10;

System.debug('Integers division: ' + yI / xI);
System.debug('Doubles division: ' + yD / xD);
System.debug('What if? : ' + 1.0D * yI / xI);

Decimal xDD = 3, yDD = 10;
System.debug('Decimal division: ' + yDD / xDD);

System.debug('Random: ' + Math.random());
System.debug('Max: ' + Math.max(3, 9));
System.debug('Min: ' + Math.min(-3, -9));
System.debug('Pi: ' + Math.PI);
System.debug('e: ' + Math.E);