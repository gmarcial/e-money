# Component:

Esse documento é um introdutório sobre a base a seguida no projeto, cada módulo terá seu próprio design, logo descrito detalhadamente separado em outro documento.

## Introdução

O objetivo é projetar um design de alto nível, definindo assim os componentes, relacionamentos e responsabilidades base, que darão suporte para as implementações.

Claro, cada implementação/funcionalidade será projetada individualmente,  isso pode levar a novos designs, evoluir e serem diferentes, não é o objetivo aqui a ambição de projetar tudo ponta a ponta(¹), e sim, as partes mais importantes inicialmente, a base para início do desenvolvimento e poder evoluir.

As premissas
Idiomatic Go(²).
Construir uma boa base de solução para suportar o projeto.

OBS: 
¹ Acredito que não conseguimos prever tudo e devemos aprender durante o caminho e evoluir, mas para que isso aconteça, devemos ter planejamento minimo no inicio para permitir isso e não sai tudo descontroladamente.
² Venho de culturas diferentes do go, onde tem outros costumes, standards, filosofias, convenções e formas de fazer as coisas. Então quero tomar cuidado para resolver as coisas na perspectiva de go, somente trazendo os conceitos e fundamentos em comum para qualquer frente.

## Base

Mesmo sendo um monolito, é pretendido que seja modular, quebrando os seus devidos domínios em módulos, os isolando e apenas expondo apis bem definidas de suas funcionalidades, não criando inter-relação de mais baixo nível ou acoplamento entre eles, aproveitando e encaixando bem em go com a estruturação de pacotes e modules.

A interação entre os módulos serão através de eventos, onde publicadores não conhecem o inscritos interessados nos eventos, publicando sem saber se alguem e quem irá consumir, mantendo desacoplados.

Para aprofundar mais ainda o isolamento a nível de persistência/dados, cada módulo terá seu próprio schema no banco de dados e apenas consultas podem intercalar em diferentes schemas, que mesmo todos módulos não seguindo CQRS, as consultas serão separadas.

E o projeto como um todo seguirá o design arquitetural de “ports and adapters”, mas internamente cada módulo poderá ter seu próprio design conforme necessário, possibilitado por cada módulo está desacoplado um do outro e de suas dependências.

Alem de seguir o [project-layout](https://github.com/golang-standards/project-layout.)

Os pacotes que compõem o projeto são um módulo ou auxiliar aos mesmos, sendo a seguinte descrição: 
Módulos:  Representa um domínio do problema que está sendo resolvido, contendo primariamente as regras de negócio, a definição das portas secundárias/internas necessárias, exposição das funcionalidades através de uma api bem definidas que representam as portas primárias, pacotes auxiliares que só são necessários no contexto deste módulo e tudo aquilo que for necessário aquele domínio. 
Auxiliar: Genéricos a um domínio ou regra de negócio, pode estar internamente a um módulo ou no mesmo nível de um, sendo utilizado por mais de um módulo, adaptadores das portas primárias e secundárias, infraestrutura, cross-cutting, utilitários, base de implementações e etc.

Por acreditar ser mais idiomático, não haverá separação pelos tipos pacotes, como colocar os módulos em um pacote “modules” e as portas e os adaptadores também não, como boa parte do projeto, deixando as intenções explícitas(¹).

OBS: ¹O que você acha?

### Exemplo:
![Projetar a solução](https://user-images.githubusercontent.com/17557482/91009366-75b3a880-e5ae-11ea-8feb-fedca66e6bca.jpg)

# Aplicado ao projeto

Alguns dos módulos identificados até agora foram “account” e “plataform”, ficando em aberto um genérico para identidade/acesso e uma maior granularidade:

## Account: 

Responsável por tudo que envolver a conta e-money, des a sua abertura, encerramento até as operações bancárias e etc.

Boa parte das suas operações serão assíncronas, para manter a consistência através da transações efetuadas e como responder corretamente ao usuário.

Dado o contexto este módulo terá um design arquitetural CQRS e em análise a utilização de event source. 

## Platform:

Responsável por tudo que envolver a administração dos serviços disponíveis através da plataforma, como backoffice, algum responsável estará operando.

Atualmente somente operações síncronas, tendo como design uma abordagem mais simples, com a api composta por “use cases”, que representam a funcionalidade,  manipuladores das operações, orquestrando os componentes para execução.

### Exemplo:
![implestruture](https://user-images.githubusercontent.com/17557482/91009567-d642e580-e5ae-11ea-8937-b10c3e0bdfae.png)

# Principais componentes

## Web Api

Camada fina, sua responsabilidade é ser um adapter das funcionalidades da aplicação a serem expostas, sendo a mais simples possível.

Os módulos com suas portas definidas de forma coesa e bem definida, de forma que basta plugar a sua api.

Toda parte referente ao porta primária http.

![webapi](https://user-images.githubusercontent.com/17557482/91009659-04c0c080-e5af-11ea-9af4-1d42d3e3eeb3.png)

## Módulos

Basicamente cada módulo conforme os seus requisitos tem seu próprio design arquitetural, mesmo tendo um certo padrão entre eles. 

Contém os pacotes necessários para sua funcionalidade, seja das regras de negócio.

Caso os modulos precisarem se comunicar, ira ocorrer atraves de eventos de alguem em comum aos dois, servindo de interface, nenhum conhecendo o outro.

Deve expor como portas uma api bem definida das funcionalidades, especificando sua entrada e saída esperada e pronta para ser utilizada.

Panics só serão usados em casos excepcionais, buscando padronizar um modelo de error, tendo um padrão de retorno das operações, englobando os casos de sucesso e erro ocorrido em qual nível das operações.

Normal separação de responsabilidade, isolando principalmente o domínio e suas regras de negócio dos demais, buscando o manter o mais puro possível.

![modules](https://user-images.githubusercontent.com/17557482/91009678-130edc80-e5af-11ea-93df-2804e67f74cc.png)

# Database

O banco está organizado por schemas, onde cada um representa um módulo diferente da aplicação, deixando os dados de cada módulo isolado um dos outros, onde eles não se relacionam ou se conhecem, apenas em casos de consultas, não relacionados às regras de negócio.

![database](https://user-images.githubusercontent.com/17557482/91009696-202bcb80-e5af-11ea-9227-b56a11a3e1d6.png)




