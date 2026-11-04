trigger AccountLabTriggerSecond on SOBJECT (before insert) {
    System.debug('AccountLabTrigger2 fired, size=' + Trigger.new.size());
}