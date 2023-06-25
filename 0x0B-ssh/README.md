# SSH
## Background Context
Along with this project, you have been attributed an Ubuntu server, living in a datacenter far far away. Like level 2 of the application process, you will connect using ssh. But contrary to level 2, you will not connect using a password but an RSA key. We’ve configured your server with the public key you created in the first task of [a previous project](https://intranet.alxswe.com/rltoken/UQIQV4HJGvBv0qrHhlDFaQ) shared in your [intranet profile](https://intranet.alxswe.com/rltoken/8ZlNV0J-sa-dijhmhJolOg).

You can access your server information in the [my servers](https://intranet.alxswe.com/rltoken/e2_s_pXwBVuYbhrvoesfrg) section of the intranet, each line with contains the IP and username you should use to connect via ssh.

Note: Your server is configured with an Ubuntu 20.04 LTS environment.

## **Resources**
- [What is a (physical) server - text](https://intranet.alxswe.com/rltoken/dkgW9lKiBRiUZHfq0MDJuw)
- [What is a (physical) server - video](https://intranet.alxswe.com/rltoken/AxFcTdcXUCsrVp01X_EbFA)
- [SSH essentials](https://intranet.alxswe.com/rltoken/ux0eM1QU9reNyG45b0erAQ)
- [SSH Config File](https://intranet.alxswe.com/rltoken/Rc9FpSy4ZaQWPlcWLinbNw)
- [Public Key Authentication for SSH](https://intranet.alxswe.com/rltoken/tOcxk5mtkedBM0WxyDZxTw)
- [How Secure Shell Works](https://intranet.alxswe.com/rltoken/j0atjRrVfZ6F810qmPfAzA)
- [SSH Crash Course ](https://intranet.alxswe.com/rltoken/FKqd8CjxExmpWGu6xGavKw)

## **For reference:**
- [Understanding the SSH Encryption and Connection Process](https://intranet.alxswe.com/rltoken/JB-Vi4dR3q6nF4MBhsn8kQ)
- [Secure Shell Wiki](https://intranet.alxswe.com/rltoken/SpiYWE79Yfr_vWDg42dzCw)
- [IETF RFC 4251 (Description of the SSH Protocol)](https://intranet.alxswe.com/rltoken/f2O0OQq9tch2MYeNAzkg5w)
- [Internet Engineering Task Force](https://intranet.alxswe.com/rltoken/gd1W1UvB0KeJVWwM8BLvhA)
- [Request for Comments](https://intranet.alxswe.com/rltoken/jb-IrnQnUh-PsEDlbAU0Kw)

### Learning Objectives
**man or help:**
- ssh
- ssh-keygen
- env

**General**
~~~
What is a server
Where servers usually live
What is SSH
How to create an SSH RSA key pair
How to connect to a remote host using an SSH RSA key pair
The advantage of using #!/usr/bin/env bash instead of /bin/bash
~~~
**Requirements**
~~~
Allowed editors: vi, vim, emacs
All your files will be interpreted on Ubuntu 20.04 LTS
All your files should end with a new line
A README.md file, at the root of the folder of the project, is mandatory
All your Bash script files must be executable
The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
The second line of all your Bash scripts should be a comment explaining what is the script doing
~~~

| Task | Description |
| ---- | ----------- |
| 0. Use a private key | Write a Bash script that uses ssh to connect to your server using the private key ~/.ssh/school with the user ubuntu. |
| 1. Create an SSH key pair | Write a Bash script that creates an RSA key pair. |
| 2. Client configuration file | Your machine has an SSH configuration file for the local SSH client, let’s configure it to our needs so that you can connect to a server without typing a password. Share your SSH client configuration in your answer file. |
| 3. Let me in! | Now that you have successfully connected to your server, we would also like to join the party. Add the SSH public key below to your server so that we can connect using the ubuntu user. |
| 4. Client configuration file (w/ Puppet) | Let’s practice using Puppet to make changes to our configuration file. Just as in the previous configuration file task, we’d like you to set up your client SSH configuration file so that you can connect to a server without typing a password |
