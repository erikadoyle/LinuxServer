# LinuxServer
This project contains a simple catalog web application and connection and
configuration info to the Linux server on which it runs. It fulfills the
requirements of "Project 5: Linux Server Configuration" of the Udacity Full Stack
Web Developer Nanodegree program.

- Web address: http://ec2-52-34-184-28.us-west-2.compute.amazonaws.com/
- IP address: 52.34.184.28
- SSH port: 2200

## Server Configuration
I modified the baseline Ubuntu server with the following configuration.

### General updates
 - Updated all currently installed packages
 - Installed python-pip
 - Configured local timezone to UTC
 - Installed and configured Ubuntu time synchronization
  - Installed NTP
  - Configured NTP to use North America server pool

### Security measures
 - Added a user "grader"
  - With permissions to sudo
  - Generated a public key such that grader can SSH into the server
 - Removed permissions to log into server as root or only with password
 - Changed SSH port from 22 to 2200
 - Configured and enabled the Uncomplicated Firewall (UWF)
  - To only allow incoming connections for SSH (port 2200), HTTP (port 80) and NTP (port 123)
  - To allow all outgoing connections

### Web application functionality
- Installed Apache
  - Installed and enabled a web application handler (libapache2-mod-wsgi python-dev)
 - Installed git and cloned the https://github.com/erikadoyle/LinuxServer repository (with web application + database code)
 - Installed catalog app dependencies:
  - werkzeug==0.8.3
  - flask==0.9
  - Flask-Login==0.1.3
  - oauth2client
  - psycopg2
  - virtualenv
- Created a directory for the catalog Flask app (/var/www/CatalogApp/CatalogApp)
- Configured and enabled a new virtual host for the catalog app

### Database functionality
- Installed PostgreSQL
  - Verified that remote postgresql connections are blocked
- Created a new user "catalog" with limited permission to the catalog database (read, write, update tables only) 
- Created a new database "catalog" and seeded it with starter data
- Granted all permissions on catalog db tables to user "catalog"
- Granted usage on all sequences to catalog (for auto-generating serial primary keys)

## Resources
The following resources were used in project.
- Udacity Course: [Configuring Linux Web Servers](https://www.udacity.com/course/configuring-linux-web-servers--ud299)
- Udacity Forums: 
 - [Target WSGI script cannot be loaded. No such file](https://discussions.udacity.com/t/target-wsgi-script-cannot-be-loaded-no-such-file/44819) 
  - FSND alumni P5 resource lists:
   - [Markedly underwhelming and potentially wrong resource list for P5](https://discussions.udacity.com/t/markedly-underwhelming-and-potentially-wrong-resource-list-for-p5/8587)
   - [Project 5 Resources](https://discussions.udacity.com/t/project-5-resources/28343)
   - [P5 How I got through it](https://discussions.udacity.com/t/p5-how-i-got-through-it/15342/17)
- Digital Ocean Tutorials:
  - [How To Install and Use PostgreSQL on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-14-04)
  - [How To Deploy a Flask Application on an Ubuntu VPS](https://www.digitalocean.com/community/tutorials/how-to-deploy-a-flask-application-on-an-ubuntu-vps)
- Stack Overflow:
  - [Convert SQLITE SQL dump file to POSTGRESQL](http://stackoverflow.com/questions/4581727/convert-sqlite-sql-dump-file-to-postgresql)
  - [import sql dump into postgresql database](http://stackoverflow.com/questions/6842393/import-sql-dump-into-postgresql-database)
  - [Delete rows with foreign key in PostgreSQL Flask](http://stackoverflow.com/questions/28514025/delete-rows-with-foreign-key-in-postgresql-flask)
