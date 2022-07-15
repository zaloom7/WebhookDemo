@RestResource(urlMapping='/api/Webhooks/pushDetailsdemo/*')
global with sharing class webhookDemo {
	@HttpPost
    global static void handleNotification(){
        try{
            RestRequest request = RestContext.request;
            RestResponse response = RestContext.response;
        }
        catch(Exception e){
            System.debug('Exception Happened:' +e.getMessage());
        }
    }
}
