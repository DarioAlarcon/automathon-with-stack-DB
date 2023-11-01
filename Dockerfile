# 
FROM python:3.11

# 
WORKDIR /BACKEND

# 
COPY ./requirements.txt /BACKEND/requirements.txt

# 
RUN pip install --no-cache-dir --upgrade -r /BACKEND/requirements.txt

# 
COPY ./app /BACKEND/app

# 
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
