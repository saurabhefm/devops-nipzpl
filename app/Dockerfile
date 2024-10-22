### Implement your Dockerfile here
FROM python:3.10
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py .
EXPOSE 5000
#ARG FLASK_APP_VERSION
#ENV FLASK_APP_VERSION=${FLASK_APP_VERSION}
CMD ["python", "app.py"]
