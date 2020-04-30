#!/bin/bash

auth=(alessandro_beltrami antonella_succurro fabio_esposito giulia_pastorella hamdy_sallam mario_lavanga norman_larocca monica_pradelli giovanni_sassano stefano_tommei)
posts=('2019-11-15* 2019-07-20* 2019-07-13* 2019-04-05*' '2019-03-01* 2019-04-14*' '2019-10-18*' '2019-10-15* 2019-05-03* 2019-04-13* 2019-03-29* 2019-02-07* 2019-01-24*' '2019-07-26* 2019-06-14*' '2020-01-13-la* 2020-01-13-ca* 2019-11-22* 2019-11-19* 2019-06-02* 2019-03-22*' '2019-06-28* 2019-02-01*' '2019-08-30* 2019-03-15*' '2019-08-23* 2019-02-22*' '2019-01-22*')


arraylength=${#auth[@]}

cd _posts/
# use for loop to read all values and indexes
for (( i=0; i<${arraylength}; i++ ));
do
	A=${auth[$i]}
	P=${posts[$i]}
	sed -i "s/layout: post/layout: post\nauthor: ${A}/g" $P
	grep author $P
done

cd ..
