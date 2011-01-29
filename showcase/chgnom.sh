#!/bin/sh
# fait par jf le 19 décembre 2010
# il faudra que j'apprenne une fois pour toutes
# les scripts de shell, car je perds un temps
# fou en faisant du copier-coller
# et il n'est pas toujours facile de trouver
# de bons points de départ
# dans ce cas prècis j'ai trouvé que 
# http://www.arachnoid.com/linux/shell_programming.html
# était très bien
for i in *-31.png
do
 ancien="$i"
 nouveau="${ancien/-31/}"
 mv -- "$i" "$nouveau"
 echo "$i renommé en $nouveau"
done
echo "fini"
# petit doute sur mettre un é dans ce message
# ok si utilisé via emacs, mais dans Terminal
# il aurait fallu en utf-8