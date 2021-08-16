setup:
	virtualenv .venv
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
test:

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 app.py
all: install lint test
