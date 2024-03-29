#!/bin/bash

# Entradas:
#  1) dissertacao.pdf
#  2) ee_user_guide.pdf
# A paginação dos arquivos de entrada já deve estar organizada.
# Obs: comando para alterar paginação: \setcounter{page}{87}

pdftk ../tex/dissertacao.pdf cat 1-73 output parte1.pdf dont_ask 
pdftk ../tex/dissertacao.pdf cat 74-end output bibliografia.pdf dont_ask
pdftk parte1.pdf ee_user_guide.pdf bibliografia.pdf cat output final-noinfo.pdf dont_ask 
pdftk ../tex/dissertacao.pdf dump_data > metadata.txt
sed -i 's/BookmarkPageNumber: 74/BookmarkPageNumber: 111/' metadata.txt
pdftk final-noinfo.pdf update_info metadata.txt output dissertacao-leo.pdf dont_ask
rm parte1.pdf bibliografia.pdf final-noinfo.pdf metadata.txt
