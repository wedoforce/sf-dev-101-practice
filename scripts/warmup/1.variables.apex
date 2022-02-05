//Define variables
Boolean practiceStarted = true;
String practiceName = 'Apex Basics: Variables, Loops and Statements';
Integer practiceNumber = 50250;

//Print information during code execution
System.debug('Variables');
System.debug('=================');
System.debug('Practice "' + practiceName + '" has started?');
System.debug('Started: ' + practiceStarted);
System.debug('Practice Number: ' + 2 * practiceNumber);


System.debug('\n\nThink about:');
System.debug('1)How System.debug() could help me as an engineer?');
System.debug('2)What happens if I concatenate String type variable with a different type varabiel via \'+\'?');
System.debug('3)What happens if I concatenate String type variable with a different type varabiel via \'*\'?');


Decimal divideIntegers(Integer a, Integer b) {
    return a / b;
}

System.debug(divideIntegers(1, 3));