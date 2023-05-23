public class TaskAfterAccountUpdate implements Queueable{
    

    public void execute(QueueableContext context) {

       System.debug('Things that I need to do right '+ 
                   +'after Account Update Aysnc Code') ; 


    }


}

/**
Callout means making a call to an external Web service or sending 
an HTTP request from Apex code and then receiving the response. 
REST callouts are based on HTTP, Each callout request is associated 
with an HTTP method and an endpoint. Apex provides integration with 
Web services that utilize SOAP and WSDL, or HTTP services 
(RESTful services). You are gonna learn it in coming lessons
 */