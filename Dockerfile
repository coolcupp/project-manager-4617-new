FROM postgres:latest

# Установите расширения PostgreSQL, если необходимо:
# RUN apt-get update && apt-get install -y postgresql-contrib

# Создание пользователя и базы данных:
ENV POSTGRES_USER=danil
ENV POSTGRES_PASSWORD=210704
ENV POSTGRES_DB=new_prManager_db1

# Заполнение базы данных данными:
COPY new_prManager_db1.sql /docker-entrypoint-initdb.d/

# Запуск сервера PostgreSQL:
CMD ["postgres"]



