kubectl delete -f ./master.yaml -n test
kubectl apply -f ./master.yaml -n test
sleep 6
id=`kubectl get pod -n test |grep buildbot |grep Running |awk '{print $1}'`
echo $id
kubectl logs -f $id -n test 
