package first.second.third.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import first.second.third.model.Student;

@Repository
public class StudentDAOImpl implements StudentDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(StudentDAO.class);
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void addStudent(Student student) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(student);
		logger.info("Student added");
	}

	@Override
	public void updateStudent(Student student) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(student);
		logger.info("Student updated");
	}

	@Override
	public void deleteStudent(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Student student = (Student) session.get(Student.class, id);
		
		if(student!=null) {
			session.delete(student);
			logger.info("Student deleted");
		}

	}

	@Override
	public Student getStudent(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Student student = (Student) session.get(Student.class, id);
		
		return student;
	}

	
	@Override
	@SuppressWarnings("unchecked")
	public List<Student> listStudents() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Student> listStudent = session.createQuery("from Student").list();
		
		for(Student student : listStudent) {
			logger.info("Student list: " + student);
		}
		
		return listStudent;
	}

}
