#!/bin/bash

input_pdf="main.pdf"
annexos_dir=annexos

mkdir -p $annexos_dir

annexA_pages="63-65"
annexA_output="annexA.pdf"
pdftk "$input_pdf" cat $annexA_pages output $annexos_dir/"$annexA_output"

annexB_pages="66-71"
annexB_output="annexB.pdf"
pdftk "$input_pdf" cat $annexB_pages output $annexos_dir/"$annexB_output"

annexC_pages="72-76"
annexC_output="annexC.pdf"
pdftk "$input_pdf" cat $annexC_pages output $annexos_dir/"$annexC_output"

annexD_pages="77-85"
annexD_output="annexD.pdf"
pdftk "$input_pdf" cat $annexD_pages output $annexos_dir/"$annexD_output"

annexE_pages="86-91"
annexE_output="annexE.pdf"
pdftk "$input_pdf" cat $annexE_pages output $annexos_dir/"$annexE_output"