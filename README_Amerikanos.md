# Projeto Amerikanos — Infraestrutura de Banco de Dados MySQL

> **Referência documental:** 2026.02  
> **Escopo:** infraestrutura de servidor de banco de dados na AWS, sistema operacional Ubuntu Linux e administração MySQL.

## 1. Visão geral

O **Projeto Amerikanos** documenta um ambiente de banco de dados MySQL hospedado em uma instância **Amazon EC2**, na infraestrutura de nuvem **Amazon Web Services (AWS)**. O servidor utiliza **Ubuntu Linux** e é administrado por meio de ferramentas de linha de comando e da interface gráfica **MySQL Workbench**.

O documento de referência registra uma instância EC2 em execução, a configuração de um **endereço IP elástico**, o monitoramento de processos no Ubuntu e telas de administração do MySQL.

## 2. Tecnologias e componentes

| Camada | Tecnologia / recurso | Evidência documental |
|---|---|---|
| Nuvem | Amazon Web Services (AWS) | Console de administração AWS |
| Computação | Amazon Elastic Compute Cloud (EC2) | Instância em execução |
| Modelo de infraestrutura | IaaS | Servidor do projeto na EC2 |
| Sistema operacional | Ubuntu Linux | Sessão de terminal |
| Banco de dados | MySQL Community Server, série 8.4 | Saída de `mysql --version` |
| Administração | MySQL Workbench | Painéis de conexão, servidor e usuários |
| Endereçamento | Elastic IP | Tela de endereços IP elásticos |
| Monitoramento básico | `htop` | Tela de processos e consumo de recursos |

> A captura de terminal mostra o MySQL **8.4.13**. Essa versão corresponde ao registro visual do ambiente e pode ter sido alterada desde então.

## 3. Arquitetura do ambiente

```text
             Administrador autorizado
                      |
          AWS Console / MySQL Workbench
                      |
                Rede / acesso
                      |
          +-----------------------+
          | AWS / Amazon EC2       |
          | Ubuntu Linux          |
          | MySQL Community 8.4   |
          +-----------------------+
                      |
              Bancos de dados
```

**Observação:** o diagrama é uma representação conceitual dos componentes observados, não um desenho validado de VPC, sub-redes, regras de firewall ou topologia de acesso.

## 4. Infraestrutura AWS

O ambiente apresentado no documento utiliza:

- Uma **instância Amazon EC2** identificada com o projeto Amerikanos, mostrada como em execução.
- Um **Elastic IP**, apresentado no console AWS.
- Um **servidor Ubuntu Linux**, acessado por terminal.

A documentação fornecida **não confirma** tipo de instância, região, tamanho de disco, VPC, sub-rede, grupos de segurança, política de snapshots ou mecanismo de alta disponibilidade.

## 5. Administração e monitoramento do Ubuntu

Os seguintes comandos aparecem no material de referência:

### Visualizar processos e consumo de recursos

```bash
htop
```

### Verificar a versão do cliente MySQL instalado

```bash
mysql --version
```

### Comandos adicionais úteis (sugestões operacionais)

Estes comandos **não são evidência de procedimentos já implementados** no projeto; são exemplos para administração futura:

```bash
# Verificar o estado do serviço MySQL
sudo systemctl status mysql

# Consultar espaço em disco
df -h

# Consultar memória disponível
free -h

# Consultar logs do serviço MySQL
sudo journalctl -u mysql --no-pager -n 100
```

## 6. Banco de dados MySQL

O ambiente apresenta o **MySQL Community Server 8.4**, com telas de administração no **MySQL Workbench**. As capturas mostram o painel de informações do servidor, indicadores de execução e a área de **Users and Privileges**.

### Verificações administrativas sugeridas

Execute com uma conta autorizada:

```sql
-- Versão do servidor MySQL
SELECT VERSION();

-- Identificação do servidor
SELECT @@hostname, @@port;

-- Bancos de dados visíveis para a conta
SHOW DATABASES;

-- Usuário autenticado e conta efetiva
SELECT USER(), CURRENT_USER();
```

> O documento não apresenta o inventário das tabelas, o modelo entidade-relacionamento, as rotinas SQL nem a estrutura de permissões por usuário.

## 7. Segurança

A documentação contém a interface **Users and Privileges** do MySQL Workbench, indicando o uso de recursos administrativos de usuários e privilégios. Ela **não comprova** quais permissões estão concedidas ou quais políticas de segurança estão aplicadas.

**Recomendações para evolução do ambiente:**

- Restringir acesso à instância e à porta MySQL apenas a origens autorizadas.
- Evitar expor o MySQL diretamente à internet; preferir acesso privado ou túnel seguro.
- Aplicar o princípio do menor privilégio às contas do banco.
- Utilizar autenticação forte e armazenar segredos fora do repositório Git.
- Definir rotinas de backup e testar restaurações periodicamente.
- Atualizar o sistema operacional e o MySQL conforme uma política de manutenção.

**Não publicar** senhas, chaves SSH, arquivos `.pem`, credenciais, endereços internos sensíveis ou detalhes de conexão em repositórios públicos.

## 8. Estrutura sugerida do repositório

A estrutura abaixo é **proposta**, não extraída do documento:

```text
amerikanos-mysql/
├── README.md
├── docs/
│   ├── arquitetura.md
│   ├── infraestrutura-aws.md
│   ├── administracao-mysql.md
│   └── seguranca.md
├── sql/
│   ├── ddl/
│   ├── dml/
│   └── consultas/
├── scripts/
│   └── verificacoes/
└── .gitignore
```

## 9. Itens pendentes de documentação

- [ ] Região AWS, tipo de instância e dimensionamento de armazenamento.
- [ ] Versão exata do Ubuntu e configurações do sistema.
- [ ] Topologia de rede, VPC, sub-redes e regras de acesso.
- [ ] Modelo lógico e físico do banco de dados.
- [ ] Scripts de criação e manutenção de objetos MySQL.
- [ ] Matriz de usuários, perfis e permissões.
- [ ] Estratégia de backup, retenção e recuperação.
- [ ] Monitoramento, alertas e métricas de desempenho.
- [ ] Procedimentos de atualização e recuperação de desastres.

## 10. Fonte documental

**Documento:** `PRINCIPAIS CARACTERÍSTICAS.docx`  
**Título interno:** *PRINCIPAIS CARACTERÍSTICAS | SERVIDOR AWS EC2*  
**Projeto:** *PROJETO AMERIKANOS DE BANCO DE DADOS – MYSQL (2026.02)*

- **Página 1:** instância EC2, Elastic IP e referência ao `htop`.
- **Página 2:** captura do `htop` e saída de `mysql --version`.
- **Página 3:** telas de administração e indicadores do servidor no MySQL Workbench.
- **Página 4:** interface de usuários e privilégios no MySQL Workbench.

---

**Status documental:** infraestrutura apresentada em operação nas capturas fornecidas. O estado atual do ambiente não foi verificado em tempo real.
