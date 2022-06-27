#! /usr/bin/env python3

#This script will build a txt file with the pretend vector to use in the Rstudio that will contain in order the species.

import sys
import csv
import pandas as pd

file = sys.argv[1]

df = pd.read_csv(file)
coluna = df['ScientificName']
coluna2 = df['SampleName']
colunas1 = coluna + "_1" + ', ' + coluna2
colunas2 = coluna + "_2" + ', ' + coluna2
with open('vetor.txt', 'w') as w:
    w.write("  \" , \" ".join(colunas1 + " \" , \" " + colunas2))
