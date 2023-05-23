// Apex Utility class called JSON has lots of methods 
// to turn JSON into Apex Type  (De-serialization)
// or to turn Apex Type into JSON (serialization)

// String reqBody = '{"name":"Jon Snow","gender":"Male","phone":1234567890}' ;

//Map<String, Object> myBodyMap = new Map<String, Object>{'name'=>'Jon Snow',
                                                        //'gender'=>'Male',
                                                        //'phone'=>1234567890};
Map<String,Object> myBodyMap = new Map<String,Object>();
myBodyMap.put('name', 'Jon Snow');
myBodyMap.put('gender', 'Male');
myBodyMap.put('phone', 1234567890);
String reqBody = JSON.serialize(myBodyMap)

Http h = new Http(); 

HttpRequest req = new HttpRequest();
req.setEndpoint(url) ; 
req.setMethod('POST'); 
req.setHeader('Content-Type', 'application/json');
req.setBody(reqBody); 

HttpResponse res = h.send(req); 
System.debug('res.getStatusCode() value is : ' + res.getStatusCode());
System.debug('res.getBody() value is : ' + res.getBody());

// System.debug('myBodyMap value is : ' + myBodyMap);

// //Turn this Map object into Json String so we can pass as body to the POST request if we want to
// //String jsonStr =JSON.serialize(myBodyMap);
// System.debug('jsonStr value is : ' + jsonStr); 
 


