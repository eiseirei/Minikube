# Minikube
 

В начале необходимо создать образы через докер:

docker build -t ezhov_server -f Dockerfile-web .

docker build -t ezhov_db -f Dockerfile-DB .

После этого запустить minikube:

minikube start

После чего загрузить образы из докера в minikube:

minikube image load ezhov_server

minikube image load ezhov_db

После чего загрузить конфигурационные файлы приложений:

kubectl apply -f .\mysql-config.yaml

kubectl apply -f .\mysql-secret.yaml

kubectl apply -f .\mysql.yaml

kubectl apply -f .\webapp.yaml

Для доступа к веб-приложению выполнить команду:

kubectl port-forward svc/webapp-service 8000:8000

Теперь оно доступно по адресу:

http://localhost:8000
