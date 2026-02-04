from fastapi import FastAPI

app = FastAPI(
    title="Operário Bot API",
    description="API de automação para o Operário FC",
    version="0.1.0"
)

@app.get("/")
async def health_check():
    """
    Endpoint para verificar API.
    """
    return {
        "status": "online",
        "message": "Galo tá ON! 🐓⚽",
        "service": "Operário Bot Core"
    }