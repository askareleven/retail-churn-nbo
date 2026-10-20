# 04 · Задачи проекта

**Всего:** 8 · **Готово:** 0 · **В работе:** 1 · **Не начато:** 7

## Задача 1 — Окружение и репозиторий 🔄 В РАБОТЕ
- [ ] Установить через Homebrew: Python 3.11, Git, Docker Desktop (macOS)
- [ ] Создать репо `retail-churn-nbo`, структуру папок, `pyproject.toml`
- [ ] Настроить ruff + pre-commit
- [ ] Первый коммит, .gitignore для `data/`
- [ ] Объяснить: что такое виртуальное окружение и зачем оно

## Задача 2 — Данные в ClickHouse
- [ ] Скачать H&M с Kaggle
- [ ] Docker-compose с ClickHouse, таблицы `transactions`, `customers`, `articles`
- [ ] Загрузка CSV, проверка количества строк
- [ ] Объяснить: почему MergeTree и ORDER BY

## Задача 3 — EDA
- [ ] Распределения, пропуски, сезонность
- [ ] Определить churn (нет покупок 30 дней после даты среза)
- [ ] Доля churn, выводы в ноутбук

## Задача 4 — Признаки (feature engineering)
- [ ] RFM: давность, частота, сумма
- [ ] Признаки по категориям и каналам
- [ ] SQL-витрина `features_churn`
- [ ] Проверка на утечки

## Задача 5 — Baseline и модель churn
- [ ] Split по времени
- [ ] Logistic Regression → LightGBM
- [ ] Метрики: ROC-AUC, PR-AUC, precision@k
- [ ] Всё в MLflow

## Задача 6 — NBO (следующее лучшее предложение)
- [ ] Baseline «популярное в категории»
- [ ] Модель кандидатов + ранжирование
- [ ] Метрика MAP@12

## Задача 7 — API и Docker
- [ ] FastAPI `/predict/churn`, `/recommend`
- [ ] pydantic-схемы, тесты pytest
- [ ] Dockerfile, запуск одной командой

## Задача 8 — Дашборд, CI и портфолио
- [ ] Streamlit-дашборд
- [ ] GitHub Actions: тесты + линтер
- [ ] README, скриншоты, пост, строка в резюме
