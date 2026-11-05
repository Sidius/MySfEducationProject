public with sharing class TodoQueueable {
    private Integer todoId;

    public TodoQueueable(Integer todoId) {
        this.todoId = todoId;
    }

    public void execute(QueueableContext ctx) {
        TodoDto todo = TodoCallout.fetchTodo(todoId);
        System.debug(todo.title);

        // DML после callout — ок
        // insert new Something__c(Name = todo.title);
    }
}