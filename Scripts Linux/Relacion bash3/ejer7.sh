#!/bin/bash
# grupo1.sh:
echo "Grupos por nombre:"
echo "login:número_de_grupo:lista de usuarios"
cat /etc/group | cut -d: -f1,3,4 | sort | less -18
echo

#!/bin/bash
# grupo2.sh:
echo "Grupos por número:"
echo "login:número_de_grupo:lista de usuarios"
cat /etc/group | cut -d: -f1,3,4 | sort -t: -n +1 | less -18
echo

#!/bin/bash
# grupo3.sh:
./grupo1.sh
echo
./grupo2.sh
echo
echo Máquina: `hostname`
echo Fecha: `date`