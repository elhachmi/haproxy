echo
echo 
echo "Concatenating fullchain and private key in pem file .... "
CERT=$(certbot certificates | awk -F ': ' '/Certificate Name/{print $2}')
cat /etc/letsencrypt/live/${CERT}/fullchain.pem /etc/letsencrypt/live/${CERT}/privkey.pem  > /etc/letsencrypt/live/${CERT}/certificate.pem 
echo
echo 
echo "Reloading Haproxy configuration..."
/reload.sh &
echo
echo 
echo " Renwal done "
