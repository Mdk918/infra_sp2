# api_yamdb
```
API сервис для работы с сервисом Yamdb. Позволяет регистрироваться,
получать уникальный токен пользователя, просматривать ифнормацию о
произвоедениях, а так же писать отзывы и комментарии.

Потверждение регистрации приходит на почту.
```

Автор:
```
Гришин В.
Github: https://github.com/Mdk918
```

Используемые технологии:
```
Django
REST Api
JWT
Docker
Gunicorn
Nginx
Postgress
```

### Как запустить проект:

Клонировать репозиторий и перейти в него в командной строке:

```
git clone https://github.com/Mdk918/api_yamdb.git
```

```
cd api_yamdb
```


```
Установить докер
```

Запустить команду:

```
docker-compose up -d --build 
```
Выполнить миграции

```
docker-compose exec web python manage.py migrate --noinput
```
Создать суперпользователя

```
docker-compose exec web python manage.py createsuperuser
```
Подгрузить статику

```
docker-compose exec web python manage.py collectstatic --no-input
```

### Как запустить тесты:

Cоздать и активировать виртуальное окружение:

```
python3 -m venv venv
```

```
source venv/bin/activate
```

```
python3 -m pip install --upgrade pip
```

Установить зависимости из файла requirements.txt:

```
pip install -r requirements.txt
```

Выполнить команду:

```
pytest
```




Примеры запросов к API:

Регистрация пользователя
```
POST
http://127.0.0.1:8000/api/v1/auth/signup/

{
  "email": "string",
  "username": "string"
}
```
Получение токена пользователя
```
POST
http://127.0.0.1:8000/api/v1/auth/token/

{
  "username": "string",
  "confirmation_code": "string"
}
```
Получение информации о тайтле
```
GET
http://127.0.0.1:8000/api/v1/titles/{titles_id}/

{
  "id": 0,
  "name": "string",
  "year": 0,
  "rating": 0,
  "description": "string",
  "genre": [
    {
      "name": "string",
      "slug": "string"
    }
  ],
  "category": {
    "name": "string",
    "slug": "string"
  }
}
```
Добавление отзыва
```
POST
http://127.0.0.1:8000/api/v1/titles/{title_id}/reviews/

{
  "text": "string",
  "score": 1
}
```
Релактирование  комментария
```
PATCH
http://127.0.0.1:8000/api/v1/titles/{title_id}/reviews/{review_id}/comments/{comment_id}/

{
  "text": "string"
}
```


