# Hello World com Docker Otimizado

Este é um projeto simples feito como parte do curso **Full Cycle**, com foco em **otimização de imagens Docker**. A aplicação é um "Hello, World!" escrito em Go, construído com uma imagem mínima (`scratch`) utilizando **multi-stage builds**.

## 📦 Objetivo

Demonstrar como criar uma imagem Docker extremamente enxuta a partir de um binário Go, usando a técnica de **multi-stage build** para otimização de tamanho e segurança.

## 🛠️ Tecnologias usadas

- [Go (Golang)](https://golang.org/) — versão 1.24
- Docker
- Imagem base `scratch` (imagem mínima, sem shell, sem bibliotecas extras)
