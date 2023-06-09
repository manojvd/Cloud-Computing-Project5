# use the `mongo` image
# copy the app directory and any files needed for your implementation from your local to the container
# equip it with all the packages and installs needed to run the flask app (packages are defined in app/requirements.txt. `pip install -r app/requirements.txt`)
# expose the port flask app will run on
FROM python:3.10-alpine

RUN mkdir /app

WORKDIR /app/

ADD . /app/

RUN pip install -r app/requirements.txt

CMD ["python", "app/app.py"]