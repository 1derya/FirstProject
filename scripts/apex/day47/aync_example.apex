// System.debug('Drink Coffee'); 
// System.debug('Clean up');

// AsyncUtil.boilWater();

// System.debug('Chop the onion');
// // System.debug('Sit back and relax');
// // System.debug('Continue to cook'); 


//Turn off Lead Trigger for now
// have some data to work on
//to simulate large data volume situation
//prepare the data, insert 1000 Leads

// List<Lead> myLeads = Utils.getLeads('Jon Snow', 'NightWatch inc', true, 1000);
// System.debug('myLeads.size value is : ' + myLeads.size());

// Gather All Data (start)
// Provide Logic for each Batch (execute)
// Do something when all finish (finish)

MyLeadBatchProcessor mlp = new MyLeadBatchProcessor(); 
// use executeBatch method of Database class 
// to provide instance of Batchable 
// (object from Class that implemented Database.Batchable) 
// and provide batch size, if not provided default is 200 
// so it can fill up the `records` variable of execute method with that many records per batch
// each batch get it's own governor limit 
Database.executeBatch(mlp, 100) ;




//String msg = 




