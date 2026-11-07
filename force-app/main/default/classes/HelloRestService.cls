@RestResource(urlMapping='/Hello')
global with sharing class HelloRestService {

    @HttpGet
    global static String sayHello() {
        String name = RestContext.request.params.get('name');
        if (String.isBlank(name)) {
            name = 'World';
        }
        return 'Hello, ' + name;
    }

    @HttpPost
    global static void createEcho() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        res.statusCode = 200;
        res.addHeader('Content-Type', 'application/json');
        String body = req.requestBody != null ? req.requestBody.toString() : '';
        res.responseBody = Blob.valueOf(
            JSON.serialize(new Map<String, Object>{
                'received' => body,
                'ok' => true
            })
        );
    }
}