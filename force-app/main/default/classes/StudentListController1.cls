public with sharing class StudentListController1 {
    public String student{get;set;}
    public List<String> studentList{get;set;}
    public StudentListController1(){
        studentList=new list<string>();
        studentList.add('a');
        studentList.add('b');
         student='abc';
    }
    public void fetchstudent(){
        studentList.add('c');
        student='pqr';
        
    }
}