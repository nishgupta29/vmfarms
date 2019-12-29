This is a simple API created using python and flask. It accepts an argument on http://127.0.0.1:5000/name should return " Hello <name> "
Application has been dockerized and made available on my github repository.
Image is in the  repository.

Clone the repository
 git clone https://github.com/nishgupta29/vmfarms.git

Run the application
FLASK_APP=app.py and then do
flask run
Or just run it using python app.py

Execute it using docker container:

Create the docker image using Dockerfile

docker build -t vmfarms:latest .

Run the docker container using the newly created docker image
docker run -it -d -p 5000:5000 vmfarms:latest

Kubernetes deployment definition file has been written to deploy this application as a pod on kubernetes with 3 replicas ensuring high availability.
