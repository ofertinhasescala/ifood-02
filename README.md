# 🍽️ iFood Benefícios - Projeto Local

Este projeto é uma aplicação web que simula uma plataforma de avaliação de restaurantes parceiros do iFood com sistema de recompensas.

## 🚀 Como Rodar o Projeto

### Opção 1: Script Automático (Recomendado)
```bash
./start.sh
```

### Opção 2: Servidor Python Direto
```bash
python3 server.py
```

### Opção 3: Comando Manual
```bash
cd public && python3 -m http.server 3000
```

## 📋 Rotas Disponíveis

Após iniciar o servidor, você pode acessar:

- **🏠 Home**: http://localhost:3000/
- **📊 Dashboard**: http://localhost:3000/dashboard
- **💰 Saque**: http://localhost:3000/saque  
- **🔓 Desbloqueio**: http://localhost:3000/desbloqueio

## 🛠️ Estrutura do Projeto

```
├── public/                 # Arquivos estáticos servidos
│   ├── index.html         # Página inicial
│   ├── css/               # Estilos CSS
│   ├── js/                # Scripts JavaScript
│   ├── images/            # Imagens e assets
│   ├── fonts/             # Fontes customizadas
│   ├── dashboard/         # Página do dashboard
│   ├── saque/             # Página de saque
│   └── desbloqueio/       # Página de desbloqueio
├── docs/                  # Documentação do projeto
├── server.py              # Servidor HTTP customizado
├── start.sh               # Script de inicialização
└── README.md              # Este arquivo
```

## 🎯 Funcionalidades

- ✅ Página de captura de email
- ✅ Dashboard com avaliação de 5 restaurantes
- ✅ Sistema de recompensas (R$ 20 por avaliação)
- ✅ Saldo virtual progressivo (até R$ 100)
- ✅ Design responsivo
- ✅ Animações e feedback visual
- ✅ Sistema de navegação completo

## 🔧 Tecnologias Utilizadas

- **Frontend**: HTML5, CSS3, JavaScript
- **Styling**: CSS customizado com design system
- **Fonts**: Inter (Google Fonts)
- **Icons**: SVG customizados
- **Servidor**: Python HTTP Server

## 📱 Compatibilidade

- ✅ Desktop (Chrome, Firefox, Safari, Edge)
- ✅ Mobile (iOS Safari, Android Chrome)
- ✅ Tablets

## 🚦 Status do Projeto

🟢 **Pronto para uso** - Todas as funcionalidades principais implementadas

---

**Desenvolvido para fins educacionais e demonstrativos.**