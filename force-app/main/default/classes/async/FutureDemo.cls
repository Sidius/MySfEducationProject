public class FutureDemo {
    @future
    public static void doWork(Set<Id> accountIds) {
        // ...
    }
    @future(callout=true)
    public static void run(Set<Id> ids) {
        // callout / DML
    }
}