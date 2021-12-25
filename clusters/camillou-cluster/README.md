# camillou-cluster

Git repository for my cluster's definitions

## TODO

- [ ] GitOps
- [x] Longhorn (storage)
- [x] Doppler (secrets)
- [x] Traefik (ingress)
- [ ] Expose
  - [x] Domain name
  - [x] HTTPS
  - [x] Redirect to HTTPs
  - [x] Expose Syncthing dashboard
  - [ ] GitHub authentication using [traefik-forward-auth](https://github.com/thomseddon/traefik-forward-auth#configuration)
- [x] Syncthing
- [ ] Firefly III (finances)
- [ ] Firefly III Telegram Bot
- [x] Duplicati
- [ ] Transmission
- [ ] GitHub Actions Runner
- [ ] Grafana
- [ ] OSXPhotos Grafana dashboard
- [ ] Mail server
- [ ] 4g proxy server
- [ ] VSCode development pod

## Apps to install manuall

...because I didn't create Flux definitions for them

### k3d

k3d must be installed with encrypted secrets at rest. See `node-installation.md`

### Longhorn

Used for storage.

[See Longhorn dependencies here](https://longhorn.io/docs/1.2.2/deploy/install/#installation-requirements)

Note: there's a dependencies check script; run it before trying to install Longhorn.

[Install Longhorn with Helm](https://longhorn.io/docs/1.2.2/deploy/install/install-with-helm/)

#### Adding a HDD

Go to the Longhorn panel and go in the "Node" tab.

### Workstation configuration

- k8s CLI utilities
- [Helm](https://helm.sh/docs/intro/install/)

### Doppler

https://docs.doppler.com/docs/kubernetes-operator

#### Using a Doppler secret

https://docs.doppler.com/docs/kubernetes-operator#step-3-configuring-a-deployment

### CertManager

Certificates are managed by [CertManager](https://cert-manager.io/docs/)
See letsencrypt.yml to know how to set a certificate issuer.

## Hardware

### Nodes

- One gaming laptop
- One of my relatives cheap laptop which inconveniently crashes every month, probably because of some proprietary driver I needed to install to make WiFi work.
- WIP: a custom-built computer with a nice CPU
