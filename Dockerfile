FROM python:3.8.5

# создать директорию /code
WORKDIR /code

COPY . .

# выполнить команду (как в терминале, с тем же синтаксисом) для установки пакетов из requirements.txt
RUN pip3 install -r /code/requirements.txt

CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000