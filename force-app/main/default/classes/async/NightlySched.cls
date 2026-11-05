public class NightlySched implements Schedulable {
    public void execute(SchedulableContext sc) {
        Database.executeBatch(new AccountBatch(), 200);
    }
}
// System.schedule('Nightly', '0 0 2 * * ?', new NightlySched());