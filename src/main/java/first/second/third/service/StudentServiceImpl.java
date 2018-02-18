package first.second.third.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import first.second.third.dao.StudentDAO;
import first.second.third.model.Student;

@Service
public class StudentServiceImpl implements StudentService {
	
	private StudentDAO studentDAO;

	public void setStudentDAO(StudentDAO studentDAO) {
		this.studentDAO = studentDAO;
	}

	@Override
	@Transactional
	public void addStudent(Student student) {
		studentDAO.addStudent(student);

	}

	@Override
	@Transactional
	public void updateStudent(Student student) {
		studentDAO.updateStudent(student);

	}

	@Override
	@Transactional
	public void deleteStudent(int id) {
		studentDAO.deleteStudent(id);

	}

	@Override
	@Transactional
	public Student getStudent(int id) {

		return studentDAO.getStudent(id);
	}

	@Override
	@Transactional
	public List<Student> listStudents() {
		
		return studentDAO.listStudents();
	}

}
