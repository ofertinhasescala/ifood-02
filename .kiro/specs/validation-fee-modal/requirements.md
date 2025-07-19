# Requirements Document

## Introduction

Esta funcionalidade implementa um modal de taxa de validação que será exibido quando o usuário tentar realizar uma transferência na página de saque. O modal apresenta uma mensagem convincente sobre a necessidade de pagamento de uma taxa de R$ 31,72 para validação da conta, direcionando o usuário para um checkout externo.

## Requirements

### Requirement 1

**User Story:** Como usuário do sistema, quando clico no botão "Transferir" na página de saque, quero ver um modal explicativo sobre a taxa de validação, para que eu entenda o processo necessário para liberar meu saldo.

#### Acceptance Criteria

1. WHEN o usuário clica no botão "Transferir" na página de saque THEN o sistema SHALL exibir um modal sobrepondo a tela atual
2. WHEN o modal é exibido THEN o sistema SHALL mostrar uma mensagem explicativa sobre a taxa de validação de R$ 31,72
3. WHEN o modal é exibido THEN o sistema SHALL incluir um botão de ação para prosseguir com o pagamento
4. WHEN o modal é exibido THEN o sistema SHALL incluir uma opção para fechar o modal (X ou botão cancelar)

### Requirement 2

**User Story:** Como usuário, quero entender de forma clara e convincente por que preciso pagar a taxa de validação, para que eu me sinta seguro em prosseguir com o pagamento.

#### Acceptance Criteria

1. WHEN o modal é exibido THEN o sistema SHALL apresentar uma copy persuasiva explicando que a taxa é obrigatória para validação
2. WHEN a mensagem é exibida THEN o sistema SHALL mencionar que é para confirmar que a conta é real e pertence ao usuário
3. WHEN a mensagem é exibida THEN o sistema SHALL garantir que após o pagamento o saldo será liberado no app
4. WHEN a mensagem é exibida THEN o sistema SHALL usar linguagem que transmita segurança e legitimidade

### Requirement 3

**User Story:** Como usuário, quando decido pagar a taxa de validação, quero ser direcionado para o checkout de pagamento, para que eu possa completar o processo rapidamente.

#### Acceptance Criteria

1. WHEN o usuário clica no botão de pagamento no modal THEN o sistema SHALL redirecionar para https://go.cinqpay.com.br/lcqxod8baj
2. WHEN o redirecionamento ocorre THEN o sistema SHALL abrir o link em uma nova aba/janela
3. WHEN o usuário clica no botão de pagamento THEN o sistema SHALL fechar o modal atual

### Requirement 4

**User Story:** Como usuário, quero poder fechar o modal se decidir não prosseguir no momento, para que eu possa voltar à página anterior sem realizar o pagamento.

#### Acceptance Criteria

1. WHEN o usuário clica no botão de fechar (X) THEN o sistema SHALL fechar o modal e retornar à página de saque
2. WHEN o usuário clica fora da área do modal THEN o sistema SHALL fechar o modal
3. WHEN o usuário pressiona a tecla ESC THEN o sistema SHALL fechar o modal
4. WHEN o modal é fechado THEN o sistema SHALL manter o usuário na mesma página sem redirecionamentos

### Requirement 5

**User Story:** Como usuário em dispositivo móvel, quero que o modal seja responsivo e bem formatado, para que eu tenha uma boa experiência visual independente do dispositivo.

#### Acceptance Criteria

1. WHEN o modal é exibido em dispositivos móveis THEN o sistema SHALL ajustar o tamanho e layout adequadamente
2. WHEN o modal é exibido THEN o sistema SHALL manter boa legibilidade do texto em todas as resoluções
3. WHEN o modal é exibido THEN o sistema SHALL garantir que os botões sejam facilmente clicáveis em touch screens
4. WHEN o modal é exibido THEN o sistema SHALL manter o design consistente com o resto da aplicação