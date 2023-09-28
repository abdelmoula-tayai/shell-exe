while IFS=, read id prenom nom mdp role;
do
useradd -m -p "$mdp" "$prenom$nom"
if [ "$role" = "Admin" ]; then 
sudo usermod -aG sudo "$prenom$nom"
fi
done < Shell_Userlist.csv

#incron a ete utilise pour relancer le script automatiquement de cette 
#maniere /Home/vboxuser/Documents/shell.exe/Job09/Shell_Userlist.csv IN_MODIFY /Home/vboxuser/Documents/shell.exe/Job09/accessrights.sh
 
