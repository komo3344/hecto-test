FROM python:3.9

# Environment variable to avoid buffering in Python
ENV PYTHONUNBUFFERED 1

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# Copy application code to the container

COPY . /app
COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "entrypoint.sh"]
