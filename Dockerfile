FROM postgres:latest

# Установите расширения PostgreSQL, если необходимо:
# RUN apt-get update && apt-get install -y postgresql-contrib

# Создание пользователя и базы данных:
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=mysecretpassword
ENV POSTGRES_DB=new_prManager_db1



# Запуск сервера PostgreSQL:
CMD ["postgres"]


# Заполнение базы данных данными:
COPY new_prManager_db1.sql /docker-entrypoint-initdb.d/
