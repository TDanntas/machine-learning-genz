.PHONY: install test lint format clean

install:
    @echo "Instalando dependencias..."
    uv sync

test:
    @echo "Rodando testes..."
    uv run pytest

lint:
    @echo "Verificando código com Ruff..."
    uv run ruff check .

format:
    @echo "Formatando código..."
    uv run ruff format .

clean:
    @echo "Limpando arquivos temporários..."
    rm -rf .pytest_cache
    rm -rf .ruff_cache
    find . -type d -name "__pycache__" -exec rm -rf {} +
