

$\fbox{Hello there}$

$\color[rgb]{1,0,1} hello$

$\color[RGB]{155,127,0} hello$

$\color[gray]{0.3} hello$






$\color[rgb]{1,0,1} # Hyper-V-Manager Desktop Verknüpfung anlegen$

C:\Windows\System32\vmconnect.exe localhost "NAME DER VM"

Wichtig ist, dass Ihr zum einen den korrekten Pfad zur Datei „VMCONNECT.EXE“ angebt. Dieser sollte in aller Regel immer „C:\Windows\System32\vmconnect.exe“ lauten. Dazu kommt dann noch der Parameter „localhost“ und der exakte Name der „Hyper-V VM“. In unserem Beispiel heißt die VM „WIN10-1809“. Den korrekten Namen findet Ihr direkt im Hyper-V Manager oder in den Hyper-V Einstellungen unter „Name“. 

VM DESKTOP VERKNÜPFUNG ALS ADMINISTRATOR STARTEN

Wichtig ist nun noch, dass Ihr die Desktopverknüpfung so einstellt, dass die Verbindung immer als Administrator hergestellt wird. Dies findet Ihr in den Eigenschaften der Desktopverknüpfung im Reiter


$\color[rgb]{1,0,1} # Hyper-V Linux Bildschirmauflösung ändern$

sudo nano /etc/default/grub

## Die Variable GRUB_CMDLINE_LINUX_DEFAULT muss mit der gewünschten Auflösung erweitert werden: 

splash video=hyperv_fb:1920x1080"

Strg o enter (speichern) dann Strg x (beenden)

## Nach der Änderung muss GRUB noch updaten:

sudo update-grub

reboot
