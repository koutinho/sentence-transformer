# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.10-slim

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Video file name

# Install pip requirements
COPY requirements.txt .

RUN pip install --upgrade pip

RUN python -m pip install --progress-bar raw -r requirements.txt