from ubuntu:latest

MAINTAINER Nishant Gupta "nishgupta29@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev
	
WORKDIR /app

COPY . /app

RUN pip --no-cache-dir install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python"]
CMD ["app.py"]


