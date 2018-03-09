# CRUD-Students
Simple Spring(MVC)/Hibernate/MySql/Maven web application
# Running the application
+ Create database in MySQL by script:
```
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `grade` int(11) NOT NULL,
  `speciality` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8
```
+ Obtain the project source files (`git clone` or download)
+ In `\src\main\webapp\WEB-INF\spring\appServlet servlet-context.xml` set your name of DB and password; modify other configuration if needed
```
<bean id="dataSource" class="org.apache.commons.dbcp.BasicDataSource"
          destroy-method="close">
        <property name="driverClassName" value="com.mysql.jdbc.Driver"/>
        <property name="url"
                  value="jdbc:mysql://localhost:3306/student_db"/>
        <property name="username" value="root"/>
        <property name="password" value="somepassword"/> 
    </bean>
```
+ In Command Prompt run `mvn package`
+ Deploy the WAR file to Tomcat
+ Go to http://localhost:8080/CRUDStudent
