# Minikube
 

Для запуска выполнить следующую команду, предварительно создав папку data в корне диска C:\ и скопировав в неё папки src и 
minikube start --mount-string="C:/data:/mnt" --mount

Для доступа к веб-приложению выполнить команду:
kubectl port-forward svc/webapp-service 8000:8000
