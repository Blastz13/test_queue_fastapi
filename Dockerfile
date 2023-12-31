FROM python:3.9

WORKDIR /var/www

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
EXPOSE 8000

COPY requirements.txt ./

RUN pip3 install --no-cache-dir --upgrade -r /var/www/requirements.txt

COPY . ./
RUN #alembic upgrade head