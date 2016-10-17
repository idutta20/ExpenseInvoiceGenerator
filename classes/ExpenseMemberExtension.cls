public class ExpenseMemberExtension {

    public Expense__c expense{get;set;}
    public List<ExpenseOfMember__c> expenseMember{get;set;}

    public ExpenseMemberExtension(ApexPages.StandardController controller) {
        expense = (Expense__c)controller.getRecord();
        expenseMember = getExpeseAndMembers();
    }
    
    public List<ExpenseOfMember__c> getExpeseAndMembers(){
        return [Select AmountOfContribution__c,MemberId__r.FirstName__c from ExpenseOfMember__c where   ExpenseId__c =: expense.Id];
    }

}