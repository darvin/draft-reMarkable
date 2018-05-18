#!/bin/sh

qmake 

DST=./dist
rm -Rf $DST
export OE_QMAKE_STRIP= 
make install INSTALL_ROOT=$DST

BAD_INSTALL_DIRECTORY=$DST/work/=/
mv $BAD_INSTALL_DIRECTORY/*.js $DST/usr/share/draft/js/
mv $BAD_INSTALL_DIRECTORY/*.qml $DST/usr/share/draft/qml/

rm -Rf $BAD_INSTALL_DIRECTORY $DST/work

cd $DST

tar cvpzf ../draft.tar.gz .

mv ../draft.tar.gz ./