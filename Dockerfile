FROM python:3.12-rc-alpine3.16
WORKDIR /poll_app
COPY . .
RUN pip3 install -r requirements.txt
RUN python3 manage.py collectstatic
