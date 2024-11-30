FROM python:3.12.2

WORKDIR /app

COPY requirements.txt requirements.txt

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["python", "main.py"]
