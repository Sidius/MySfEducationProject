public class DailyLeadProcessor implements Schedulable {
    public void execute(SchedulableContext sc) {
        List<Lead> leads = [
            SELECT Id, LeadSource FROM Lead WHERE LeadSource = null LIMIT 200
        ];

        for (Lead lead : leads) {
            lead.LeadSource = 'Dreamforce';
        }

        if (!leads.isEmpty()) {
            update leads;
        }
    }
}
// System.schedule('Nightly', '0 0 2 * * ?', new NightlySched());