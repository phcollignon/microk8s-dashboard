# Config files for MicroK8s dashboard access with RBAC addons 

How to install :

```
microk8s.enable rbac dashboard
git clone https://github.com/phcollignon/microk8s-dashboard
cd microk8s-dashboard
microk8s.kubectl create -f dashboard.yaml
``` 

Then get the token with 

```
./getAdminDashboardToken.sh
```

Proxy the dashboard :
```
microk8s.kubectl port-forward -n kube-system service/kubernetes-dashboard 10443:443 --address 0.0.0.0
```

Connect to the dashboard with the token at the following Url :
`https://<your-cluster-ip>:10443/`

You can also put the token in a config file and load that config file in dashboard login screen. (see example [dashboard.config](dashboard.config))
