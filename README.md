# Анализатор качества репозиториев

[![Actions Status](https://github.com/aydys/rails-project-lvl4/workflows/hexlet-check/badge.svg)](https://github.com/aydys/rails-project-lvl4/actions) [![Actions Status](https://github.com/aydys/rails-project-lvl4/workflows/CI/badge.svg)](https://github.com/aydys/rails-project-lvl4/actions)

Проект, который помогает автоматически следить за качеством репозиториев на гитхабе. Он отслеживает изменения и прогоняет их через встроенные анализаторы. Затем формирует отчеты и отправляет их пользователю.

### Системные требования

- Ruby
- Node.js
- Yarn
- SQLite3
- [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli#download-and-install)

### Установка

```sh
make setup
make seed
make tests # run tests
make start # run server http://localhost:3000
```

### Deploy

Добавить базу данных

```sh
heroku addons:create heroku-postgresql:hobby-dev
```

Подготовить необходимые переменные окружения:

```sh
heroku config:set SECRET_KEY_BASE=$(rake secret)
heroku config:set RACK_ENV=production
heroku config:set RAILS_ENV=production
heroku config:set RAILS_LOG_TO_STDOUT=enabled
heroku config:set NODE_ENV=production
```

Развертывание приложения на heroku

```sh
make deploy
```
