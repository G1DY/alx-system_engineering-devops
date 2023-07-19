<center><h1>MySQL</h1></center>
In this projet i learnt how to configure database servers using  master-slave model. I configured the two MySQL servers using primary-replica setup with a dummy database, and wrote a Bash script to automate generation of database backups.

---

<center><h2>Infrastructure Setup</h2></center>

![Screenshot](Screenshot%20from%202023-07-19%2018-29-05.png)

<center><h3>Project Tasks</h3></center>

| Tasks | Description |
| ----- | ----------- |
| 0. Install MySQL | Getting MySQL installed on both your web-01 and web-02 servers. |
| 1. Let us in! | create a user and password for both MySQL databases which will allow the checker access to them. |
| 2. If only you could see what I've seen with your eyes | setting up replication, you’ll need to have a database with at least one table and one row in your primary MySQL server (web-01) to replicate from. |
| 3. Quite an experience to live in fear, isn't it? | Before you get started with your primary-replica synchronization, you need one more thing in place. On your primary MySQL server (web-01), create a new user for the replica server. The name of the new user should be replica_user, with the host name set to %, and can have whatever password you’d like. replica_user must have the appropriate permissions to replicate your primary MySQL server. holberton_user will need SELECT privileges on the mysql.user table in order to check that replica_user was created with the correct permissions. |
| 4. Setup a Primary-Replica infrastructure using MySQL | Setup replication for the MySQL database named tyrell_corp |
| 5. MySQL backup | Write a Bash script that generates a MySQL dump and creates a compressed archive out of it. |

#### **[How to] Install mysql 5.7**
```
Copy the key here to your clipboard

https://dev.mysql.com/doc/refman/5.7/en/checking-gpg-signature.html

Save it in a file on your machine i.e. signature.key and then

sudo apt-key add signature.key
add the apt repo

sudo sh -c 'echo "deb http://repo.mysql.com/apt/ubuntu bionic mysql-5.7" >> /etc/apt/sources.list.d/mysql.list'
update apt

sudo apt-get update
now check your available versions:

vagrant@ubuntu-focal:/vagrant$ sudo apt-cache policy mysql-server
mysql-server:
  Installed: (none)
  Candidate: 8.0.27-0ubuntu0.20.04.1
  Version table:
     8.0.27-0ubuntu0.20.04.1 500
        500 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages
        500 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages
     8.0.19-0ubuntu5 500
        500 http://archive.ubuntu.com/ubuntu focal/main amd64 Packages
     5.7.37-1ubuntu18.04 500
        500 http://repo.mysql.com/apt/ubuntu bionic/mysql-5.7 amd64 Packages
Now install mysql 5.7

sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*
```

#### Resources
- [Database administration](https://intranet.alxswe.com/concepts/49)
- [Web stack debugging](https://intranet.alxswe.com/concepts/68)
- [How to Install mysql 5.7](https://intranet.alxswe.com/concepts/100002)
- [What is a primary-replica cluster](https://intranet.alxswe.com/rltoken/eojqG9FZbA6QVWN5P9cLzA)
- [MySQL primary replica setup](https://intranet.alxswe.com/rltoken/z2KVk2UKLMc0RvHMdJmYLg)
- [Build a robust database backup strategy](https://intranet.alxswe.com/rltoken/BharnxaLb-BDDYFywzME2Q)

#### Learning Objectives
```
What is the main role of a database
What is a database replica
What is the purpose of a database replica
Why database backups need to be stored in different physical locations
What operation should you regularly perform to make sure that your database backup strategy actually work
```

#### Requirements
```
Allowed editors: vi, vim, emacs
All your files will be interpreted on Ubuntu 16.04 LTS
All your files should end with a new line
A README.md file, at the root of the folder of the project, is mandatory
All your Bash script files must be executable
Your Bash script must pass Shellcheck (version 0.3.7-5~ubuntu16.04.1 via apt-get) without any error
The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
The second line of all your Bash scripts should be a comment explaining what is the script doing
```
