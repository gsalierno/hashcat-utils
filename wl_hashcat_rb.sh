#!/bin/bash

#script to recursively travel a dir of n levels

function traverse() {   

for file in `ls $1`
do
    #current=${1}{$file}
    if [ ! -d ${1}${file} ] ; then
        echo " Testing with: ${1}${file} wordlist"
        hashcat -m2500 -a0 -w3 $2 ${1}/${file} -r $3
    else
        #echo "entering recursion with: ${1}${file}"
            traverse "${1}/${file}" $2 $3
    fi
done
}

function main() {
    traverse $1 $2 $3
}

if [[ "$#" -ne 3 ]]; then
        echo "USAGE ./wl_hashcat wordlist_path .hccapx file path"
        exit -1
fi

main $1 $2 $3
