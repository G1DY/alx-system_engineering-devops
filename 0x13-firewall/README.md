<center><h1>Firewall</h1></center>
In this project i used `ufw` to configure firewall on my issued servers

---

<center><h2>Infrastructure Setup</h2></center>
![Screenshot](Screenshot%20from%202023-07-17%2018-53-40.png)

<center><h3>Project Tasks</h3></center>

| Task | Description |
| ---- | ----------- |
| 0. Block all incoming traffic but | Let’s install the ufw firewall and setup a few rules on web-01: Configure ufw so that it blocks all incoming traffic, except the following TCP ports, 22 (SSH), 443 (HTTPS SSL), 80 (HTTP) |
| 1. Port forwarding | Configure web-01 so that its firewall redirects port 8080/TCP to port 80/TCP, Your answer file should be a copy of the ufw configuration file that you modified to make this happen |

