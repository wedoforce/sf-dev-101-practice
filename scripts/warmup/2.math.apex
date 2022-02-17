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

System.debug('Integers division of ' + xI + ' and ' + yI + ' is : ' + yI / xI);
System.debug('Doubles division of ' + xD + ' and ' + yD + ' is : ' + yD / xD);
System.debug('What if Integers division multipled by a Double(1.0D)? : ' + 1.0D * yI / xI);

Decimal xDD = 3, yDD = 10;
System.debug('Decimal division of ' + xDD + ' and ' + yDD + ' is : ' + yDD / xDD);

System.debug('Random: ' + Math.random());
System.debug('Max(3, 9): ' + Math.max(3, 9));
System.debug('Min(-3, -9): ' + Math.min(-3, -9));
System.debug('Pi: ' + Math.PI);
System.debug('e: ' + Math.E);

System.debug('\n\nThink about:');
System.debug('1)If business problem requires precise calculations, which type of variable I would chose?');
System.debug('2)Does Salesforce provide anything for Apex Developers to address the following problem:');
System.debug('\tneed to compare 2 numbers and pick up the biggest one');
System.debug('3)What is the easiest way to understand if a number is positive or negative?');
System.debug('4)What happens if you try to divide by an Integer variable with value 0?');
System.debug('\tDouble, Decimal');