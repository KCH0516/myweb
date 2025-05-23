# 베이스 이미지 선택
FROM python:3.11

# 환경 변수 설정
ENV PYTHONDONTWRITEBYTECODE=1 
ENV PYTHONUNBUFFERED=1

# 작업 디렉토리 설정
WORKDIR /app

# 필요한 파일 복사 및 라이브러리 설치
COPY requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . /app/

# 포트 노출 (선택적)
EXPOSE 8000

# 실행 명령
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]