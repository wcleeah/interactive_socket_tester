set dotenv-load

venv := ".venv"

run:
    {{venv}}/bin/python interactive_socket.py

install dep:
    {{venv}}/bin/pip install {{dep}}
    {{venv}}/bin/pip freeze > requirements.txt

uninstall dep:
    {{venv}}/bin/pip uninstall {{dep}}
    {{venv}}/bin/pip freeze > requirements.txt

setup:
    {{venv}}/bin/pip install -r requirements.txt

