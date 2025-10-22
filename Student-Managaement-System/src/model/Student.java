package model;
import java.io.Serializable;

public class Student implements Serializable {
    private int id;
    private String name;
    private int age;
    private String studentClass;
    private double marks;

    public Student(int id, String name, int age, String studentClass, double marks) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.studentClass = studentClass;
        this.marks = marks;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getStudentClass() {
        return studentClass;
    }

    public void setStudentClass(String studentClass) {
        this.studentClass = studentClass;
    }

    public double getMarks() {
        return marks;
    }

    public void setMarks(double marks) {
        this.marks = marks;
    }

    public String toString() {
        return id + " | " + name + " | " + age + " | " + studentClass + " | " + marks;
    }
}