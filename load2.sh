export GATEWAY_URL=$(oc get route -n istio-system istio-ingressgateway -o jsonpath='{.spec.host}') 

while true 
do
curl -o /dev/null -s -w "%{http_code}\n" http://$GATEWAY_URL/productpage
sleep 1 
done
