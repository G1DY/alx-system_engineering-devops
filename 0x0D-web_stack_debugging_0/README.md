<center><h1>Web stack debugging</h1></center>
Computers and software rarely work the way we want (that’s the “fun” part of the job!). Being able to debug a webstack is essential for a Full-Stack Software Engineer, and it takes practice to be a master of it. In this project we debugged a broken/bugged webstack> At the end of the project we were able to install docker and learned how to use it.

---

<center><h2>Project</h2></center>

| Task | Description |
| ---- | ----------- |
| 0. Give me a page! | In this first debugging project, you will need to get [Apache](https://intranet.alxswe.com/rltoken/HVGgLL51qmuulmw802M-Jg) to run on the container and to return a page containing Hello Holberton when querying the root of it. |

### Resources
- [Network basics](https://intranet.alxswe.com/concepts/33)
- [Docker](https://intranet.alxswe.com/concepts/65)
- [Web stack debugging](https://intranet.alxswe.com/concepts/68)

#### How docker works on terminal
```
vagrant@vagrant:~$ docker run -d -ti ubuntu:14.04
Unable to find image 'ubuntu:14.04' locally
14.04: Pulling from library/ubuntu
34667c7e4631: Already exists
d18d76a881a4: Already exists
119c7358fbfc: Already exists
2aaf13f3eff0: Already exists
Digest: sha256:58d0da8bc2f434983c6ca4713b08be00ff5586eb5cdff47bcde4b2e88fd40f88
Status: Downloaded newer image for ubuntu:14.04
76f44c0da25e1fdf6bcd4fbc49f4d7b658aba89684080ea5d6e8a0d832be9ff9
vagrant@vagrant:~$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
76f44c0da25e        ubuntu:14.04        "/bin/bash"         13 seconds ago      Up 12 seconds                           infallible_bhabha
vagrant@vagrant:~$ docker exec -ti 76f44c0da25e /bin/bash
root@76f44c0da25e:/# ls /tmp/
root@76f44c0da25e:/# cp /etc/passwd /tmp/
root@76f44c0da25e:/# echo OK > /tmp/isworking
root@76f44c0da25e:/# ls /tmp/
isworking  passwd
root@76f44c0da25e:/#
vagrant@vagrant:~$
```
####  Installing Docker
- [Mac OS](https://intranet.alxswe.com/rltoken/wuCgR0pVioCnvtMKTeMgdQ)
- [Windows](https://intranet.alxswe.com/rltoken/9nVKpuQIDJhZoLP4mZmbRA)
- [Ubuntu 14.04](https://intranet.alxswe.com/rltoken/crVTooJdN8U8wATMvG2-og)
- [Ubuntu 16.04](https://intranet.alxswe.com/rltoken/wTjFrD8iy96EZW9MFYwa9Q)

#### Requirements
```
man or help: curl
Allowed editors: vi, vim, emacs
All your files will be interpreted on Ubuntu 14.04 LTS
All your files should end with a new line
A README.md file, at the root of the folder of the project, is mandatory
All your Bash script files must be executable
Your Bash scripts must pass Shellcheck without any error
Your Bash scripts must run without error
The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
The second line of all your Bash scripts should be a comment explaining what is the script doing
```
