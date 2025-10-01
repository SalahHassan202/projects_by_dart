// school management project

void main() {
  // object from ==> school
  School mySchool = School("Future School");

  // add teacher to school
  Teacher t1 = Teacher("Mr.Salah", 25, "Math");
  mySchool.addTeacher(t1);
  Teacher t2 = Teacher("Ms.Sara", 40, "English");
  mySchool.addTeacher(t2);
  Teacher t3 = Teacher("Mr.Ahmed", 20, "Logic");
  mySchool.addTeacher(t3);
  Teacher t4 = Teacher("Mr.Wael", 35, "Programming");
  mySchool.addTeacher(t4);
  Teacher t5 = Teacher("Ms.Layla", 30, "Arabic");
  mySchool.addTeacher(t5);
  print("======================================") ;
  // add student to school
  Student s1 = Student("Omar", 18, 1010, "10th Grade");
  mySchool.addStudent(s1);
  Student s2 = Student("salah", 14, 1011, "9th Grade");
  mySchool.addStudent(s2);
  Student s3 = Student("samia", 13, 1012, "12th Grade");
  mySchool.addStudent(s3);
  Student s4 = Student("hatem", 11, 1013, "15th Grade");
  mySchool.addStudent(s4);
  Student s5 = Student("fatma", 10, 1014, "14th Grade");
  mySchool.addStudent(s5);
  Student s6 = Student("nour", 16, 1015, "17th Grade");
  mySchool.addStudent(s6);
  Student s7 = Student("soaad", 20, 1016, "12th Grade");
  mySchool.addStudent(s7);
  Student s8 = Student("mariam", 17, 1017, "13th Grade");
  mySchool.addStudent(s8);
  Student s9 = Student("hanan", 15, 1018, "15th Grade");
  mySchool.addStudent(s9);
  Student s10 = Student("rawan", 14, 1019, "16th Grade");
  mySchool.addStudent(s10);
 print("======================================") ;
  // put teachers on the courses
  Course c1 = Course("Arabic", t1);
  mySchool.addCourse(c1);
  Course c2 = Course("Logic", t2);
  mySchool.addCourse(c2);
  Course c3 = Course("Programming", t3);
  mySchool.addCourse(c3);
  Course c4 = Course("English", t4);
  mySchool.addCourse(c4);
  Course c5 = Course("Math", t5);
  mySchool.addCourse(c5);
 print("======================================") ;
  // put students in the courses
  c1.addStudent(s1);
  c2.addStudent(s2);
  c4.addStudent(s3);
  c2.addStudent(s4);
  c4.addStudent(s5);
  c3.addStudent(s6);
  c1.addStudent(s7);
  c5.addStudent(s8);
  c3.addStudent(s9);
  c5.addStudent(s10);
 print("======================================") ;
  // print information
  mySchool.displaySchoolInfo();
  print("======================================") ;
  c1.displayCourseInfo();
  print("======================================") ;
  c2.displayCourseInfo();
  print("======================================") ;
  c3.displayCourseInfo();
  print("======================================") ;
  c4.displayCourseInfo();
  print("======================================") ;
  c5.displayCourseInfo();
  print("======================================") ;
}

// Person class
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo() {
    print("Name is : $name , Age is : $age.");
  }
}

// Student class
class Student extends Person {
  int id;
  String grade;

  Student(String name, int age, this.id, this.grade) : super(name, age);

  @override
  void displayInfo() {
    print("Name is : $name , Age is : $age , ID is : $id , Grade is : $grade");
  }
}

// Teacher class
class Teacher extends Person {
  String subject;

  Teacher(String name, int age, this.subject) : super(name, age);

  @override
  void displayInfo() {
    print("Name is : $name , Age is : $age , Subject is : $subject ");
  }
}

// Course class
class Course {
  String title;
  Teacher teacher;
  List<Student> students = [];

  Course(this.title, this.teacher);

  void addStudent(Student student) {
    students.add(student);
    print("${student.name} enrolled in $title");
  }

  void displayCourseInfo() {
    print("Course : $title");
    print("Teacher : ${teacher.name}");
    print("Students : ");
    for (var s in students) {
      print("${s.name} , ${s.age}");
    }
  }
}

// School class
class School {
  String name;
  List<Student> students = [];
  List<Teacher> teachers = [];
  List<Course> courses = [];

  School(this.name);

  void addStudent(Student student) {
    students.add(student);
    print("Added Student : ${student.name} Successfully.");
  }

  void addTeacher(Teacher teacher) {
    teachers.add(teacher);
    print("Added Teacher : ${teacher.name} Successfully.");
  }

  void addCourse(Course course) {
    courses.add(course);
    print("Added Course : ${course.title} Successfully.");
  }

  void displaySchoolInfo() {
    print("School: $name");
    print("Students: ${students.length}");
    print("Teachers: ${teachers.length}");
    print("Courses: ${courses.length}");
  }
}
