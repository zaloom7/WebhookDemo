@RestResource(urlMapping='/api/Webhooks/pushDetailsdemo/*')
global with sharing class WebhookDemo {
	@HttpPost
    global static void handleNotification(){
        try{
            RestRequest request = RestContext.request;
            RestResponse response = RestContext.response;
            const token = process.env.WHATSAPP_TOKEN;
            const request = require('request'),
            express = require('express'),
            body_parser = require('body-parser'),
            app = express().use(body_parser.json()); // creates express http server

// Sets server port and logs message on success
app.listen(process.env.PORT || 1337);
List<String> received_updates = new List<String>();
  res.send('<pre>' + JSON.stringify(received_updates, null, 2) + '</pre>');

// Accepts POST requests at /webhook endpoint
Http http = new Http();
        HttpRequest req = new HttpRequest();

  // Check the Incoming webhook message
  console.log(JSON.stringify(req.body, null, 2));
 received_updates.unshift(req.body);
  // info on WhatsApp text message payload: https://developers.facebook.com/docs/whatsapp/cloud-api/webhooks/payload-examples#text-messages
 if (req.body.object) {
    if (
      req.body.entry &&
      req.body.entry[0].changes &&
      req.body.entry[0].changes[0] &&
      req.body.entry[0].changes[0].value.messages &&
      req.body.entry[0].changes[0].value.messages[0]
    ) {
      let phone_number_id = req.body.entry[0].changes[0].value.metadata.phone_number_id;
      let from_id = wObj.entry[0].changes[0].value.contacts[0].wa_id; // extract the phone number from the webhook payload
      let msg_body = req.body.entry[0].changes[0].value.messages[0].text.body; // extract the message text from the webhook payload
      
        req.setEndpoint('https://graph.facebook.com/v13.0/108011801946097/messages');
        req.setHeader('Content-Type', 'application/json');
		req.setMethod('POST');
        String body = '{"messaging_product": "whatsapp","to": "'+whatsappNo+'","text": {"body": "'+message+'"}}';
        req.setBody(body);
        String apiToken = 'EAAKqVA2lWNQBACDyCZCaPVgpPk8ddjXTZAwCZA52ZAUKSUGleiVP2LiYHqUHnugwL4ZCmKz75O5FT9Alhp5LhpL2TXMZBxOpBQZB5IcnUZAYkJSy4XVuviSlOueIlBkJdgIoKDymZAEm9EvN7v4GcRtbqpFrON6zMi7PvJZCzr5jgq73SqbicynbOgBZBmHKVwkjoKkZC1xH9KRN1gZDZD';
        req.setHeader('Authorization', 'Bearer ' +apiToken);
        HttpResponse response = http.send(req);
  } else {
    // Return a '404 Not Found' if event is not from a WhatsApp API
    res.sendStatus(404);
  }
}
}
        catch(Exception e){
            System.debug('Exception Happened:' +e.getMessage());
        }
      }
    }    

