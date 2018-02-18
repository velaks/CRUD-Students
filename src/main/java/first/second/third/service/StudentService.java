package first.second.third.service;

import java.util.List;

import first.second.third.model.Student;

public interface StudentService {
	
	public void addStudent(Student student);
	
	public void updateStudent(Student student);
	
	public void deleteStudent(int id);
	
	public Student getStudent(int id);
	
	public List<Student> listStudents();
}
