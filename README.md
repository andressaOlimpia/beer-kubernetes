## Rodando aplicação Java de gerenciamento de cerveja no Kubernetes

#### Projeto desenvolvido durante o Bootcamp Inter Java Developer - Digital Innovation One 💻 📚

O objetivo desse projeto foi executar uma aplicação no Kubernetes utilizando o Minikube localmente. 
Para isso, escolhi a [API REST de gerenciamento de estoques de cerveja](https://github.com/andressaOlimpia/beer-stock-api) (projeto desenvolvido anteriormente durante o Bootcamp Inter Java Developer) para configurar, fazer o deploy no
cluster e realizar o debug.

⚙️ Foram utilizados:
* Minikube
* Docker
* Kubectl

👣 Passo a passo:
* Criação de um Dockerfile para construção de uma imagem docker da aplicação;
* Inicialização de um cluster do Minikube:
  ``` bash
  minikube -p beerstock start --cpus 2 --memory=4096
  ```
  ``` bash
  minikube -p beerstock addons enable ingress
  ```
  ``` bash
  minikube -p beerstock addons enable metrics-server
  ```
  ``` bash
  kubectl create namespace stock
  ```
* Criação da pasta k8s com os arquivos app-configmap.yaml, app-deployment.yaml app-ingress.yaml e app-service.yaml
* Configuração do arquivo MetricsConfig
* Build da aplicação e geração da imagem docker dentro do Minikube:
``` bash
  eval $(minikube -p beerstock docker-env) && docker build --force-rm -t java-k8s:latest .
  ```
* Deploy da aplicação no cluster
``` bash
  kubectl apply -f k8s
  ```
* Expondo o pod na porta 5005 para debug remoto:
``` bash
  kubectl port-forward -n stock <pod_name> 5005:5005
  ```

:bulb: Material base para execução desse módulo:
https://github.com/sandrogiacom/java-kubernetes





  