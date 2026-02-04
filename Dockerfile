# Imagem base oficial do Python
FROM python:3.11-slim

# Define variáveis de ambiente
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Define diretório
WORKDIR /app

# Instala dependências
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copia apenas o requirements
COPY requirements.txt .

# Instala as dependências Python
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ ./src/

# Cria um usuário não-root
RUN adduser --disabled-password --gecos "" appuser && chown -R appuser /app
USER appuser

# Expõe a porta pro FastAPI
EXPOSE 8000

# Comando pra rodar a aplicação
CMD ["fastapi", "run", "src/main.py", "--port", "8000", "--host", "0.0.0.0"]