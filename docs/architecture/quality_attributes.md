# Atributos de qualidade

Representam as capacidades necessárias identificadas que a arquitetura precisa ter para poder suportar e atender o produto concebido, tornando uma solução que atende ao negócio. 
 
Para que isso aconteça, essas capacidades serviram de guia da concepção e evolução da arquitetura no seu alto a baixo nível, refletindo diretamente nas implementações e o que se espera das funcionalidades, para que esteja alinhada e continue alinhada como uma solução para o negócio. 
 
O objetivo é deixar expresso e registrado as capacidades identificadas, resumidamente expressar o conceito e uma breve justificativa, que estará aprofundada, expressa detalhadamente no ciclo de desenvolvimento e medidas continuamente.

## Base

Capacidades base para contribuir para a vida útil da aplicação, possibilitando ser continuamente funcional, mantida e evoluída, sem estar presa aos criadores, possibilitando também por novos contribuidores e mantenedores.

### Readability

#### Conceito:
O projeto deve ter código de fácil entendimento, podendo ser lido com facilidade por outros engenheiros que venham a contribuir.
 
#### Justificativa:
É desejável que o projeto possa seguir em frente, onde outros desenvolvedores possam contribuir.
 
Com a legibilidade, quem tiver interesse em colaborar de alguma forma, terá uma maior facilidade de entendimento, gastando menos tempo na leitura do código.
 
### Testability

#### Conceito: 
Os diversos níveis da aplicação devem ser possível aplicar diferentes técnicas de teste, conforme o contexto, assegurando os comportamentos esperados e alcançando uma cobertura de segurança através do testes que são os primeiros clientes de nossas implementações.
 
#### Justificativa: 
É desejável testar a aplicação em diferentes níveis para que possa garantir os comportamentos funcionais, não funcionais e os próprios atributos de qualidade a partir de métricas tiradas dos testes, suportando a qualidade e evolução da aplicação. 
 
### Evolvability

#### Conceito:
Suportar mudanças de forma incremental, sem causar impacto negativo, continuamente atendendo ao negócio suportado e capacidade da aplicação.
 
#### Justificativa:
Durante o ciclo de vida da aplicação, ele consequentemente irá mudar, em vez de ser um sofrimento, podemos preparar para que sejam evoluções.
 
Essas evoluções podem ser funcionalidades novas, novos entendimentos não claros inicialmente, novos problemas, novas capacidades e etc.
 
O contexto muda e é preciso que a aplicação acompanhe.
 
Para que essa capacidade seja alcançada, é necessário alcançar outros que estão compostos:
 
#### Modifiability: 
Ser facilmente modificável, onde é adaptado com facilidade.

#### Modularity: 
É composto de componentes coesos, desacoplados e independentes uns dos outros, onde são compostos, trabalhando juntos para construir o todo.

#### Simplicity: 
Lidar com problemas complexos com soluções simples, buscando sempre a complexidade essencial e não acidental.

---

## Negócio

Capacidades requisitadas para que o negócio possa ser suportado além do produto ser funcional, é preciso que além da entrega da funcionalidade, a aplicação opere essa funcionalidade conforme a demanda e dentro do contexto do negócio.
 
### Auditability

#### Conceito:
Deve ocorrer a coleta,  registro de fatos e evidências das atividades exercidas, com objetivo de captar como, onde, quem e quando foi feito, com objetivo de avaliar a conformidade da operação em relação ao que foi acordado, requisitos legais e etc, senão eficazes e alcançando os objetivos.
 
#### Justificativa:
Dependendo do negócio envolvido, o nível de sua criticidade e seus requisitos, como aplicações financeiras, governamentais e outras, recorrentemente ocorrem auditorias para avaliar a conformidade, alguma legislação imposta, podendo a auditoria ser um processo natural, mas também situações críticas de questionamento da veracidade de uma operação.
 
### Atomicity

