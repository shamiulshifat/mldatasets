sudo firewall-cmd --zone=public --add-interface=vxlan.calico --permanent
sudo firewall-cmd --zone=public --add-interface=cali+ --permanent
sudo firewall-cmd --permanent --zone=public --add-service=ssh
sudo firewall-cmd --permanent --zone=public --add-service=http
sudo firewall-cmd --permanent --add-port=6443/tcp
sudo firewall-cmd --permanent --add-port=2379-2380/tcp
sudo firewall-cmd --permanent --add-port=10250/tcp
sudo firewall-cmd --permanent --add-port=8080/tcp
sudo firewall-cmd --permanent --add-port=3000/tcp
sudo firewall-cmd --permanent --add-port=8000/tcp
sudo firewall-cmd --permanent --add-port=9000/tcp
sudo firewall-cmd --permanent --add-port=27017/tcp
sudo firewall-cmd --permanent --add-port=2746/tcp
sudo firewall-cmd --permanent --add-port=3306/tcp
sudo firewall-cmd --permanent --add-port=10251/tcp
sudo firewall-cmd --permanent --add-port=10252/tcp
sudo firewall-cmd --permanent --add-port=30000-32767/tcp
sudo firewall-cmd --permanent --new-zone=nat
sudo firewall-cmd --add-masquerade --permanent
sudo firewall-cmd --permanent --zone=nat --add-masquerade
sudo firewall-cmd --permanent --new-zone=microk8s-cluster
sudo firewall-cmd --permanent --zone=microk8s-cluster --set-target=ACCEPT
sudo firewall-cmd --permanent --zone=microk8s-cluster --add-source=$SUBNET
sudo firewall-cmd --reload
