ssh-keygen -t rsa -b 4096 -C "asierba@gmail.com"
ssh-agent -s
ssh-add ~/.ssh/id_rsa
clip < ~/.ssh/id_rsa.pub

echo "ssh key has been copied to clipboard"

