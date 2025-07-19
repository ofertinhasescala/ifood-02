#!/bin/bash

echo "🍔 iFood Benefícios - Servidor Local"
echo "==================================="
echo ""

# Verificar se a pasta public existe
if [ ! -d "public" ]; then
    echo "❌ Pasta public não encontrada!"
    echo "📁 Criando estrutura de pastas..."
    mkdir -p public
    cp -r "1 parte"/* public/
    echo "✅ Arquivos copiados para public/"
fi

echo "🚀 Iniciando servidor em http://localhost:3000"
echo ""
echo "📋 Rotas disponíveis:"
echo "   🏠 Home: http://localhost:3000/"
echo "   📊 Dashboard: http://localhost:3000/dashboard"
echo "   💰 Saque: http://localhost:3000/saque"
echo "   🔓 Desbloqueio: http://localhost:3000/desbloqueio"
echo ""
echo "⚡ Pressione Ctrl+C para parar o servidor"
echo ""

# Iniciar o servidor Python
python3 server.py 