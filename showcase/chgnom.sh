#!/bin/sh
# fait par jf le 19 d�cembre 2010
# il faudra que j'apprenne une fois pour toutes
# les scripts de shell, car je perds un temps
# fou en faisant du copier-coller
# et il n'est pas toujours facile de trouver
# de bons points de d�part
# dans ce cas pr�cis j'ai trouv� que 
# http://www.arachnoid.com/linux/shell_programming.html
# �tait tr�s bien
for i in *-31.png
do
 ancien="$i"
 nouveau="${ancien/-31/}"
 mv -- "$i" "$nouveau"
 echo "$i renomm� en $nouveau"
done
echo "fini"
# petit doute sur mettre un � dans ce message
# ok si utilis� via emacs, mais dans Terminal
# il aurait fallu en utf-8