#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh
jv_pg_oroscopo () {

raw="curl \"http://it.horoscopofree.com/rss/horoscopofree-it.rss\"  2>/dev/null | grep \"<description>\" | tail -n 12|sed -e \"s/.*\<description\>\(.*\)\<a\ href.*\<\/description\>.*/»\ \1/g\" | cut -c 12- "
case "$1" in
'ariete')
echo $(eval $raw | sed -n '1p')
;;
'toro')
echo $(eval $raw | sed -n '2p')
;;
'gemelli')
echo $(eval $raw | sed -n '3p')
;;
'cancro')
echo $(eval $raw | sed -n '4p')
;;
'leone')
echo $(eval $raw | sed -n '5p')
;;
'vergine')
echo $(eval $raw | sed -n '6p')
;;
'bilancia')
echo $(eval $raw | sed -n '7p')
;;
'scorpione')
echo $(eval $raw | sed -n '8p')
;;
'saggitario')
echo $(eval $raw | sed -n '9p')
;;
'capricorno')
echo $(eval $raw | sed -n '10p')
;;
'acquario')
echo $(eval $raw | sed -n '11p')
;;
'pesci')
echo $(eval $raw | sed -n '12p')
;;
esac
}
