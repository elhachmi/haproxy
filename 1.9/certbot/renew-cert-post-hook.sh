echo "\n\n\n\nConcatenating fullchain and private key in pem file .... "
cat /etc/letsencrypt/live/dev-certificates/fullchain.pem /etc/letsencrypt/live/dev-certificates/privkey.pem  > /etc/letsencrypt/live/dev-certificates/certificate.pem 
echo "\n\n\n\nReloading Haproxy configuration..."
/reload.sh &
echo "\n\n\n\n Renwal done "
