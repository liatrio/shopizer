Shopizer (for java 1.8 +)
-------------------

Ignite Lab Documenation
-------------------

[Official Documentation](http://shopizer-ecommerce.github.io/shopizer/#)

The root of this project contains 6 directories:

`sm-admin` describes the admin section of the site, viewable at `/admin`.

The `sm-shop` repositories describe the webapp itself, in addition to
controllers for different services of the site.

The `sm-core` repositories describe the functions of the core services of the
application.

According to official documentation
this application can run on any Java servlet container or JEE application
server, including IBM Websphere application server.

Possible services that are candidates for porting to microservices may be:

- Admin
- Shopping Cart
- User

Get the code:
-------------------
Clone the repository:

  $ git clone git://github.com/liatrio/shopizer.git

To build the application:

Note: You need to be running Java 1.8 in order to correctly build the application
-------------------
From the command line with Maven installed:

  $ cd shopizer
  $ mvn clean install

Run the application from Tomcat
-------------------
Copy sm-shop/target/ROOT.war to Tomcat or any other
application server deployment directory.

Increase heap space to 1024 m

### Heap space configuration in Tomcat:


If you are using Tomcat, edit catalina.bat for windows users or
catalina.sh for linux / Mac users

  in Windows
  set JAVA_OPTS="-Xms1024m -Xmx1024m -XX:MaxPermSize=256m"

  in Linux / Mac
  export JAVA_OPTS="-Xms1024m -Xmx1024m -XX:MaxPermSize=256m"

Run the application from Spring boot
-------------------

  $ cd sm-shop
  $ mvn spring-boot:run

### Access the application:
-------------------

Access the deployed web application at: http://localhost:8080/

Acces the admin section at: http://localhost:8080/admin

username : admin

password : password

The above instructions configure and run Shopizer with default settings.
Consult the offical documentation for more configuration settings.

