public with sharing class Nation {
    @AuraEnabled(cacheable=true)
    public static List<Account> getaccrec() {
        return [
            SELECT Id, Name
            FROM Account
            WITH SECURITY_ENFORCED
            LIMIT 10
        ];
    }
}