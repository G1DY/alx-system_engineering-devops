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


