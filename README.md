Shopizer (for java 1.8 +)
-------------------
[![last_version](https://img.shields.io/badge/last_version-v2.5.0-blue.svg?style=flat)](https://github.com/shopizer-ecommerce/shopizer/tree/2.5.0)
[![Official site](https://img.shields.io/website-up-down-green-red/https/shields.io.svg?label=official%20site)](http://www.shopizer.com/)
[![Docker Pulls](https://img.shields.io/docker/pulls/shopizerecomm/shopizer.svg)](https://hub.docker.com/r/shopizerecomm/shopizer)
[![stackoverflow](https://img.shields.io/badge/shopizer-stackoverflow-orange.svg?style=flat)](http://stackoverflow.com/questions/tagged/shopizer)
-------------------

Java open source e-commerce software

- Shopping cart
- Catalogue
- Search
- Checkout
- Administration
- REST API

See the demo:
-------------------
http://demo.shopizer.com:8080


Get the code:
-------------------
Clone the repository:
     
	 $ git clone git://github.com/shopizer-ecommerce/shopizer.git

To build the application:

Note: You need to be running Java 1.8 in order to correctly build the application
-------------------	
From the command line with Maven installed:

	$ cd shopizer
	$ mvn clean install
if Maven is not installed, use maven wrapper
       
	$ mvmw clean install
	

Run the application from Tomcat 
-------------------
copy sm-shop/target/ROOT.war to tomcat or any other application server deployment dir

Increase heap space to 1024 m

### Heap space configuration in Tomcat:


If you are using Tomcat, edit catalina.bat for windows users or catalina.sh for linux / Mac users

	in Windows
	set JAVA_OPTS="-Xms1024m -Xmx1024m -XX:MaxPermSize=256m" 
	
	in Linux / Mac
	export JAVA_OPTS="-Xms1024m -Xmx1024m -XX:MaxPermSize=256m" 

Run the application from Spring boot 
-------------------

       $ cd sm-shop
       $ mvn spring-boot:run
if Maven is not installed, use maven wrapper
       
	   $ mvmw spring-boot:run

Run the application from Spring boot in eclipse
-------------------

Right click on com.salesmanager.shop.application.ShopApplication

run as Java Application

### Access the application:
-------------------

Access the deployed web application at: http://localhost:8080/

Acces the admin section at: http://localhost:8080/admin

username : admin

password : password

The instructions above will let you run the application with default settings and configurations.
Please read the instructions on how to connect to MySQL, configure an email server and configure other subsystems


### Documentation:
-------------------

Documentation available from the wiki <http://shopizer-ecommerce.github.io/shopizer/#>

ChatOps <https://shopizer.slack.com>  - Join our Slack channel https://shopizer-slackin.herokuapp.com/

More information is available on shopizer web site here <http://www.shopizer.com>

### Configuration:
-------------------

#### Database Configuration

Shopizer currently supports and has been tested with H2 and MySQL databases.

- Configure with H2 database

By default H2 files are saved into your application server runtime directory. To change the location where the files have to be saved, edit sm-shop/src/main/resources/database.properties and edit the line
```
db.jdbcUrl=jdbc\:h2\:file\:c:/SALESMANAGER;AUTOCOMMIT\=OFF;INIT\=CREATE SCHEMA IF NOT EXISTS SALESMANAGER
```

Make sure the file path is a valid existing directory. In this case the configuration file will be saved in c:\ 

- Configure with MySQL

Log to your MySQL as root and create schema SALESMANAGER

```
mysql>CREATE DATABASE SALESMANAGER;
mysql>GRANT USAGE, SELECT ON *.* TO testuser@localhost IDENTIFIED BY 'password' with grant option;
mysql>GRANT ALL ON SALESMANAGER.* TO testuser@localhost;
mysql>FLUSH PRIVILEGES;
```

Edit sm-shop/src/main/resources/database.properties

```
db.jdbcUrl=jdbc:mysql://localhost:3306/SALESMANAGER?autoReconnect=true&useUnicode=true&characterEncoding=UTF-8
db.user=YOUR USERNAME
db.password=YOUR PASSWORD
db.driverClass=com.mysql.jdbc.Driver
hibernate.dialect=org.hibernate.dialect.MySQL5InnoDBDialect
db.preferredTestQuery=SELECT 1
db.schema=SALESMANAGER
hibernate.hbm2ddl.auto=update
```

Note: Database and table names are not case sensitive in Windows, and case sensitive in most varieties of Unix-Linux. Consequently MySQL which uses lower case schema and table names will not be able to see the schema and tables which are created upper case in Shopizer. If you get an exception of a table not being found and being displayed in lower case in the error message, you will have to specify this property in My.cnf. To resolve the issue set the lower_case_table_names to 1 in My.cnf configuration file

Edit My.cnf

```
lower_case_table_names=1
```

### Participation:
-------------------

If you have interest in giving feedback or for participating to Shopizer project in any way
Feel to use the contact form <http://www.shopizer.com/contact.html> and share your email address
so we can send an invite to our Slack channel

