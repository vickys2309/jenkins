java --version
sudo apt update
sudo apt install openjdk-8-jdk -y
sudo apt install openjdk-11-jdk -y
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc &gt; /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list &gt; /dev/null
sudo apt update
sudo apt install jenkins -y
sudo systemctl enable --now jenkins
sudo systemctl status jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword
