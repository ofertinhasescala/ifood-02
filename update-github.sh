#!/bin/bash

echo "🚀 Atualizando repositório GitHub - ifood-02"
echo "============================================"
echo ""

# Verificar se estamos em um repositório git
if [ ! -d ".git" ]; then
    echo "📁 Inicializando repositório Git..."
    git init
    git remote add origin https://github.com/ofertinhasescala/ifood-02.git
fi

echo "📋 Adicionando arquivos..."

# Adicionar arquivos principais
git add .
git add public/
git add server.py
git add vercel.json
git add start.sh
git add check-status.sh
git add .gitignore

echo "💾 Fazendo commit..."
git commit -m "🚀 Atualização completa do projeto iFood Créditos

- ✅ Página inicial com tema iFood completo
- ✅ Servidor Python customizado funcional  
- ✅ Scripts de automação (start.sh, check-status.sh)
- ✅ Configuração Vercel para deploy
- ✅ Estrutura organizada e otimizada

Rotas disponíveis:
- Home: /
- Dashboard: /dashboard  
- Saque: /saque
- Desbloqueio: /desbloqueio
- FAQ: /faq"

echo "📤 Enviando para GitHub..."
git push origin main --force

echo ""
echo "✅ Repositório atualizado com sucesso!"
echo "🌐 Acesse: https://github.com/ofertinhasescala/ifood-02"
echo "" 