#!/bin/sh

flask db upgrade

exec gunicorn --bind 0.0.0.0:88 "app:create_app()"