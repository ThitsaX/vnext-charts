EXPERIMENTAL vNext Helms

Deployment Tools
- Kubernetes
- Helm
- Kubectl

Deployment Instructions
```bash
1. Deploy a Kubernetes cluster(microk8s/minikube/k8s)
2. Deploy a storage class
3. Clone the repo in your local
4. Check deploy.sh script to deploy the third-party and vnext charts
```

```bash
helm repo add vnext-helm https://thitsax.github.io/vnext-charts/
```

```bash
helm search repo vnext-helm
```