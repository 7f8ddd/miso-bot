FROM python:3

WORKDIR /app

RUN wget https://github.com/isis-project/isis-fonts/blob/master/NanumGothic.ttf?raw=true -O NanumGothic.ttf 
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "-O", "main.py"]
