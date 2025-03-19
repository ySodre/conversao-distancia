FROM python:3.10.12
WORKDIR /app 
#funciona como se fosse um mkdir /app cd /app
COPY requirements.txt .
RUN python -m pip install -r requirements.txt 
#executa na construção
COPY . .
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"] 
#executa na inicialização