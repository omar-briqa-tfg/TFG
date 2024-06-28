#!/bin/bash

project_code="TFG-340GREIN18"

final_dir=final
annexos_dir=annexos
dir=$(date +'%Y-%m-%d_%H-%M-%S')
mkdir -p "$final_dir"/"$dir"
mkdir -p "$final_dir"/"$dir"/"$annexos_dir"

cp main.pdf "$final_dir"/"$dir"/memoria_"$project_code".pdf
cp proposta.pdf "$final_dir"/"$dir"/proposta_"$project_code".pdf

cp "$annexos_dir"/annexA.pdf "$final_dir"/"$dir"/"$annexos_dir"/annexA_"$project_code".pdf
cp "$annexos_dir"/annexB.pdf "$final_dir"/"$dir"/"$annexos_dir"/annexB_"$project_code".pdf
cp "$annexos_dir"/annexC.pdf "$final_dir"/"$dir"/"$annexos_dir"/annexC_"$project_code".pdf
cp "$annexos_dir"/annexD.pdf "$final_dir"/"$dir"/"$annexos_dir"/annexD_"$project_code".pdf
cp "$annexos_dir"/annexE.pdf "$final_dir"/"$dir"/"$annexos_dir"/annexE_"$project_code".pdf
