# Creating a sealed secret

## Generate a Kubernetes secret manifest with kubectl

```bash
kubectl -n default create secret generic basic-auth \
--from-literal=user=admin \
--from-literal=password=change-me \
--dry-run=client \
-o yaml > basic-auth.yaml
```

## Encrypt the secret with kubeseal

```bash
kubeseal --format=yaml --cert=pub-sealed-secrets.pem < basic-auth.yaml > basic-auth-sealed.yaml
```
