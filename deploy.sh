#!/bin/bash
helm repo add vnext-helm https://thitsax.github.io/vnext-charts/
helm repo update
git clone https://github.com/ThitsaX/vnext-charts.git
cd vnext-charts/third-party-charts/kafka
kubectl create ns vnext monitoring

#deploy third-party charts
helm install -n vnext kafka .
cd ../console
helm install -n vnext console . 
cd ../redis
helm install -n vnext redis . 
cd ../mongodb
helm install -n vnext mongodb . 
cd ../mongo-express
helm install -n vnext mongo-express . 
cd ../elasticsearch
helm install -n monitoring elasicsearch . 

#deploy vnext charts
helm install -n vnext account-lookup-svc vnext-helm/account-lookup-svc 
helm install -n vnext account-lookup-http-oracle-svc vnext-helm/account-lookup-http-oracle-svc
helm install -n vnext accounts-and-balances-builtin-ledger-grpc-svc vnext-helm/accounts-and-balances-builtin-ledger-grpc-svc
helm install -n vnext accounts-and-balances-coa-grpc-svc vnext-helm/accounts-and-balances-coa-grpc-svc
helm install -n vnext admin-ui vnext-helm/admin-ui
helm install -n vnext auditing-svc vnext-helm/auditing-svc
helm install -n vnext authentication-svc vnext-helm/authentication-svc
helm install -n vnext authorization-svc vnext-helm/authorization-svc
helm install -n vnext platform-configuration-svc vnext-helm/platform-configuration-svc
helm install -n vnext fspiop-api-svc vnext-helm/fspiop-api-svc
helm install -n vnext logging-svc vnext-helm/logging-svc
helm install -n vnext mfi-account-oracle vnext-helm/mfi-account-oracle
helm install -n vnext participants-svc vnext-helm/participants-svc
helm install -n vnext quoting-svc vnext-helm/quoting-svc
helm install -n vnext settlements-api-svc vnext-helm/settlements-api-svc
helm install -n vnext settlements-command-handler-svc vnext-helm/settlements-command-handler-svc
helm install -n vnext settlements-event-handler-svc vnext-helm/settlements-event-handler-svc
helm install -n vnext transfers-api-svc vnext-helm/transfers-api-svc
helm install -n vnext transfers-command-handler-svc vnext-helm/transfers-command-handler-svc
helm install -n vnext transfers-event-handler-svc vnext-helm/transfers-event-handler-svc
helm install -n vnext ttk vnext-helm/ttk
helm install -n vnext ttk-ui vnext-helm/ttk-ui