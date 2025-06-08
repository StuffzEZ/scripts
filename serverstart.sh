curl -fsSL https://get.casaos.io | sudo bash
echo "Installed CasaOS!"
echo "Allowing Ports..."
sudo ufw allow 80
echo "Allowed CasaOS Ports! - 80"
sudo ufw allow 8080
sudo ufw allow 8000
sudo ufw allow 8111
sudo ufw allow 8443
sudo ufw allow 22/tcp
sudo ufw allow 25565/tcp
sudo ufw allow 25566:25570/tcp
echo "Allowed Crafty Ports!"
echo "Making STFZ File..."
echo "StuffzEZ/scripts/serverstart.sh was here. STFZID: 369568734tdvrty7842b" > /home/ubuntu/stfzscript.serverstart.sh.stfz
echo "Finished!"
