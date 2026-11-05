public with sharing class TodoCallout {
    public static TodoDto fetchTodo(Integer todoId) {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://jsonplaceholder.typicode.com/todos/' + todoId);
        req.setMethod('GET');
        req.setTimeout(12000);

        HttpResponse res = new Http().send(req);
        if (res.getStatusCode() != 200) {
            throw new CalloutException('HTTP ' + res.getStatusCode() + ' ' + res.getBody());
        }
        return (TodoDto) JSON.deserialize(res.getBody(), TodoDto.class);
    }
}