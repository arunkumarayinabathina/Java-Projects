package model;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

public class StudentRepository {
    private static final String FILE_NAME = "students.dat";

    // ! Load Students from file
    @SuppressWarnings("unchecked")
    public static List<Student> loadStudents() {
        List<Student> students = new ArrayList<>();
        try {
            ObjectInputStream ois = new ObjectInputStream(new FileInputStream(FILE_NAME));

            students = (List<Student>) ois.readObject();

            ois.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return students;
    }

    // ! Save students to file
    public static void saveStudents(List<Student> students) {
        try {
            ObjectOutputStream oos = new ObjectOutputStream(new FileOutputStream(FILE_NAME));

            oos.writeObject(students);

            oos.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // ! Add student
    public static void addStudent(Student s) {
        List<Student> students = loadStudents();
        students.add(s);
        saveStudents(students);
    }

    // ! Get all students
    public static List<Student> getAllStudents() {
        return loadStudents();
    }

    // ! Get student by ID
    public static Student getStudentById(int id) {

        // for (Student s : loadStudents()) {
        // if (s.getId() == id)
        // return s;
        // }
        // return null;

        return loadStudents().stream().filter(s -> s.getId() == id).findFirst().orElse(null);
    }

    // ! Update student
    public static void updateStudent(Student updaStudent) {
        List<Student> students = loadStudents();

        for (int i = 0; i < students.size(); i++) {
            if (students.get(i).getId() == updaStudent.getId()) {
                students.set(i, updaStudent);
                break;
            }
        }
        saveStudents(students);
    }

    public static void deleteStudent(int id) {
        List<Student> students = loadStudents();
        students.removeIf(s -> s.getId() == id);
        saveStudents(students);
    }
}
