USERNAME=$1
PASSWORD=$2
LOGIN_URL="https://alcasar.laplateforme.io/intercept.php?res=notyet&uamip=10.10.0.1&uamport=3990&challenge=2f98ca9e28a1344eaf8f47e35b3e7d14&called=68-05-CA-3A-2E-49&mac=F4-46-37-56-38-A8&ip=10.10.5.122&nasid=alcasar.laplateforme.io&sessionid=1695909003000001c6&ssl=https://1.0.0.1:3991/&userurl=http://nmcheck.gnome.org/&md=0D787B31E6096031F025529B00EE28B8"
response=$(curl -d "username=$USERNAME&password=$PASSWORD" -X POST $LOGIN_URL)
echo "$response"
if [ "$response" == "200" ]; then
echo "connexion reussis"
else 
echo "connexion echouer"
fi
