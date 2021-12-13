#!/bin/bash

# 1-й аргумент - папака в которой исправляем пермишны рекурсивно
# 2-й аргумент - пермишны для папок
# 3-й аргумент - пермишны для файлоы
#
# приемр tree-fix.sh ./tree 755 644
# по сути - обход дерева. делается рекурсивно

function fixdir {
    lst=$( ls $1 )
    cd $1
    for name in $lst

    do
        if [ -f $name ]
        then
            #>&2 echo "file $name"
            chmod 666 $name
        fi

        if [ -d $name ]
        then 
            #>&2 echo "dir $name"
            chmod 777 $name
            fixdir $name
        fi
    done
    cd ..
}

fixdir $1 
