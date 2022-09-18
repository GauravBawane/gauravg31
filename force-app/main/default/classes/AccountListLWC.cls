public with sharing class AccountListLWC {
    @AuraEnabled(cacheable=true)
    public static List<Account> queryAccountsByEmployeesNumber(Integer numberOfEmployees)
    {
    return[SELECT Name  FROM Account WHERE NumberOfEmployees >=: numberofEmployees];
        }
    }
    
