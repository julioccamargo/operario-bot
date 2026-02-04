# Operário Bot 🐓⚽

![Python Version](https://img.shields.io/badge/python-3.11%2B-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Status](https://img.shields.io/badge/status-development-orange)

> **Engajamento, automação e informação para a torcida do Operário Futebol Clube (Galo).**

O **Operário Bot** é uma solução open-source de atendimento automatizado via WhatsApp. O objetivo é modernizar a comunicação do clube, oferecendo respostas 24/7 sobre jogos, ingressos e tabela, além de servir como uma fundação tecnológica para futuros planos de Sócio-Torcedor.

## 🏗 Arquitetura

O projeto foi desenhado focando em performance e baixo custo de infraestrutura (Cloud Native), utilizando a camada gratuita da Oracle Cloud (OCI).

### Tech Stack
* **Core:** [Python](https://www.python.org/) + [FastAPI](https://fastapi.tiangolo.com/) (Alta performance assíncrona).
* **WhatsApp Gateway:** [Evolution API](https://github.com/EvolutionAPI/evolution-api).
* **Banco de Dados:** SQLite (MVP) -> PostgreSQL (Produção).
* **Infraestrutura:** Docker & Docker Compose.
* **Hospedagem:** Oracle Cloud Infrastructure (OCI) - ARM Ampere.

## 🚀 Funcionalidades (MVP)

- [ ] 📅 Informar data e hora do próximo jogo.
- [ ] 🎟 Informações sobre preço e compra de ingressos.
- [ ] 🏆 Tabela atualizada do campeonato.
- [ ] 📢 Broadcast de notícias urgentes (via Admin).

## 🔧 Como Rodar Localmente

### Pré-requisitos
* Docker & Docker Compose
* Python 3.11+
* Git

### Instalação

1.  **Clone o repositório**
    ```bash
    git clone [https://github.com/julioccamargo/operario-bot.git](https://github.com/julioccamargo/operario-bot.git)
    cd operario-bot
    ```

2.  **Configure as Variáveis de Ambiente**
    ```bash
    cp .env.example .env
    # Edite o arquivo .env com suas configurações locais
    ```

3.  **Suba a Infraestrutura (Docker)**
    ```bash
    docker-compose -f infra/docker-compose.yml up -d
    ```

4.  **Execute a API**
    ```bash
    pip install -r requirements.txt
    fastapi dev src/main.py
    ```

## 🤝 Contribuição

Contribuições são bem-vindas! Por favor, siga o padrão de **Conventional Commits** para suas mensagens de commit.

1.  Fork o projeto
2.  Crie sua Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit suas mudanças (`git commit -m 'feat: Add some AmazingFeature'`)
4.  Push para a Branch (`git push origin feature/AmazingFeature`)
5.  Abra um Pull Request

## 📄 Licença

Distribuído sob a licença MIT. Veja `LICENSE` para mais informações.

---
Feito por [Julio Camargo](https://github.com/julioccamargo)