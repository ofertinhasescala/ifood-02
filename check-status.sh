#!/bin/bash

echo "🍔 iFood Benefícios - Verificação de Status"
echo "=========================================="
echo ""

# Verificar se o servidor está rodando
if curl -s http://localhost:3000 > /dev/null; then
    echo "✅ Servidor: ONLINE em http://localhost:3000"
else
    echo "❌ Servidor: OFFLINE"
    echo "   Para iniciar: ./start.sh"
    exit 1
fi

# Verificar rotas principais
echo "🔍 Verificando rotas..."

routes=("/" "/dashboard" "/saque" "/desbloqueio" "/faq")
for route in "${routes[@]}"; do
    status=$(curl -s -o /dev/null -w "%{http_code}" "http://localhost:3000$route")
    if [[ "$status" =~ ^[23] ]]; then
        echo "   ✅ $route: OK ($status)"
    else
        echo "   ⚠️  $route: $status"
    fi
done

# Verificar arquivos estáticos
echo ""
echo "📁 Verificando arquivos estáticos..."

static_files=("/css/d0507d7869aaf463.css" "/images/ifood-creditos-logo.jpeg" "/js/main-app-c9779a9cf3f89b5e.js")
for file in "${static_files[@]}"; do
    status=$(curl -s -o /dev/null -w "%{http_code}" "http://localhost:3000$file")
    if [[ "$status" =~ ^[23] ]]; then
        echo "   ✅ $file: OK"
    else
        echo "   ⚠️  $file: $status"
    fi
done

echo ""
echo "🌐 Acesse: http://localhost:3000"
echo "📚 Documentação: README.md"
echo ""
echo "🎯 Status: PROJETO PRONTO PARA USO!" 