@isTest

public class ExpenseTest {
 public testMethod static void myTest(){
      
        Expense__c expense = new Expense__c();
        expense.Amount__c=10000;
        expense.Event__c='party';
        insert expense;
        Member__c member = new Member__c();
        member.FirstName__c='abc';
        member.LastName__c='xyz';
        member.Email_Id__c='abc@abc.com';
        insert member;
        ExpenseOfMember__c expmem = new ExpenseOfMember__c();
        expmem.MemberId__c=member.Id;
        expmem.ExpenseId__c=expense.Id;
        expmem.AmountOfContribution__c=5000;
        insert expmem;
        ExpenseMemberExtension expEXT= new ExpenseMemberExtension(new ApexPages.StandardController(expense));
        
        List<ExpenseOfMember__c> ge = new List<ExpenseOfMember__c>();
        ge = expExt.getExpeseAndMembers();
        
}
}