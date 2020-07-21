# e-Money

Um valor monetário representado através de créditos eletrônicos que tem finalidade servir de moeda apenas dentro de sua plataforma, onde é movimentado e utilizado para realização de pagamentos que deseje usufruir dentro da plataforma e-money.

A plataforma utiliza e-money em sua base ser um sistema de pagamentos em comum de serviços, produtos e etc de entidades que pertencem e participam da plataforma, sendo os usuários da plataforma consumindo os de dentro serviços da plataforma.

Ex: Pagar a passagem de ônibus.

Para estar disponível na plataforma, é preciso se integrar ao hub.


---

## Finalidade
O projeto tem como objetivo a sua utilização como trabalho de conclusão de curso e laboratório de estudo e aprendizado, mas aberto a gerar outros resultados como consequência. 

### Tema
O trabalho tem como essencia resolver um problema mesmo que ficticio utilizando tecnologia, aplicando um processo de engenharia de software a fim obter uma solução que venha a demonstrar valor no contexto onde foi aplicada e principalmente aprender.

### Agradecimentos
Agradecimentos e referência ao orientador e mentor do trabalho [Gilvani Alves](https://www.linkedin.com/in/gilvani-alves-32754342/), especialista em redes de computadores e teleprocessamento e mestre em engenharia elétrica.

### Observação
Por hora o projeto só vai contar com o desenvolvimento e entrega do backend, ficando aberto a possibilidade das demais partes como clientes mobile e web.

Quem tiver vontade e disposição de participar contribuindo com evolução do projeto para outros horizontes, seja na parte de frontend e outras demais possibilidades aqui não observadas, mesmo o projeto sendo sem a finalidade de venda e lucro, o aprendizado e experiência é objetivo.

Estou a disposição.

---

## Contexto e problema
O governo da Techlandia está com um projeto de sociedade digital em andamento, onde uma das partes desse projeto é a utilização de créditos eletrônicos como pagamento de serviços ofertados para a população. 

O governo é o ofertante desses serviços para a população, quem administra e controla os serviços ofertados, precisa estar no controle e gerenciamento da utilização desses créditos como um banco e os devidos repasses e negociações com os devidos serviços ofertados através desses créditos como uma adquirente. 

É preciso que o governo seja o ponto central em comum entre a população que irá adquirir créditos e consumir, e as entidades prestadoras desses serviços através do governo, que recebem e precisam se manter para isso, tendo em mente que as entidades e serviços que são ofertados são dinâmicos, podendo mudar conforme a necessidade. 

Ficou a responsabilidade da ShinerayLab projetar e desenvolver uma solução isso.

### Features
Descrever as features requisitadas...

---

## Proposta de solução
Plataforma e-money

A solução proposta é o que eu chamo de um ecossistema digital do grupo <img alt="GOV" src="VOG.svg">, abrangendo todos seus usuários, devidas organizações do grupo e suas soluções até terceiros.

Sendo esse ecossistema uma representação digital do grupo, onde todas soluções e terceiros estariam conectados através de um ponto centralizador e os usuários passariam ter uma identidade digital única compartilhada entre todos dentro desse ecossistema como um todo.

<img alt="big picture" src="digital-ecosystem.png">

### Api gateway

Um api gateway que realizará o papel de ponte na interoperação entre os membros, sendo estes serviços confiáveis que para isso seguem o protocolo definido através da padronização do gateway, além de ser o único autorizado a interagir com as demais soluções.

Com o api gateway conseguimos centralizar, aplicar e atuar na interação entre os serviços, pois tudo que envolver o ecossistema terá que passar pelo gateway, aplicando as regras necessárias toda vez, seja elas em comum ou específica a uma interação, existindo uma pessoa ou equipe em comum a todos responsável pelo gerenciamento e administração do gateway.

Isso é possível, pois o api gateway tem como features:
  
  - Somente o gateway
  - Controle da interoperação, declarando o que cada serviço pode fazer a partir do gateway.
  - Segurança com autenticação e autorização dos serviços, restringir ips, validar a requisição, comunicação segura com tls e mutual tls.
  - Observabilidade e rastreamento das interações através de logging, monitoramento, correlacionamento e mais.
  - Descoberta de serviços com consul.
  - E muito mais das features essenciais e comuns a serem aplicadas em todo ecossistema, além de ser extensível por plugins, veja aqui em [features](https://github.com/Kong/kong#features).


Sendo nossa solução de api gateway escolhida o [Kong](https://github.com/Kong/kong), um api gateway open-source, cloud-native, extensível através de plugins, baseado no web server nginx e amplamente utilizado em startups, empresas globais e instituições governamentais.

Primeiramente para ser a solução do projeto, era necessário resolver os problemas base listados anteriormente, depois ser uma solução open-source, bem documentada, já madura, pronta para uso e sendo utilizada por várias outros players, uma forte equipe por trás e que ainda fosse moderna e continuamente evoluindo, não somente mantida.

Várias outras soluções foram avaliadas como um forte concorrente a escolha foi o [KrakenD](https://github.com/devopsfaith/krakend-ce), mas é stateless, não sendo o caso desse problema.

### Identidade digital

Para solucionar as dos usuários, teríamos um novo serviço, que será responsável pela identidade e onde os usuários vão gerenciar e controlar suas informações dentro do ecossistema.

Os usuários passariam a ter uma única identificação que o representaria para tudo dentro do limite desse ecossistema, mantendo assim uma conta para o ecossistema, não para cada solução, onde tudo estaria relacionado a essa identidade.

Além disso as informações referentes aos usuários estariam centralizadas em um único lugar, gerenciadas e controladas pelos seus próprios dono, determinando a finalidades dos mesmos, atualizando e etc.

As informações fruto da interação com outras soluções, tambem estariam centralizadas em unico ponto que seria da devia solução, porem gerenciada e controlada pelo seu dono, determinando a finalidades dos mesmos, atualizando e etc.

Assim os usuários terão uma identidade digital dentro desse ecossistema, onde o papel dela é representar o usuário no ecossistema como um todo, dando o devido controle e visibilidade dentro do ecossistema.

### Exemplo da solução
Um usuário deseja utilizar a solução X, para isso o mesmo cria sua identidade dentro do ecossistema, gerencia suas informações e aceita os termos necessários referente a solução que quer acessar em um único lugar.

Com a identidade criada dentro do ecossistema o usuário consegue acessar a solução X e a partir de sua identidade e devidas configurações do usuário, consegue realizar suas ações que podem envolver ou não autorização do usuário ou consumo de alguma informação do mesmo.

Mesmo que a solução X venha gerar algum dado ou informação relacionada ao usuário, ela se manteria apenas no porte do mesmo, mas sobre controle de seu dono que seria o usuário, gerenciando através sua identidade. 

Caso o usuário precise utilizar alguma outra solução, como ele já tem sua identidade dentro do ecossistema, apenas precisaria fazer as devidas configurações e avaliações das permissões e termos, além de que se as soluções precisarem interagirem para realizar uma ação, como compartilhar informações, estaria totalmente sobre o controle do usuário sobre o uso de seus dados através da sua identidade dentro do ecossistema.

---

## Validação

### Estratégia 
A partir do escopo do trabalho a solução será uma prova de conceito, tendo conteúdo suficiente para o laboratório e entrega do trabalho. 

Para estratégia de validação, o ecossistema será montado, tendo o desenvolvimento dos quatro serviços que representaram as soluções e compor tudo com o api gateway, implantando o ecossistema em uma infraestrutura simulando o ambiente e contexto proposto neste trabalho e como seria na vida real, validando a solução nesse ambiente, verificando resolução dos problemas propostos anteriormente.


---

## Inspirações e referencias
- Estonia e sua sociedade digital com todo ecossitema da [e-estonia](https://e-estonia.com/).
- A solução [e-bank](https://e-estonia.com/solutions/business-and-finance/e-banking) e um dos seus meios de pegamentos o [e-money](https://www.eestipank.ee/en/payments/means-payments).

---

## Evolução contínua

Estou aberto a feedback, discussões, trocar uma ideia, compartilhar, contribuições e tudo aquilo que venha agregar e contribuir para a evolução continua, abra uma [issue](https://github.com/gmarcial/e-money/issues/new), ficarei feliz em ter a oportunidade de aprender mais.

Obrigado.