FROM python:3.9-slim

WORKDIR /app

COPY . /app

#install dependency
RUN pip install --no-cache-dir -r requirement.txt

ENV FLASK_APP=app.py    

EXPOSE 5000

ENTRYPOINT [ "flask", "run","--host=0.0.0.0" ]

CMD ["--port=5000"]
