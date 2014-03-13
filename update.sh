#!/bin/sh
# See ansible-linuxfr for details on why paths below are what they are.

. ~/ruby-env

( cd ~/src/linuxfr.org && ./script/compile_sass app/assets/stylesheets/application.css.scss ) > $(dirname $0)/RonRonnement.css
( cd ~/src/linuxfr.org && ./script/compile_sass app/assets/stylesheets/contrib/FlexRonRon.css.scss ) > $(dirname $0)/FlexRonRon.css

sed -i \
	-e 's^url("/images^url("//linuxfr.org/images^' \
	-e 's^url(/images^url(//linuxfr.org/images^' \
	-e 's^url("/favicon^url("//linuxfr.org/favicon^' \
	*.css
