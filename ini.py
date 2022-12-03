from os import system as t
t("sudo docker compose up --remove-orphans")
t("sleep 2")
t("sudo docker exec  db4 bash /docker-entrypoint-initdb.d/initdb.sh")