#!/bin/sh
# Installation du client AFS pour l'Epitech
# Auteur:
#   Inconnu (trouve sur http://perso.epitech.net/~rogeat_t/install_afs.sh)
# Contributeurs:
#  - François de Metz (de-met_f)
#
# Voir http://perso.epitech.net/~de-met_f/afs.html
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

rm -f /usr/src/openafs-modules-*

apt-get install -y module-assistant openafs-modules-source openafs-client openafs-krb5 heimdal-clients

module-assistant prepare openafs-modules
module-assistant auto-install openafs-modules

echo "
   [libdefaults]
       default_realm = EPITECH.NET
       kdc_timesync = 1
       renewable = false
       forwardable = false
       proxiable = true

   [realms]
       EPITECH.NET = {
               kdc = kdc.epitech.net
       }

   [domain_realm]
       epitech.net= EPITECH.NET
       .epitech.net = EPITECH.NET
       .epita.fr = EPITECH.NET" > /etc/krb5.conf


echo ">epitech.net
163.5.255.41            # epitech.net
163.5.255.42            # epitech.net
" > /etc/openafs/CellServDB

echo "epitech.net
" > /etc/openafs/ThisCell

/etc/init.d/openafs-client start

ln -s /afs/epitech.net/users/all/ /u
ln -s /afs/epitech.net/users/all/besnar_n ~/AFS_EPITECH