//<!-- Define the record -->
Customer_Interaction__b bo = new Customer_Interaction__b();
bo.Account__c = '001R000000302D3';
bo.Game_Platform__c = 'PC';
bo.Play_Date__c =  DateTime.valueOfGmt('2015-01-01 23:01:01');
bo.In_Game_Purchase__c = 'A12569';
bo.Level_Achieved__c = '41';
bo.Lives_This_Game__c = '3';
bo.Score_This_Game__c = '5500';
bo.Play_Duration__c = 25;

//<!-- Insert the record, which creates a new record -->
database.insertImmediate(bo);

//<!-- Modify a field in the index -->
//bo.Game_Platform__c = 'PC';

//<!-- Insert the record, creating a new record because the primary key has changed -->
database.insertImmediate(bo);

//<!-- Modify a field not included in the index -->
//bo.Level_Achieved__c = '42';

//<!-- Insert the record, which updates the second record because the index is the same -->
database.insertImmediate(bo);
