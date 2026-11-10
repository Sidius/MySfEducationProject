// Запуск каждые день в 12:05:00
DailyLeadProcessor p = new DailyLeadProcessor();
String cron = '0 5 12 * * ?';
System.schedule('Daily Lead Processor', cron, p);