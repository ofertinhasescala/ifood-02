# 🚀 Guia de Execução - iFood Benefícios

## Status Atual
✅ **Servidor rodando**: http://localhost:3000

## Como Acessar

### 1. Verificar se o servidor está rodando
```bash
curl http://localhost:3000
```

### 2. Acessar no navegador
Abra seu navegador e acesse: **http://localhost:3000**

### 3. Testar o fluxo completo
1. **Página inicial**: Digite um email válido
2. **Dashboard**: Avalie os 5 restaurantes
3. **Saque**: Acesse a página de saque
4. **Desbloqueio**: Teste a funcionalidade

## Comandos Úteis

### Iniciar o servidor
```bash
# Opção 1: Script automático
./start.sh

# Opção 2: Python direto
python3 server.py

# Opção 3: Servidor simples
cd public && python3 -m http.server 3000
```

### Verificar status
```bash
./check-status.sh
```

### Parar o servidor
```bash
# Encontrar o processo
ps aux | grep python | grep server.py

# Matar o processo (substitua PID pelo número do processo)
kill [PID]

# Ou use Ctrl+C no terminal onde está rodando
```

## Troubleshooting

### Porta 3000 ocupada
```bash
# Verificar o que está usando a porta
lsof -i :3000

# Matar processo na porta 3000
kill -9 $(lsof -t -i:3000)
```

### Erro de permissão nos scripts
```bash
chmod +x start.sh
chmod +x check-status.sh
```

### Python não encontrado
```bash
# Verificar versão do Python
python3 --version

# Instalar Python (macOS)
brew install python3
```

## URLs de Teste

- **Home**: http://localhost:3000/
- **Dashboard**: http://localhost:3000/dashboard
- **Saque**: http://localhost:3000/saque
- **Desbloqueio**: http://localhost:3000/desbloqueio
- **FAQ**: http://localhost:3000/faq

## Logs e Debug

### Ver logs do servidor
O servidor Python mostra logs no terminal onde foi iniciado.

### Debug no navegador
1. Abra as DevTools (F12)
2. Vá para a aba Console
3. Veja erros JavaScript ou de rede

### Limpar dados do navegador
```javascript
// No console do navegador
localStorage.clear();
sessionStorage.clear();
```