#### Conceito:
As operações devem ser atômicas, onde não pode ser considerado ou aceito parte do processo.

#### Justificativa:
Uma transferência não pode ocorrer pela metade, onde a conta de origem tem o valor subtraído, mas a de destino não recebe o valor ou o contrário.
 
### Isolability

#### Conceito:
O contexto das operações não devem afetar uma as outras, não as afetando. 

#### Justificativa:
Uma transação não deve influenciar o contexto de uma outra transação, mesmo que ambas tenham envolvido uma entidade em comum, uma deve aguardar a outra, estando sincronizadas.
 
### Consistency

#### Conceito:
Onde a execução das operações ocorrem de forma válida, seguindo as definições e resultando no que é esperado.

#### Justificativa:
Uma sequência de operações bancárias devem finalizar com as contas bancárias envolvidas com valores corretos, não tendo mais ou menos dinheiro do que esperado, pois estaria quebrando a consistência do saldo dos clientes.
 
### Durability

#### Conceito:
Os resultados das operações devem permanecer e perdurar até que outra operação venha a causar alterações.

#### Justificativa:
A contratação de um serviço ou a realização de um pagamento deve permanecer intacto, não parecendo que não ocorreu, tendo que refazer até efetivar.
 
### Integrity
 
#### Conceito:
A aplicação deve ter e tomar medidas da qual mantenha a garantia, manutenção, qualidade e veracidade de suas operações por todo ciclo de vida da aplicação em relação ao seu estado em diversos níveis.

#### Justificativa:
Aplicações financeiras são muito críticas, suas informações literalmente valem dinheiro, é imprescindível a confiança das movimentações financeiras, mantendo as íntegras, não perdendo ou corrompendo alguma das informações.
 
### Reliability

#### Conceito:
Manter um nível aceitável de operabilidade, mesmo em situações de falha e anomalias.

#### Justificativa:
Falhas, situações anormais, erros, ataques e etc, podem e vão ocorrer, mas sem o controle de quando e como, para isso é necessário prevenir, projetando contra essas situações nos vários níveis da aplicação, para que ela continue operando em situações críticas até normalizar.
 
Diversos níveis e aspectos da aplicação, sendo primária ou terceiras, podem acarretar em uma situação dessa.
 
### Security

#### Conceito:
A aplicação deve ter medidas da qual se mantenha protegida contra ataques e ações maliciosas que venham explorar e causar danos ao negócio e clientes.

#### Justificativa:
Aplicações financeiras são muito visadas por criminosos, pelo fato de que podem conseguir ganhos ilícitos ao explorá-las, sendo necessário proteger a aplicação nos diversos níveis e manter uma política e cultura de segurança, conscientizando os envolvidos e até mesmo uma área específica para cuidar da segurança, famosas equipes red e blue.
 
### Availability
 
#### Conceito:
Característica de que a aplicação para estar disponível, precisa estar funcionando satisfatoriamente(uptime) nos períodos, com os comportamentos e características especificadas, levando em consideração todo o ciclo da operação.
 
Quando a aplicação está funcionando e respondendo como esperado o tempo e a quantidade de carga, ela é considerada que tem disponibilidade.

#### Justificativa:
Aplicações financeiras como uma conta bancária, necessitam estar sempre disponíveis para quando seus clientes necessitam, mas além disso, essas aplicações têm rígidos requisitos como tempo de resposta aceitáveis baixíssimos para uma transação por exemplo, que deve ser alcançado mesmo em picos de carga, pois menos que isso, gastará mais tempo, realizando menos operações em um período, sendo considerada indisponível.

--- 
 
## Infraestrutura

Capacidades requisitadas para que a aplicação possa ser suportada, para conforme as necessidades a aplicação operar.

### Observabiltity

#### Conceito:
É poder atraves das informações geradas dos comportamentos do sistema, realizar metricas que reflitam como um historico do seu estado em seus diversos niveis, podendo assim com maior facilidade, entender o que aconteceu, acontece e acontecera.

