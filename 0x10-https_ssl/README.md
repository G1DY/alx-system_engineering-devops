<center><h1>HTTPS SSL</h1></center>
In this project i learnt about how HTTPS and SSL work. I configured the servers from a previous project with an SSL certirficate from `certbot` SSL certificate provider and implemented HAproxy SSL termination for inbound and outbound connections/communication.

---

<center><h2>The Setup</h2></center>

- ![Screenshot](Screenshot%20from%202023-07-06%2009-56-07.png)

---
<br>
</br>
<center><h2>Project Tasks</h2></center>

| Task | Description |
| ---- | ----------- |
| 0. World wide web | Configure your domain zone so that the subdomain www points to your load-balancer IP (lb-01). Let’s also add other subdomains to make our life easier, and write a Bash script that will display information about subdomains. |
| 1. HAproxy SSL termination | Create a certificate using certbot and configure HAproxy to accept encrypted traffic for your subdomain www. |
| 2. No loophole in your website traffic | A good habit is to enforce HTTPS traffic so that no unencrypted traffic is possible. Configure HAproxy to automatically redirect HTTP traffic to HTTPS. |
<br>
</br>

### Task Requirements

***Task_1***

```
Requirements:

Add the subdomain www to your domain, point it to your lb-01 IP (your domain name might be configured with default subdomains, feel free to remove them)
Add the subdomain lb-01 to your domain, point it to your lb-01 IP
Add the subdomain web-01 to your domain, point it to your web-01 IP
Add the subdomain web-02 to your domain, point it to your web-02 IP
Your Bash script must accept 2 arguments:
domain:
type: string
what: domain name to audit
mandatory: yes
subdomain:
type: string
what: specific subdomain to audit
mandatory: no
Output: The subdomain [SUB_DOMAIN] is a [RECORD_TYPE] record and points to [DESTINATION]
When only the parameter domain is provided, display information for its subdomains www, lb-01, web-01 and web-02 - in this specific order
When passing domain and subdomain parameters, display information for the specified subdomain
Ignore shellcheck case SC2086
Must use:
awk
at least one Bash function
You do not need to handle edge cases such as:
Empty parameters
Nonexistent domain names
Nonexistent subdomains
```
***Task_2***
```
Requirements:

HAproxy must be listening on port TCP 443
HAproxy must be accepting SSL traffic
HAproxy must serve encrypted traffic that will return the / of your web server
When querying the root of your domain name, the page returned must contain Holberton School
Share your HAproxy config as an answer file (/etc/haproxy/haproxy.cfg)
The file 1-haproxy_ssl_termination must be your HAproxy configuration file

Make sure to install HAproxy 1.5 or higher, SSL termination is not available before v1.5.
```
***Task_3***
```
Requirements:

This should be transparent to the user
HAproxy should return a 301
HAproxy should redirect HTTP traffic to HTTPS
Share your HAproxy config as an answer file (/etc/haproxy/haproxy.cfg)
The file 100-redirect_http_to_https must be your HAproxy configuration file
```

### Resources
- [What is HTTPS?](https://intranet.alxswe.com/rltoken/XT1BAiBL3Jpq1bn1q6IYXQ)
- [What are the 2 main elements that SSL is providing](https://intranet.alxswe.com/rltoken/STj5WkAPACBxOvwB77Ycrw)
- [HAProxy SSL termination on Ubuntu16.04](https://intranet.alxswe.com/rltoken/mJNlqZkTBxIxM2bpDK_VoA)
- [SSL termination](https://intranet.alxswe.com/rltoken/CKUICfppIWI6UC0coEMB8g)
- [Bash function](Bash function)

*man*
`awk` and `dig`

### Learning Objectives
```
What is HTTPS SSL 2 main roles
What is the purpose encrypting traffic
What SSL termination means
```
