# LinuxServer
This project contains a simple catalog web application and connection and
configuration info to the Linux server on which it runs. It fulfills the
requirements of "Project 5: Linux Server Configuration" of the Udacity Full Stack
Web Developer Nanodegree program.

- Web address: http://ec2-52-34-184-28.us-west-2.compute.amazonaws.com/
- IP address: 52.34.184.28
- SSH port: 2200

## Server Configuration
I modified the baseline Ubuntu server with the following configuration:

### General updates
 - Updated all currently installed packages
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

### Database functionality
- Installed PostgreSQL
  - Verified that remote postgresql connections are blocked
- Created a new user "catalog" with limited permission to the catalog database (read, write, update tables only) 
- Created a new database "catalog" and seeded it with starter data
- Granted all permissions on catalog db tables to user "catalog"
- Granted usage on all sequences to catalog

## Resources
