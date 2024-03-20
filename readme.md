K3s project setup:

Ingress -> Service -> Pod

Ingress - traefik with default k3s config
Service - service for connecting with pods
Pod - express backend application that share network info

Ingress: path: '/' route to 4000 port to service
Service: route 4000 port to 3000 port in pods
Pods: exposed 3000 port from express backend application

---

Main commands:

`k3s kubectrl get pods -w` - get pods info
`k3s kubectrl apply -f deploy.yml` - apply deploy.yml
`sudo kubectl get pods -n kube-system` - get system pods
