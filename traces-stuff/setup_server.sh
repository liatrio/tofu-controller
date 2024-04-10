k3d cluster create mycluster
flux install
#kubectl create -f https://github.com/flux-iac/tofu-controller/releases/download/v0.15.1/tf-controller.crds.yaml
#kubectl apply -f https://github.com/flux-iac/tofu-controller/releases/download/v0.15.1/tf-controller.rbac.yaml
#kubectl apply -f https://github.com/flux-iac/tofu-controller/releases/download/v0.15.1/tf-controller.deployment.yaml
#kubectl create -f charts/tofu-controller/crds/crds.yaml
#kubectl apply -f rbac.yml
#kubectl create clusterrole deployer --verb=get,list,watch,create,delete,patch,update --resource=deployments,services,namespaces 
#kubectl create clusterrolebinding deployer-srvacct-default-binding --clusterrole=deployer --serviceaccount=flux-system:tf-runner
#kubectl create namespace test
#kubectl apply -f source_control.yml
#kubectl apply -f terraform.yml
