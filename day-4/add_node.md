🛠️ Passo a passo
1. Criar um arquivo de configuração

Exemplo (kind-config.yaml):

kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
name: giropops
nodes:
- role: control-plane
- role: worker
- role: worker
- role: worker

👉 Aqui você definiu 3 workers (antes eram 2)

2. Deletar o cluster atual
kind delete cluster --name giropops
3. Criar o novo cluster
kind create cluster --config kind-config.yaml
4. Conferir
kubectl get nodes
⚠️ Observações importantes
Você vai perder tudo que estava no cluster (pods, deployments, etc.)
Kind é mais pra:
testes
desenvolvimento local
Não é pensado pra escala dinâmica tipo EKS/GKE
💡 Alternativa (se você precisa escalar de verdade)

Se sua intenção é simular autoscaling ou algo mais próximo de produção:

use k3d → permite adicionar nodes depois
ou vá direto pra cloud (EKS, GKE, etc.)
