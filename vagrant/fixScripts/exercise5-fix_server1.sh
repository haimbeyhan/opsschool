#!/bin/bash
#add fix to exercise5-server1 here

cat > ~/.ssh/config <<EOF
StrictHostKeyChecking no
UserKnownHostsFile /dev/null
EOF

sudo apt-get install -y sshpass
ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/id_rsa
sshpass -p "vagrant" ssh-copy-id -i ~/.ssh/id_rsa.pub server2; history -d $((HISTCMD-1))
