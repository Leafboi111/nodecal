# nodecal
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

clear
tput setaf 45

while true
do
  tput setaf 7
  echo "Welcome to nodecal, a simple calendar"; echo
  tput setaf 141
  date +"%D %T"
  tput setaf 214
  read -p "read, write, or exit: " rw
  clear
  if [ "$rw" == "write" ];
  then
    tput setaf 207

    read -p "Date of event: " date
    read -p "Contents of event: " contents

    echo "$date $contents" >> data/calendar.txt
    sort -V data/calendar.txt

  elif [ "$rw" == "read" ];
  then
    echo "Calendar Events:" ;sort -V data/calendar.txt; echo
  else
    break
  fi

done
