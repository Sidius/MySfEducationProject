global with sharing class HelloSoapService {
    webservice static String sayHello(String name) {
        if (String.isBlank(name)) {
            name = 'World';
        }
        return 'Hello, ' + name;
    }
}