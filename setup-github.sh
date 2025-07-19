#!/bin/bash

echo "🔑 Configuração do GitHub Token"
echo "================================"
echo ""
echo "1. Vá para: https://github.com/settings/tokens"
echo "2. Clique em 'Generate new token (classic)'"
echo "3. Marque a opção 'repo'"
echo "4. Copie o token gerado"
echo ""
echo -n "Cole seu token aqui: "
read -s TOKEN
echo ""
echo ""

if [ -z "$TOKEN" ]; then
    echo "❌ Token não fornecido!"
    exit 1
fi

echo "🔧 Configurando remote com token..."
git remote set-url origin https://$TOKEN@github.com/ofertasescaladas20/ifood-02.git

echo "🚀 Fazendo push para o GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Sucesso! Repositório atualizado no GitHub!"
    echo "🌐 Acesse: https://github.com/ofertasescaladas20/ifood-02"
else
    echo ""
    echo "❌ Erro no push. Verifique o token e tente novamente."
fi