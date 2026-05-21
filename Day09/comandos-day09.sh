k explain services

k get pods --show-labels

kubectl apply -f nodeport-svc.yaml

kg services

k describe svc/nodeport-svc

kgp -o wide

kubectl get nodes -o wide

kubectl describe pod nginx-deploy-bd486b64b-2mfv8
# Node: talos-vm/192.168.122.96

# get the node IP 192.168.122.96 and test it in the browser
# 192.168.122.96:30001

kubectl apply -f clusterip.yaml

k get services

k describe svc clusterip-svc

# get endpoint
kubectl get ep

vim lb.yaml
k apply -f lb.yaml
k get svc
k describe svc/lb-svc