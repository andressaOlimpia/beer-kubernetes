## Desenvolvimento de testes unitários para validar uma API REST de gerenciamento de estoques de cerveja.

#### Projeto desenvolvido durante o Bootcamp Inter Java Developer - Digital Innovation One 💻 📚

Durante as aulas, foi ensinado como desenvolver testes unitários para validar um sistema de gerenciamento de estoques de cerveja e como implementar funcionalidades através da prática do TDD (Test Driven Development / Desenvolvimento orientado a teste). O objetivo desse projeto foi implementar a funcionalidade de decremento utilizando a técnica do TDD em um projeto base. Além disso, durante o desenvolvimento dos testes, percebi a relevância de acrescentar no projeto base o conceito de estoque mínimo. Para isso, novas funcionalidades foram desenvolvidas também com o uso de TDD: verificar se o estoque está crítico toda vez que um decremento é realizado e visualizar os estoques críticos.

⚙️ Foram utilizados para o desenvolvimento dos testes:
* JUnit e Mockito

👣 Passo a passo:
* Download do [projeto base](https://github.com/rpeleias/beer_api_digital_innovation_one);
* Desenvolvimento de testes unitários para o método 'decrement' da camada de serviço;
* Acréscimo dos atributos 'int min' e 'boolean critical' à entidade 'beer' e implementação do método 'decrement' na classe 'BeerService';
* Desenvolvimento de testes unitários para o método 'decrement' da camada controller;
* Implementação do método 'decrement' na classe 'BeerController';
* Desenvolvimento de testes unitários para o método 'findByCritical' da camada de serviço;
* Implementação do método 'findByCritical' na classe 'BeerService';
* Desenvolvimento de testes unitários para o método 'filterCriticalBeers' da camada controller;
* Implementação do método 'filterCriticalBeers' na classe 'BeerController'.

