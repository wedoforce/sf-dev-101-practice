// Collection variable types

System.debug('Lists');
List<Double> stockPrices = new List<Double>();
Double salesforceStockPriceChangeJan = 1.2;
Double salesforceStockPriceChangeFeb = 4.3;
Double salesforceStockPriceChangeMar = -3.7;
Double salesforceStockPriceChangeApr = 3.44;
stockPrices.add(salesforceStockPriceChangeJan);
stockPrices.add(salesforceStockPriceChangeFeb);
stockPrices.add(salesforceStockPriceChangeMar);
stockPrices.add(salesforceStockPriceChangeApr);

System.debug('salesforce stock price changes: ' + stockPrices);
System.debug('total number of stock price changes: ' + stockPrices.size());

System.debug('');
System.debug('Sets');

List<String> twoValuesList = new List<String>();
twoValuesList.add('a');
twoValuesList.add('b');
twoValuesList.add('a');
twoValuesList.add('b');
twoValuesList.add('a');
twoValuesList.add('b');

System.debug('Two Values List size: ' + twoValuesList.size());

Set<String> twoValuesSet = new Set<String>();
twoValuesSet.add('a');
twoValuesSet.add('b');
twoValuesSet.add('a');
twoValuesSet.add('b');
twoValuesSet.add('a');
twoValuesSet.add('b');

System.debug('Two Values Set size: ' + twoValuesSet.size());

System.debug('');

System.debug('Maps');

Map<String, Double> ccyRate = new Map<String, Double>{
    'USD' => 75,
    'EUR' => 85,
    'GBP' => 100
};

ccyRate.put('CHF', 78);

System.debug('Currency Rates: ' + ccyRate);
System.debug('Currency Rates for JPY: ' + ccyRate.get('JPY'));
System.debug('Currency Rates for USD: ' + ccyRate.get('USD'));
System.debug('Currency Rates for EUR/USD: ' + ccyRate.get('EUR') / ccyRate.get('USD'));