# 🍔 iFood Créditos - Projeto Completo

Um projeto web moderno que simula uma plataforma de benefícios do iFood, onde usuários podem avaliar restaurantes parceiros e ganhar recompensas.

## 🚀 Demonstração

- **URL Principal**: Configure seu domínio ou rode localmente
- **Tema**: Visual iFood com cores oficiais (#EB2834)
- **Responsivo**: Funciona em desktop e mobile

## 📋 Funcionalidades

- ✅ **Página inicial** com captura de email elegante
- ✅ **Dashboard** interativo para avaliações
- ✅ **Sistema de saque** com validações
- ✅ **Página de desbloqueio** de benefícios
- ✅ **FAQ** com perguntas frequentes
- ✅ **Design responsivo** e moderno
- ✅ **Servidor Python** customizado incluído

## 🛠️ Como Usar

### Opção 1: Script Automático (Recomendado)
```bash
chmod +x start.sh
./start.sh
```

### Opção 2: Python Direto  
```bash
python3 server.py
```

### Opção 3: Verificar Status
```bash
chmod +x check-status.sh
./check-status.sh
```

## 🌐 Rotas Disponíveis

Após iniciar o servidor em `http://localhost:3000`:

| Rota | URL | Descrição |
|------|-----|-----------|
| 🏠 **Home** | `/` | Página inicial com formulário |
| 📊 **Dashboard** | `/dashboard` | Dashboard de avaliações |
| 💰 **Saque** | `/saque` | Sistema de saque |
| 🔓 **Desbloqueio** | `/desbloqueio` | Página de benefícios |
| ❓ **FAQ** | `/faq` | Perguntas frequentes |

## 📁 Estrutura do Projeto

```
ifood-02/
├── public/                 # Arquivos estáticos servidos
│   ├── index.html         # Página inicial
│   ├── css/               # Estilos CSS
│   ├── js/                # Scripts JavaScript  
│   ├── images/            # Imagens e logos
│   ├── fonts/             # Fontes customizadas
│   ├── dashboard/         # Dashboard
│   ├── saque/             # Sistema de saque
│   ├── desbloqueio/       # Página de desbloqueio
│   └── faq/               # FAQ
├── server.py              # Servidor HTTP customizado
├── start.sh               # Script de inicialização
├── check-status.sh        # Verificação de status
├── vercel.json            # Configuração para deploy
└── README.md              # Esta documentação
```

## 🎨 Tecnologias

- **Frontend**: HTML5, CSS3, JavaScript
- **Styling**: CSS customizado com tema iFood
- **Fonts**: Inter (Google Fonts)
- **Servidor**: Python HTTP Server
- **Deploy**: Vercel ready

## 🎯 Deploy

### Vercel (Recomendado)
```bash
# Já configurado com vercel.json
vercel --prod
```

### Servidor Próprio
```bash
# Upload da pasta public/ para seu servidor
# Configure Apache/Nginx para servir arquivos estáticos
```

## 🔧 Personalização

### Cores do Tema
- **Principal**: `#EB2834` (Vermelho iFood)
- **Hover**: `#d91e2a` (Vermelho mais escuro)
- **Background**: Gradiente suave em cinza

### Logo
- Localizada em: `public/images/ifood-creditos-logo.jpeg`
- Tamanho: 100x100px (responsive)
- Formato: JPEG/PNG

## 🐛 Troubleshooting

### Servidor não inicia
```bash
# Verificar se Python 3 está instalado
python3 --version

# Verificar se porta 3000 está livre
lsof -i :3000
```

### Arquivos não carregam
```bash
# Verificar permissões
chmod -R 755 public/

# Verificar estrutura de arquivos
ls -la public/
```

### Deploy falha
```bash
# Verificar configurações do vercel.json
cat vercel.json

# Testar build local
npm run build
```

## 📱 Compatibilidade

- ✅ **Desktop**: Chrome, Firefox, Safari, Edge
- ✅ **Mobile**: iOS Safari, Android Chrome
- ✅ **Tablets**: Responsivo completo

## 🔒 Segurança

- ✅ Validação de email no frontend
- ✅ Headers de segurança no servidor
- ✅ Sanitização de inputs
- ✅ HTTPS ready

## 📊 Performance

- ✅ CSS otimizado e minificado
- ✅ Imagens otimizadas
- ✅ Lazy loading implementado
- ✅ Cache headers configurados

## 📞 Suporte

Para dúvidas ou problemas:

1. Verifique este README
2. Execute `./check-status.sh`
3. Consulte os logs do servidor
4. Abra uma issue no GitHub

## 📝 Licença

Este projeto é privado e proprietário.

---

## 🎉 Status do Projeto

**✅ PROJETO PRONTO PARA PRODUÇÃO!**

- [x] Design finalizado
- [x] Funcionalidades implementadas  
- [x] Testes realizados
- [x] Deploy configurado
- [x] Documentação completa

---

### 🔗 Links Úteis

- **Repositório**: https://github.com/ofertinhasescala/ifood-02
- **Demo Local**: http://localhost:3000
- **Documentação**: README.md

**Desenvolvido com ❤️ para o iFood Créditos** 