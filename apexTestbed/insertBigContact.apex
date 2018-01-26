Big_Contact__b bc = new Big_Contact__b();
bc.Account__c = '0011N00001DPr2QQAT';
bc.First_Name__c = 'Bruce';
bc.Last_Name__c =  'Sterling';

//<!-- Insert the record, which creates a new record -->
database.insertImmediate(bc);