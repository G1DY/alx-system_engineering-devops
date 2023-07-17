<center><h1>web_stack_debugging_2</h1></center>
In this project i was given bugged webstacks in isolated containers and tasked to fix the web stacks to a working state. I wrote scripts for each task with commands to fix the bugs.

---

<center><h2>Project Tasks</h2></center>

| Task | Description |
| ---- | ----------- |
| 0. Run software as another user | For the containers that you are given in this project as well as the checker, everything is run under the root user, which has the ability to run anything as another user: write a Bash script that accepts one argument, the script should run the whoami command under the user passed as an argument, make sure to try your script by passing different users |
| 1. Run Nginx as Nginx | Fix this container so that Nginx is running as the nginx user: nginx must be running as nginx user, nginx must be listening on all active IPs on port 8080, You cannot use apt-get remove, Write a Bash script that configures the container to fit the above requirements |
| 2. 7 lines or less | Using what you did for task #1, make your fix short and sweet: Your Bash script must be 7 lines long or less, 
