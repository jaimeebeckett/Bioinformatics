#!/bin/sh

echo "Unique intersection:"
bedtools intersect -u -a $1 -b $2

echo "Number of unique regions interecting a coding exon:"
bedtools intersect -u -a $1 -b $2 | wc -l

echo "Number of unique regions not interecting a coding exon:"
bedtools intersect -v -a $1 -b $2 | wc -l