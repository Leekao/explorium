FROM python:3
RUN pip install flask flask-api
ADD flask-helloworld.py /
EXPOSE 5000
CMD ["python", "./flask-helloworld.py"]