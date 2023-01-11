# 
FROM python:3.8

# 
WORKDIR /

# 
COPY ./requirements.txt ./requirements.txt

# 
RUN pip install --no-cache-dir --upgrade -r /requirements.txt

# 
COPY ./app /

# 
CMD ["uvicorn", "app.main:app", "--host", "localhost", "--port", "8000", "--reload"]