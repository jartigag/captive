## en un ordenador con linux: ##
sudo service apache2 start
sudo iptables-restore < iptables-captive.txt
sudo ifconfig wlp2s0 hw ether 84:aa:9c:f2:c6:38 # mac del access point
sudo ifconfig wlp2s0 up 172.19.0.254/18 # ip/netmask del router en la WiFi "UPNA"
# en KDE, Editor de Conexiones > Añadir > Wi-Fi (compartida) > SSID: "UPNA"; Dirección MAC: "84:AA:9C:F2:C6:38" > Aceptar > Conectar
# si no, en cualquier otro linux hostapd permite configurar APs WiFi

## en un android rooteado: ##
#tsudo apachectl start
#su
#iptables -t nat -A PREROUTING -i wlan0 -p tcp --dport 80 -j DNAT --to-destination ip-host-en-wlan0}:80
#ifconfig wlan0 hw ether 84:aa:9c:f2:c6:38 # mac del access point
# Ajutes > Compartir Internet y zona Wi-Fi

# probar:
#tcpdump -i wlp2s0 -nn src port 123

# ver reglas nat iptables:
#sudo iptables -vL -t nat -n
# borrar reglas nat iptables:
#sudo iptables -t nat -F