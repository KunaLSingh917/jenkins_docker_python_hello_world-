FROM	python:3.9-slim-buster
WORKDIR /app
COPY 	hello.py /app
CMD	["pyhton3","hello.py"]
