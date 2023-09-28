for i in {1..1]; do
sudo grep -c "abdou" /var/log/auth.log
cd /home/vboxuser/Documents/shell.exe/Job08
touch number_connection_date
mv number_connection_date number_connection_$(date +'%d-%m-%Y-%H:%M')
grep -c "abdou" /var/log/auth.log>>number_connection_$(date +'%d-%m-%Y-%H:%M')
tar -cvf archive.tar number_connection_$(date +'%d-%m-%Y-%H:%M')
mv archive.tar number_connection_$(date +'%d-%m-%Y-%H:%M').tar
mv number_connection_$(date +'%d-%m-%Y-%H:%M').tar Backup/
done
#cron a ete utilis√© pour relancer le script toutes les 3√0 min de cette maniere
#*/30 * * * * /home/vboxuser/Documents/shell.exe/Job08/get_logs.sh


