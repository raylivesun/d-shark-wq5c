module name.coffee;

import std.stdio;
import std.array;
import std.string;

class Person {
    string name;
    int age;
 
}

class Student {
    string grade;

}

class Teacher {
    string subject;

    void addGrade(int grade) {
        this.grades ~= grade;
    }

    @property
    int[] grades;
}

class School {
    string name;
    Person[] staff;
    Student[] students;

    void addStaffMember(Person person) {
        this.staff ~= person;
    }

    void addStudent(Student student) {
        this.students ~= student;
    }


    @property
    Person[] teachers;
}

void main() {
 writeln("coffee");
}
