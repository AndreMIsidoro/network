

echo "Stopping openvas"
openvas-stop &>/dev/null
echo "Updating Cert data"
greenbone-certdata-sync 1 > /dev/null
echo "Updating NVT Database"
greenbone-nvt-sync 1 > /dev/null
echo "Updating Scap Data"
greenbone-scapdata-sync 1 > /dev/null
echo "Updating OpenVas"
openvasmd --update --verbose
echo "Starting OpenVas"
openvas-start

