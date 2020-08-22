kubectl delete -f deploy/kubernetes/deploy-k8s-aci-operator.yaml
sudo ./operator-sdk build kentwu111/rmlab-aci-operator:apic4.2-v1alpha2
sudo docker push kentwu111/rmlab-aci-operator:apic4.2-v1alpha2
kubectl apply -f deploy/kubernetes/deploy-k8s-aci-operator.yaml
kubectl get pods -n aci-containers-system
kubectl logs -n=aci-containers-system aci-operator-7d55d4465f-g5r8r operator
