# JSP CRUD Application

This is a simple JSP-based CRUD (Create, Read, Update, Delete) application that allows users to manage laptops in a database. The project uses Java Server Pages (JSP) for the frontend and MySQL as the backend database to store laptop data.

## Prerequisites

Before running the project, ensure you have the following installed:

1. **Eclipse IDE for Java EE Developers**:
   - Download and install **Eclipse IDE for Java EE Developers** from [Eclipse Downloads](https://www.eclipse.org/downloads/).
   
2. **Eclipse Web Development Tools**:
   - After installing Eclipse, go to the **Eclipse Marketplace** (`Help -> Eclipse Marketplace`) and search for "Eclipse Web Developer Tools". Install it.

3. **Apache Tomcat 10.1.28** (or later):
   - Download and install **Apache Tomcat** from [Apache Tomcat Downloads](https://tomcat.apache.org/download-10.cgi).
   - After installation, configure Tomcat in Eclipse (`Window -> Preferences -> Server -> Runtime Environments`).

4. **MySQL Database**:
   - Install MySQL on your local machine and create a database for this project (e.g., `adv_db`).

5. **JDBC Driver**:
   - You will need the MySQL JDBC driver (`mysql-connector-java-x.x.x.jar`). Add this JAR file to your project under `WEB-INF/lib`.

## Project Setup

### 1. Create a Dynamic Web Project in Eclipse

- Open Eclipse IDE and select **File -> New -> Dynamic Web Project**.
- Name your project (e.g., `CRUD-JSP-Project`).
- Select **Apache Tomcat 10.1.28** as the runtime.
- Click **Finish** to create the project.

### 2. Configure the Project

- Add the MySQL JDBC JAR file (`mysql-connector-java-x.x.x.jar`) to the project:
  - Right-click the project in Eclipse.
  - Select **Properties** -> **Java Build Path** -> **Libraries** -> **Add External JARs**.
  - Select the `mysql-connector-java-x.x.x.jar` file and add it.

### 3. Database Setup

- Create a MySQL database called `adv_db`.
- Create the following table for storing laptop data:

```sql
CREATE TABLE laptops (
    pid INT PRIMARY KEY,
    pname VARCHAR(255),
    pcost INT,
    pimage VARCHAR(255)
);


