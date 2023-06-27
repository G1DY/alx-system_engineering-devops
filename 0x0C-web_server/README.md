<center> <h1>Web server</h1> </center>
In this project we covered web servers. We learnt that servers are computers that host webpages, apps and sites. When a client device wants to access a web page, a copy of the web page is downloaded from the server into the clients machine to be displayed in the users' web browser. All this happen through an internet connection via a Transmission control protocol/internet protocol(TCP/IP). HTTP is a language for clients and servers to speak to each other. Component files, code files and assets are transfered as data packets to allow transmission over distributed paths and corrupted files are easily replaced as packets

---

<center> <h2>Project Tasks</h2> </center>

| Task | Description |
| ---- | ----------- |
| 0. Transfer a file to your server | A Bash script that transfers a file from our client to a server: param(<path to the file to be transferred> <IP of the server we want to transfer the file to> <username scp connects with> <path to the SSH private key that scp uses>) |
| 1. Install nginx web server | [Readme:](https://intranet.alxswe.com/rltoken/KJiFZ4yJyTGp_cv3DYQLaQ) Web servers are the piece of software generating and serving HTML pages, let’s install one!: Install nginx on your web-01, server, Nginx should be listening on port 80, When querying Nginx at its root / with a GET request (requesting a page) using curl, it must return a page that contains the string Hello World!, As an answer file, write a Bash script that configures a new Ubuntu machine to respect above requirements (this script will be run on the server itself),You can’t use systemctl for restarting nginx. |
| 2. Setup a domain name | Provide the domain name in your answer file: provide the domain name only (example: foobar.tech), no subdomain (example: www.foobar.tech), configure your DNS records with an A entry so that your root domain points to your web-01 IP address Warning: the propagation of your records can take time (~1-2 hours), go to your profile and enter your domain in the Project website url field |
| 3. Redirection | [Readme:](https://intranet.alxswe.com/rltoken/RRP9hX3MlQdABaKZD-Y_cA) Configure your Nginx server so that /redirect_me is redirecting to another page(The redirection must be a “301 Moved Permanently”, You answer file should be a Bash script containing commands to automatically configure a Ubuntu machine to respect above requirements, Using what you did with 1-install_nginx_web_server, write 3-redirection so that it configures a brand new Ubuntu machine to the requirements asked in this task) |
| 4. Not found page 404 | Configure your Nginx server to have a custom 404 page that contains the string Ceci n'est pas une page(The page must return an HTTP 404 error code, The page must contain the string Ceci n'est pas une page, Using what you did with 3-redirection, write 4-not_found_page_404 so that it configures a brand new Ubuntu machine to the requirements asked in this task) |
| 5. Install Nginx web server (w/ Puppet) | install and configure an Nginx server using Puppet instead of Bash. To save time and effort, you should also include resources in your manifest to perform a 301 redirect when querying /redirect_me(Nginx should be listening on port 80, When querying Nginx at its root / with a GET request (requesting a page) using curl, it must return a page that contains the string Hello World!, The redirection must be a “301 Moved Permanently”, Your answer file should be a Puppet manifest containing commands to automatically configure an Ubuntu machine to respect above requirements) |

<center> <h3>Requirements</h3> </center>

```
Allowed editors: vi, vim, emacs
All your files will be interpreted on Ubuntu 16.04 LTS
All your files should end with a new line
A README.md file, at the root of the folder of the project, is mandatory
All your Bash script files must be executable
Your Bash script must pass Shellcheck (version 0.3.7) without any error
The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
The second line of all your Bash scripts should be a comment explaining what is the script doing
You can’t use systemctl for restarting a process
```

#### Resources
- [How the web works](https://intranet.alxswe.com/rltoken/6TI3HiyFdwrbXWKVF24Gxw)
- [Nginx](https://intranet.alxswe.com/rltoken/vkVMGlaf39j2DWAQWzo6EA)
- [How to Configure Nginx](https://intranet.alxswe.com/rltoken/zKrpVxWuUHVdW4URAjdFbw)
- [Child process concept page](https://intranet.alxswe.com/rltoken/Ar18u5sRis1fkvkVgzdcqg)
- [Root and sub domain](https://intranet.alxswe.com/rltoken/xi3peVqYl02PfpHHHlCtxQ)
- [HTTP requests](https://intranet.alxswe.com/rltoken/sBrrP4EAmI3NoYjIgZrUhw)
- [HTTP redirection](https://intranet.alxswe.com/rltoken/Eaa4ZuKvye941hTkP8VlBQ)
- [Not found HTTP response code](https://intranet.alxswe.com/rltoken/eJSp2QFTY6jqqNtz8OVDEw)
- [Logs files on Linux](https://intranet.alxswe.com/rltoken/7WMNY5CWD-CBrxmQrdmfPg)

#### For reference:
- [RFC 7231 (HTTP/1.1)](https://intranet.alxswe.com/rltoken/BGa6RrS0dnM6EdBGS_ZDUw)
- [RFC 7540 (HTTP/2)](https://intranet.alxswe.com/rltoken/IZ2fyYn1qNZ9RXXsg5vG1g)

```
man or help
* scp
* curl
```
