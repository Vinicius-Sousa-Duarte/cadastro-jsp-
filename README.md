
# Projeto de Cadastro Web (MVC)

Uma aplicação web simples desenvolvida em Java com JSP e Servlets para simular uma tela de cadastro de usuários. O projeto segue a arquitetura MVC (Model-View-Controller) e utiliza o Maven para gerenciamento de dependências e build.

## Tecnologias Utilizadas

  * Java 17
  * Jakarta EE 9.1 (Servlet 5.0, JSP 3.0)
  * Apache Tomcat 10.1.x
  * Apache Maven 3.8+
  * JSTL 2.0 (Jakarta Standard Tag Library)
  * HTML5 / CSS3

## Pré-requisitos

Antes de começar, você precisará ter as seguintes ferramentas instaladas em sua máquina:

  * **JDK 17 ou superior:** [OpenJDK](https://jdk.java.net/17/) ou [Oracle JDK](https://www.google.com/search?q=https://www.oracle.com/java/technologies/downloads/%23java17).
  * **Apache Maven:** Geralmente já vem integrado em IDEs como o NetBeans.
  * **Apache Tomcat 10.1.x ou superior:** [Faça o download aqui](https://tomcat.apache.org/download-10.cgi). Não precisa instalar, apenas descompactar em uma pasta de sua preferência.
  * **Uma IDE Java (Apache NetBeans é recomendado):** [Faça o download aqui](https://netbeans.apache.org/front/main/download/).

## Como Executar o Projeto

Siga os passos abaixo para configurar e executar a aplicação localmente.

### 1\. Clone o Repositório

```bash
git clone https://github.com/Vinicius-Sousa-Duarte/cadastro-jsp.git
cd cadastro-jsp
```

### 2\. Abra o Projeto na IDE

  * Inicie o **Apache NetBeans**.
  * Vá em `Arquivo > Abrir Projeto...`.
  * Navegue até a pasta onde você clonou o repositório e selecione-a. O NetBeans reconhecerá o `pom.xml` e abrirá o projeto como um projeto Maven.

### 3\. Configure o Servidor Tomcat no NetBeans

Se esta for a primeira vez, você precisará registrar seu servidor Tomcat na IDE:

1.  Vá para a aba **Serviços** (`Ctrl+5` ou `Janela > Serviços`).
2.  Clique com o botão direito em **Servidores** e selecione **Adicionar Servidor...**.
3.  Escolha **Apache Tomcat or TomEE** e clique em `Próximo`.
4.  Em "Localização do Servidor", clique em **Procurar...** e aponte para a pasta onde você descompactou o Tomcat.
5.  Crie um usuário e senha (ex: `admin`/`admin`) para o servidor e clique em `Finalizar`.

### 4\. Limpe e Construa o Projeto

É uma boa prática garantir que todas as dependências sejam baixadas e o projeto seja compilado do zero.

  * Clique com o botão direito no nome do projeto na aba **Projetos**.
  * Selecione **Limpar e Construir**.

### 5\. Execute a Aplicação

  * Clique com o botão direito no projeto novamente.
  * Selecione **Executar**.

O NetBeans irá iniciar o servidor Tomcat, implantar a aplicação (fazer o *deploy*) e abrir seu navegador padrão na página inicial do projeto.

A URL deverá ser: **http://localhost:8080/cadastro/**

## Estrutura do Projeto (MVC)

O código está organizado seguindo o padrão Model-View-Controller:

  * **Model:** Representa os dados da aplicação.
      * Local: `src/main/java/com/umc/inscricao/model/Usuario.java`
  * **View:** Camada de apresentação (páginas JSP).
      * Local: `src/main/webapp/`
  * **Controller:** Processa as requisições do usuário (Servlet).
      * Local: `src/main/java/com/umc/inscricao/controller/CadastroServlet.java`
