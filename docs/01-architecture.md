# 01 · Архитектура проекта «Retail Churn & NBO»

**Идея:** по истории покупок клиента (открытый датасет H&M, Kaggle) предсказываем
1) **Churn** — уйдёт ли клиент (нет покупок 30 дней), 2) **NBO** — что предложить следующим.
Результат: API + дашборд + воспроизводимый пайплайн.

## Флоу
```
Kaggle H&M CSV → ClickHouse (raw) → SQL-фичи (витрина) → обучение (LightGBM)
   → MLflow (эксперименты, модель) → FastAPI (/predict) → Streamlit-дашборд
        ↑ GitHub Actions: тесты + линтер + сборка Docker на каждый push
```

## Стек (и зачем)
| Слой | Инструмент | Почему |
|---|---|---|
| Данные | ClickHouse (Docker) | уже знаком, быстро на 30M+ строк |
| Анализ | Python 3.11, pandas, numpy | база |
| ML | scikit-learn → LightGBM | baseline → сильная модель |
| Эксперименты | MLflow | история запусков и метрик |
| API | FastAPI + pydantic | стандарт для ML-сервисов |
| UI | Streamlit | демо за вечер |
| Упаковка | Docker, docker-compose | «запускается одной командой» |
| Качество | pytest, ruff, pre-commit, GitHub Actions | как в команде |

## Структура папок
```
retail-churn-nbo/
├─ CLAUDE.md            # правила для ИИ (см. 02)
├─ docs/                # эти 6 документов
├─ data/                # raw/, processed/ — в .gitignore
├─ sql/                 # DDL, витрины признаков
├─ notebooks/           # EDA, эксперименты (нумерованные)
├─ src/retail/          # data/, features/, models/, api/
├─ app/                 # Streamlit
├─ tests/
├─ Dockerfile · docker-compose.yml · pyproject.toml · Makefile · README.md
```

## Ключевые решения
- Валидация **по времени** (train — прошлое, test — будущее), не случайный split: иначе утечка данных.
- Логика в `src/`, ноутбуки только для исследования.
