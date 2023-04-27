# Loops, conditions and parsing
> DevOps, Shell, Bash, Scripting

# Resources

[]( https://intranet.alxswe.com/rltoken/wT98UJfv_E2tk4yP9PcLLw, https://intranet.alxswe.com/rltoken/olvOKX699pq50rkHRE5cSA, https://intranet.alxswe.com/rltoken/HxohzllkOWh0t4dy_HptIQ, https://intranet.alxswe.com/rltoken/g8of2ABPEJfCNtPrDQaqVw, https://intranet.alxswe.com/rltoken/O0Ay21p7tDhfLMsYbtAKug)

. man or help:
~~~
env
cut
for
while
until
if
~~~

# Learning Objectives

> How to create SSH keys
 What is the advantage of using #!/usr/bin/env bash over #!/bin/bash
 How to use while, until and for loops
 How to use if, else, elif and case condition statements
 How to use the cut command
 What are files and other comparison operators, and how to use them

# Shellcheck

 [](https://intranet.alxswe.com/rltoken/joK6l_yEZ9N7T0GQ1RDjLA)
 >Shellcheck is a tool that will help you write proper Bash scripts. It will make recommendations on your syntax and semantics and provide advice on edge cases that you might not have thought about. Shellcheck is your friend! All your Bash scripts must pass Shellcheck without any error or you will not get any points on the task.

## Tasks

 0. Create a SSH RSA key pair

 [](https://intranet.alxswe.com/rltoken/Cy1plV2eR3VphjPqliXB8A, https://intranet.alxswe.com/rltoken/PXriGT0IKaSXC7L5l0CVag)

> man: ssh-keygen

1. For Best School loop

> Write a Bash script that displays Best School 10 times.

> > you must use the for loop (while and until are forbidden)

2. While Best School loop

> Write a Bash script that displays Best School 10 times.

> > You must use the while loop (for and until are forbidden)

3. Until Best School loop

> Write a Bash script that displays Best School 10 times.

> > You must use the until loop (for and while are forbidden)

4. If 9, say Hi!

> Write a Bash script that displays Best School 10 times, but for the 9th iteration, displays Best School and then Hi on a new line.

> >You must use the while loop (for and until are forbidden)
You must use the if statement

5. 4 bad luck, 8 is your chance

> Write a Bash script that loops from 1 to 10 and:

> > displays bad luck for the 4th loop iteration
displays good luck for the 8th loop iteration
displays Best School for the other iterations

> Requirements:

> > You must use the while loop (for and until are forbidden)
You must use the if, elif and else statements

6. Superstitious numbers

> Write a Bash script that displays numbers from 1 to 20 and:

> > displays 4 and then bad luck from China for the 4th loop iteration
displays 9 and then bad luck from Japan for the 9th loop iteration
displays 17 and then bad luck from Italy for the 17th loop iteration

> Requirements:

> > You must use the while loop (for and until are forbidden)
You must use the case statement

7. Clock

> Write a Bash script that displays the time for 12 hours and 59 minutes

> > display hours from 0 to 12
display minutes from 1 to 59

> Requirements:

> > You must use the while loop (for and until are forbidden)

8. For ls

> Write a Bash script that displays:

> > The content of the current directory
In a list format
Where only the part of the name after the first dash is displayed (refer to the example)

> Requirements:

> > You must use the for loop (while and until are forbidden)
Do not display hidden files

9. To file, or not to file

> Write a Bash script that gives you information about the school file.

> > You must use if and, else (case is forbidden)
Your Bash script should check if the file exists and print:

> > > if the file exists: school file exists
if the file does not exist: school file does not exist

> > If the file exists, print

> > > if the file is empty: school file is empty
if the file is not empty: school file is not empty
if the file is a regular file: school is a regular file
if the file is not a regular file: (nothing)

10. FizzBuzz

> Write a Bash script that displays numbers from 1 to 100.

> > Displays FizzBuzz when the number is a multiple of 3 and 5
Displays Fizz when the number is multiple of 3
Displays Buzz when the number is a multiple of 5
Otherwise, displays the number
In a list format

11. Read and cut

> Write a Bash script that displays the content of the file /etc/passwd

> > Your script should only display:

username
user id
Home directory path for the user
Requirements:

You must use the while loop (for and until are forbidden)

12. Tell the story of passwd

> [](https://intranet.alxswe.com/rltoken/8VeAz2XHCtuECDJ0PfMNIg, https://intranet.alxswe.com/rltoken/jm2-sSa3VlvI4zgRdreAsg)

> The file /etc/passwd has already been covered in a previous project and you should be familiar with it. Today we will make up a story based on it.

Write a Bash script that displays the content of the file /etc/passwd, using the while loop + IFS.

Format: The user USERNAME is part of the GROUP_ID gang, lives in HOME_DIRECTORY and rides COMMAND/SHELL. USER ID's place is protected by the passcode PASSWORD, more info about the user here: USER ID INFO

Requirements:

You must use the while loop (for and until are forbidden)

13. Let's parse Apache logs

> [](https://intranet.alxswe.com/rltoken/JfEwR2qcLdKkoihJNDZR0g, http://intranet-projects-files.s3.amazonaws.com/holbertonschool-sysadmin_devops/80/apache-access.log, https://intranet.alxswe.com/rltoken/7de-UBmf8xgwH1iSwzX1MA, https://intranet-projects-files.s3.amazonaws.com/holbertonschool-sysadmin_devops/80/apache-access.log)

> Apache is among the most popular web servers in the world, serving 50% of all active websites, no doubt that you will have to interact with it within your career.

As a Full-Stack Software Engineer, you have to master the art of parsing log files. Today we will do a simple parsing of Apache log access files.

Today the Customer Support department reported that a user reported that the site is being “buggy”. Not being a detailed description, you want to have a look at the Apache logs and gather data about the traffic.

Write a Bash script that displays the visitor IP along with the HTTP status code from the Apache log file.

Requirement:

Format: IP HTTP_CODE
in a list format
See example
You must use awk
You are not allowed to use while, for, until and cut
Download and commit the apache-access.log file along with your answers files

14. Dig the data

> Now that you’ve parsed the Apache log file, let’s sort the data so you can get a better idea of what is going on.

Using what you did in the previous exercise, write a Bash script that groups visitors by IP and HTTP status code, and displays this data.

Requirements:

The exact format must be:
OCCURENCE_NUMBER IP HTTP_CODE
In list format
Ordered from the greatest to the lowest number of occurrences
See example
You must use awk
You are not allowed to use while, for, until and cut