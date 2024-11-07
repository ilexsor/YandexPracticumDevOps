# Momo Store aka Пельменная №2

Проект состоит из двух репозиториев
1. https://gitlab.praktikum-services.ru/std-ext-004-43/momo-store отвечает за код приложения
2. https://gitlab.praktikum-services.ru/std-ext-004-43/momo-store-infrastructure отвечает за инфраструктуру и развертывание в кубернетис (Через терраформ поднимается кластер кубернетиса с нодой)
В инфраструктурном репозитории также описаны Helm чарты и пайплайн для сборки

Приложение доступно по https://std-ext-004-43.k8s.praktikum-services.tech

Есть проблема, по какой-то причине не работает загрузка страницы

<img width="900" alt="image" src="https://user-images.githubusercontent.com/9394918/167876466-2c530828-d658-4efe-9064-825626cc6db5.png">

## Frontend

```bash
npm install
NODE_ENV=production VUE_APP_API_URL=http://localhost:8081 npm run serve
```

## Backend

```bash
go run ./cmd/api
go test -v ./... 
```
