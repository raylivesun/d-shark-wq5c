module items.date;

import std.stdio;
import std.array;
import std.string;
import std.conv;

enum DayOfWeek {
    Sunday,
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday
}

enum Month {
    January,
    February,
    March,
    April,
    May,
    June,
    July,
    August,
    September,
    October,
    November,
    December
}

struct Date {
    int year;
    Month month;
    int day;
 
}

unittest {
    Person p = Person("John Doe", 1980, 1, 1);
    assert(p.getAge() == 39);
    assert(p.getBirthDate() == Date(1980, Month.January, 1));
    assert(p.getBirthPlace() == "New York");
    assert(p.getFullName() == "John Doe");
    assert(p.getGender() == Gender.Male);
    assert(p.getMaritalStatus() == MaritalStatus.Single);
    assert(p.getOccupation() == "Software Engineer");
    assert(p.getPersonID() == "1234567890");
    assert(p.isAdult() == true);
    assert(p.isBirthday() == false);
    assert(p.isDeceased() == false);
    assert(p.isEmployee() == false);
    assert(p.isRetired() == false);
    assert(p.isStudent() == false);
    assert(p.isVeteran() == false);
}