#### Justificativa:
Naturalmente sistemas são ou se tornam complexos, dependendo do seu contexto uns são menos ou mais que outros, mas em todos é muito importante que a gente tenha a capacidade de entender o que esta acontecendo com clareza e precisam, seja por exemplo para identificação e resolução de um problema, averigar a assertividade de uma operação e etc, possibilitando sermos mais mais assertivos.

Queremos evitar situações onde não sabemos o que aconteceu, em qual componente ocorreu o problema, seja no banco de dados ou em um serviço terceiro e em qual parte desse componente.

### Configurability

#### Conceito:
O sistema varia os comportamentos que são configuraveis conforme os parametros passados na configuração, não ficando estatico a um unico contexto, podendo alcançar adaptações de forma flexivel, sem muito trabalho.

#### Justificativa:
Por base os sistemas precisam se adaptar em diferentes contextos, como na implantação em ambientes diversos, que tem diferentes requisitos, mudar um fluxo ou operação a partir de um paretro e etc.

Para que não precisemos fazer alterações a nivel de codigo para adaptar a qualquer uma dessas situações a gente identifica e implementa esses pontos de forma que sejam configuraveis, tendo apenas que alterar os parametros para se adaptar.

### Fault Tolerance

#### Conceito:
Na ocorrencia de falhas, os impactos causados na aplicação devem refletir proprocionalmente a sua gravidade, onde uma falha simples não deve deixar a aplicação inoperavel, mas apenas onerar a parte onde ocorreu a falha.

No caso da indisponibilidade de um sistema upstream, mesmo que as operações dependentes do mesmo não serem operaveis, as demais que não dependem, devem operar normalmente, lidando de uma agradevel com a degradação parcial(graceful degradation) ou total.

#### Justificativa:
Falhas acontecem, apenas na maioria da vezes não sabemos quando, para isso devemos preparar o sistema para lidar com a falha, seja a nivel de design/implementação, infraestrutura e recursos computacionais, acoplamento dos componentes e etc, buscando ter isso como um comportamente natural, ação automatizada e em situações extremas, manualmente com a intervenção humana.

### Scalability

#### Conceito:
A aplicação é projetada para atender o aumento ou diminuição dos recursos computacionais conforme a carga de trabalho, sendo possivel os alterar conforme a necessidade para continuar disponivel e realizando o trabalho, onde a escala pode ser horizontal(scale out) que ocorre com o aumento de nós em um cluster ou vertical(scale up) que ocorre com o aumento de recursos computacionais de unico mesmo nó, como mais memoria ou nucleos.

#### Justificativa:
Toda aplicação tem uma carga de trabalho base, mas que ele pode variar em momentos esperados como em picos em momentos padrões ou aumentar conforme o negocio cresce.

Cada aplicação tem sua caracteristica, como uma aplicação foodtech tem o aumento em horarios de alimentação e backfriday para e-commerces e marktplaces.

Fora momentos que podem ser inesperados, onde a aplicação deve estar preparada para escalar e aguentar a carga.

### Performance

#### Conceito:
Medida que representa o desempenho da aplicação na realização de suas operações, seja quanto tempo levou, quantos operações foram feitas em um determinado periodo e quantidade de recursos utilizados.

Quão mais rapida realiza as operações, mais operações realiza em um determinado periodo e utilizando menos recursos, mais performatica, tendo uma melhor desempenho.

#### Justificativa:
Certas operações necessitam de um cuidado especial em relação a performance, por exemplo, pode exigir um tempo de resposta baixo e que sejam realizadas uma quatidade X de operações em um periodo curto de tempo para que esteja disponivel.

Outras podem exigir um melhor uso dos recursos computacionais, otimizando as operações para que use apenas o necessario, diminuindo custos, pois parte dos recursos seriam redistribuidos para as demais operações da aplicação.