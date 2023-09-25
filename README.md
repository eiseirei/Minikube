# Minikube
 

Для запуска выполнить следующую команду, предварительно создав папку data в корне диска C:\ и скопировав в неё папки src и mysql-initdb:

minikube start --mount-string="C:/data:/mnt" --mount

После чего загрузить конфигурационные файлы приложений:
kubectl apply -f .\mysql-config.yaml
kubectl apply -f .\mysql-secret.yaml
kubectl apply -f .\mysql.yaml
kubectl apply -f .\webapp.yaml

Для доступа к веб-приложению выполнить команду:

kubectl port-forward svc/webapp-service 8000:8000
