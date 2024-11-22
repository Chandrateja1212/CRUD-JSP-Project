# JSP CRUD Application

This is a simple JSP-based CRUD (Create, Read, Update, Delete) application that allows users to manage laptops in a database. The project uses Java Server Pages (JSP) for the frontend and MySQL as the backend database to store laptop data.

## Prerequisites

Before running the project, ensure you have the following installed:

1. **Eclipse IDE for Java EE Developers**:
   * Download and install **Eclipse IDE for Java EE Developers** from Eclipse Downloads.

2. **Eclipse Web Development Tools**:
   * After installing Eclipse, go to the **Eclipse Marketplace** (`Help -> Eclipse Marketplace`) and search for "Eclipse Web Developer Tools". Install it.

3. **Apache Tomcat 10.1.28** (or later):
   * Download and install **Apache Tomcat** from Apache Tomcat Downloads.
   * After installation, configure Tomcat in Eclipse (`Window -> Preferences -> Server -> Runtime Environments`).

4. **MySQL Database**:
   * Install MySQL on your local machine and create a database for this project (e.g., `adv_db`).

5. **JDBC Driver**:
   * You will need the MySQL JDBC driver (`mysql-connector-java-x.x.x.jar`). Add this JAR file to your project under `WEB-INF/lib`.

## Project Setup

1. Create a Dynamic Web Project in Eclipse
   * Open Eclipse IDE and select **File -> New -> Dynamic Web Project**.
   * Name your project (e.g., `CRUD-JSP-Project`).
   * Select **Apache Tomcat 10.1.28** as the runtime.
   * Click **Finish** to create the project.

2. Configure the Project
   * Add the MySQL JDBC JAR file (`mysql-connector-java-x.x.x.jar`) to the project:
     * Right-click the project in Eclipse.
     * Select **Properties** -> **Java Build Path** -> **Libraries** -> **Add External JARs**.
     * Select the `mysql-connector-java-x.x.x.jar` file and add it.

3. Database Setup
   * Create a MySQL database called `adv_db`.
   * Create the following table for storing laptop data:
     ```sql
     CREATE TABLE laptops (
         pid INT PRIMARY KEY,
         pname VARCHAR(255),
         pcost INT,
         pimage VARCHAR(255)
     );
     ```

4. File Structure
   The project follows a standard Maven-like structure:
   ```
   CRUD-JSP-Project/
   ├── src/
   │   └── main/
   │       └── webapp/
   │           ├── WEB-INF/
   │           │   ├── lib/ (Contains JDBC JAR files)
   │           │   └── web.xml
   │           ├── add.jsp
   │           ├── edit.jsp
   │           ├── viewlaptops.jsp
   │           ├── delete.jsp
   │           └── insert.jsp
   └── pom.xml (if you are using Maven)
   ```

5. Web Configuration
   Configure your `web.xml` file under `WEB-INF/`:
   ```xml
   <web-app xmlns="http://java.sun.com/xml/ns/javaee"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://java.sun.com/xml/ns/javaee
            http://java.sun.com/xml/ns/javaee/web-app_4_0.xsd"
            version="4.0">
       <display-name>CRUD-JSP</display-name>
   </web-app>
   ```

6. Running the Application
   1. Start **Apache Tomcat** from Eclipse by clicking on the **Servers** tab and then **Start**.
   2. Deploy the project to Tomcat by right-clicking the project and selecting **Run As** -> **Run on Server**.
   3. Open the browser and visit `http://localhost:8080/CRUD-JSP-Project/`.

## Features

* **Add a Laptop**: Allows users to add laptop details like ID, name, cost, and image URL.
* **View Laptops**: Displays all the laptops stored in the database in a table.
* **Edit a Laptop**: Allows users to edit the details of an existing laptop.
* **Delete a Laptop**: Allows users to delete a laptop from the database.

## Files

* `viewlaptops.jsp`: Displays the list of all laptops from the database. Allows the user to edit or delete a laptop.
* `add.jsp`: Contains a form to add a new laptop to the database.
* `edit.jsp`: Allows the user to edit the details of a selected laptop.
* `insert.jsp`: Handles the insertion of a new laptop into the database.
* `delete.jsp`: Handles the deletion of a laptop from the database.

## Technologies Used

* **JSP (Java Server Pages)**: For the frontend views.
* **Servlets**: For controlling the flow of data and requests.
* **MySQL**: For storing laptop data.
* **JDBC**: For connecting to the MySQL database.

## License

This project is open-source and available under the MIT License. See the LICENSE file for more details.
