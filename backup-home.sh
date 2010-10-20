#!/bin/sh
#
# Distributed under the terms of the GNU General Public License v3
#
# Filip Oscadal <filip@mxd.cz> http://mxd.cz No Rights Reserved 2010.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY. YOU USE AT YOUR OWN RISK. THE AUTHOR
# WILL NOT BE LIABLE FOR DATA LOSS, DAMAGES, LOSS OF PROFITS OR ANY
# OTHER  KIND OF LOSS WHILE USING OR MISUSING THIS SOFTWARE.
# See the GNU General Public License for more details.

# change to match your backup media location!
PATH='/media/PET'

if [ -d "$PATH" ]
then
  cd ~
  sudo tar cvpzf "$PATH/home-backup-`date +%d.%m.%Y`.tar.gz" --one-file-system .
else
  echo "Invalid folder: $PATH\n"
fi
