#!/bin/bash
filename="svc.txt"			
			
# Read the file line by line			
for line in $(cat "$filename"); do		

kubectl delete svc ${line}

done
