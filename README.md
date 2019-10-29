# Config files for MicroK8s dashboard access with RBAC addons 

How to install :

```
microk8s.enable rbac dashboard
microk8s.kubectl create -f dashboard.yaml
``` 

Then get the token with 

```
./getAdminDashboardToken.sh
```

Proxy the dashboard :
```
microk8s.kubectl proxy --accept-hosts=".*" --address=0.0.0.0
```

Connect to the dashboard with the token at the following Url :
`http://127.0.0.1:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy`

You can also put the token in a config file and load that config file in dashboard login screen. (see example [dashboard.config](dashboard.config))
