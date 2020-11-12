FROM python:3
RUN PYTHONPATH=/usr/bin/python3 pip install --no-cache-dir flask flask-api
COPY flask-helloworld.py /
EXPOSE 5000
CMD ["python", "./flask-helloworld.py"]