# Python 이미지 사용
FROM python:3.11-slim

# 작업 디렉토리 생성
WORKDIR /app

# requirements 복사 후 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 전체 소스 복사
COPY . .

# 포트 개방
EXPOSE 8000

# 서버 실행 명령
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]