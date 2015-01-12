In Command Line Type :

chmod 777 kali-linux.sh

./kali-linux.sh

After installing complete
logout and on login screen Change "System Default" to "Mate" and relogin

after login type in command line :

leafpad /etc/xdg/menus/mate-applications.menu

and add :

<!-- Kali Linux Menu -->
<MergeFile type="path">applications-merged/kali-applications.menu</MergeFile>

after 

<!-- End Internet -->

============================

So it should look something like this


 <!-- Internet -->
  <Menu>
    <Name>Internet</Name>
    <Directory>mate-network.directory</Directory>
    <Include>
      <And>
        <Category>Network</Category>
      </And>
    </Include>
  </Menu>   <!-- End Internet -->

  <!-- Kali Linux  -->	
  <MergeFile type="path">applications-merged/kali-applications.menu</MergeFile>
