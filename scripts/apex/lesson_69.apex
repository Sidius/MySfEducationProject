// HttpRequest req = new HttpRequest();
// req.setEndpoint('https://api.example.com/data');
// req.setMethod('GET');
// HttpResponse res = new Http().send(req);

// List<TodoDto> list = (List<TodoDto>) JSON.deserialize(body, List<TodoDto>.class);

TodoDto t = TodoCallout.fetchTodo(1);
System.debug(t.id + ' ' + t.title + ' completed=' + t.completed);

// System.enqueueJob(new TodoQueueable(1)); // callout не в trigger напрямую

// ===========================================================================

// Упадёт Uncommitted work pending (если insert до callout):
// insert new Account(Name='X');
// TodoCallout.fetchTodo(1);

// Ок: callout first, or Queueable
// TodoDto t = TodoCallout.fetchTodo(1);
// System.debug(t.title);