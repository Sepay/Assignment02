#! /usr/bin/env python3

#This script will get the RUN ACESSIONS from the dataset.

import sys
import csv

file = sys.argv[1]


with open(file) as f:
   coluna1= [line.split(',')[0] for line in f]

with open('references.txt', 'w') as w:
    w.write('\n'.join(coluna1))
