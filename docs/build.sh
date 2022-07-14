#!/bin/bash
documents=('../intro-c.md entorno.html' \
	'../intro-sistemas.md intro-sistemas.html' )

ndocs=${#documents[@]}

for (( i=0 ; $i<$ndocs ; i++ ))
do
	items=(${documents[$i]})
	source_file=${items[0]}
	target_file=${items[1]}
	echo "${source_file} --> ${target_file}"
	pandoc ${source_file} -N --self-contained  --template pandoc-templates/toc-sidebarL-title.html-template.html --toc  -o ${target_file}
done

