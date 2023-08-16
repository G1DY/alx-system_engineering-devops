<center><h1>0x1A-application_server</h1></center>

In this project i configured my nginx server to serve `AirBnB clone v2 - Web framework on web-01`. The task was about setting up the development environment, to be used for testing and debugging code before deploying it to production.

---

<center><h2>Infrastructure Design</h2></center>

![Image](c7d1ed0a2e10d1b4e9b3.jpg)

<center><h3>Project Tasks</h3></center>

#### **0. Set up development with Python**

```
Let’s serve what you built for `AirBnB clone v2 - Web framework on web-01`. This task is an exercise in setting up your development environment, which is used for testing and debugging your code before deploying it to production.

Requirements:

    Make sure that task #3 of your SSH project is completed for web-01. The checker will connect to your servers.
    Install the net-tools package on your server: sudo apt install -y net-tools
    Git clone your AirBnB_clone_v2 on your web-01 server.
    Configure the file web_flask/0-hello_route.py to serve its content from the route /airbnb-onepage/ on port 5000.
    Your Flask application object must be named app (This will allow us to run and check your code).
```

#### **Test**

~~~
ubuntu@229-web-01:~/AirBnB_clone_v2$ python3 -m web_flask.0-hello_route
 * Serving Flask app "0-hello_route" (lazy loading)
 * Environment: production
   WARNING: Do not use the development server in a production environment.
   Use a production WSGI server instead.
 * Debug mode: off
 * Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)
35.231.193.217 - - [02/May/2019 22:19:42] "GET /airbnb-onepage/ HTTP/1.1" 200 -

ubuntu@229-web-01:~/AirBnB_clone_v2$ curl 127.0.0.1:5000/airbnb-onepage/
Hello HBNB!ubuntu@229-web-01:~/AirBnB_clone_v2$
~~~

#### **1. Set up production with Gunicorn**

Now that you have your development environment set up, let’s get your production application server set up with Gunicorn on web-01, port 5000. You’ll need to install Gunicorn and any libraries required by your application. Your Flask application object will serve as a WSGI entry point into your application. This will be your production environment. As you can see we want the production and development of your application to use the same port, so the conditions for serving your dynamic content are the same in both environments.

Requirements:

    Install Gunicorn and any other libraries required by your application.
    The Flask application object should be called app. (This will allow us to run and check your code)
    You will serve the same content from the same route as in the previous task. You can verify that it’s working by binding a Gunicorn instance to localhost listening on port 5000 with your application object as the entry point.
    In order to check your code, the checker will bind a Gunicorn instance to port 6000, so make sure nothing is listening on that port.

#### **Test**

```
Terminal 1:

ubuntu@229-web-01:~/AirBnB_clone_v2$ gunicorn --bind 0.0.0.0:5000 web_flask.0-hello_route:app
[2019-05-03 20:47:20 +0000] [3595] [INFO] Starting gunicorn 19.9.0
[2019-05-03 20:47:20 +0000] [3595] [INFO] Listening at: http://0.0.0.0:5000 (3595)
[2019-05-03 20:47:20 +0000] [3595] [INFO] Using worker: sync
[2019-05-03 20:47:20 +0000] [3598] [INFO] Booting worker with pid: 3598

Terminal 2:

ubuntu@229-web-01:~$ curl 127.0.0.1:5000/airbnb-onepage/
Hello HBNB!ubuntu@229-web-01:~$
```

#### **2. Serve a page with Nginx**

Building on your work in the previous tasks, configure Nginx to serve your page from the route /airbnb-onepage/

Requirements:

    Nginx must serve this page both locally and on its public IP on port 80.
    Nginx should proxy requests to the process listening on port 5000.
    Include your Nginx config file as 2-app_server-nginx_config.

Notes:

    In order to test this you’ll have to spin up either your production or development application server (listening on port 5000)
    In an actual production environment the application server will be configured to start upon startup in a system initialization script. This will be covered in the advanced tasks.
    You will probably need to reboot your server (by using the command $ sudo reboot) to have Nginx publicly accessible

#### **Test**

```
On my server:
Window 1:

ubuntu@229-web-01:~/AirBnB_clone_v2$ gunicorn --bind 0.0.0.0:5000 web_flask.0-hello_route:app
[2019-05-06 20:43:57 +0000] [14026] [INFO] Starting gunicorn 19.9.0
[2019-05-06 20:43:57 +0000] [14026] [INFO] Listening at: http://0.0.0.0:5000 (14026)
[2019-05-06 20:43:57 +0000] [14026] [INFO] Using worker: sync
[2019-05-06 20:43:57 +0000] [14029] [INFO] Booting worker with pid: 14029

Window 2:

ubuntu@229-web-01:~/AirBnB_clone_v2$ curl 127.0.0.1/airbnb-onepage/
Hello HBNB!ubuntu@229-web-01:~/AirBnB_clone_v2$

On my local terminal:

vagrant@ubuntu-xenial:~$ curl -sI 35.231.193.217/airbnb-onepage/
HTTP/1.1 200 OK
Server: nginx/1.10.3 (Ubuntu)
Date: Mon, 06 May 2019 20:44:55 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 11
Connection: keep-alive
X-Served-By: 229-web-01

vagrant@ubuntu-xenial:~$ curl 35.231.193.217/airbnb-onepage/
Hello HBNB!vagrant@ubuntu-xenial:~$
```

