//loops
List<Double> stockPrices = new List<Double>();
Double salesforceStockPriceChangeJan = 1.2;
Double salesforceStockPriceChangeFeb = 4.3;
Double salesforceStockPriceChangeMar = -3.7;
Double salesforceStockPriceChangeApr = 3.44;
stockPrices.add(salesforceStockPriceChangeJan);
stockPrices.add(salesforceStockPriceChangeFeb);
stockPrices.add(salesforceStockPriceChangeMar);
stockPrices.add(salesforceStockPriceChangeApr);

System.debug('Loop over a collection');
System.debug('=================');

for(Double stockPrice: stockPrices) {
    System.debug('salesforce stock price change: ' + stockPrice);
}

System.debug('');

System.debug('Loop via index and exit criteria');
System.debug('=================');
for(Integer i = 0; i < stockPrices.size() && stockPrices[i] > 0; i++) {
    System.debug('stock price change: ' + stockPrices[i]);    
}

System.debug('');
System.debug('While loop via index and controlling break');
System.debug('=================');

Integer j = 0;
while(j < stockPrices.size()) {
    System.debug('stock price change: ' + stockPrices[j]);    
    if(stockPrices[j] < 0) {
        System.debug('stop buying');
        break;
    }
    j++;
}

System.debug('Map collection');
System.debug('=================');

Map<Integer, Integer> squaresForIntegers = new Map<Integer, Integer>();
for(Integer i = 0; i < 100; i++) {
    squaresForIntegers.put(i, i*i);
}
Integer random = (Integer) (Math.random() * squaresForIntegers.size());
System.debug('Square for random stored square ' + random + ' is: ' + squaresForIntegers.get(random));
