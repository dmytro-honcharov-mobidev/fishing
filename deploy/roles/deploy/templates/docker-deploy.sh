docker image prune -f
sudo docker stack deploy --with-registry-auth -c docker-stack.yml {{service_name}}
