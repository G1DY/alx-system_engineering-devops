<center><h1>postmortem</h1></center>

In this project we were tasked to come up with a creative incident report based on what we debugged or encountered as a failure while in the program

---

![Image](Screenshot%20from%202023-08-17%2012-29-06.png)

Duration of Outage

Started: 17/08/2023 at 12pm
Ended: 17/08/2023 at 3pm


Issue Summary
What service was down/slow?

The Apache server was returning a 500 error message, denying access to 100% of the ALX cohort 11 students.

What were users experiencing?
Accessing the remote server from the host was returning a `HTTP/1.0 500 Internal Server Error` because the software was breaking in a way that it was not expected. The logs were also not providing enough information to give a quick fix.

What was the root cause?
The root cause of the error was a misconfiguration on the php config file 
There was a misspelling in the file of an extra p that was causing the bug

Timeline
When was the issue detected?
The issue was detected on 17.08.2023 at 12pm
How was the issue detected?
An assumption was that the server was functioning normally since that is where we do our daily tasks, but after trying severally with fellow students including doing the debugging rituals of checking if UFW was locking us out, checking the log messages, checking ports,checking misconfiguration the server service was not starting.
Actions Taken/Resolution
Since most of us had no `tmux` installed that could help in the debugging process, we installed `tmux` and leveraging on its power we were able to create windows to check on the configuration files and using strace we were able to trace the error line and fix the spelling mistake it had. 

Corrective and Preventive Measure
Future quick fix?
We wrote a puppet script to keep the web server up and fix similar bugs just in case the issue arises again in the future..
We added datadog-agent configured to monitor the servers and optimize it usage

Tasks that to address similar issues
Reading and interpreting log files
Fixing logs where error has been flagged
Locating affected files using, tmux, netstat, lsof etc
Resetting the app
Try update methods

