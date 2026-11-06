trigger AccountLabTriggerSecond on Account (before insert) {
    System.debug('AccountLabTrigger2 fired, size=' + Trigger.new.size());
}