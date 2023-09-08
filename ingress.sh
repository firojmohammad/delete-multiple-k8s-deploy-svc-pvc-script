#!/bin/bash
filename="ingress.txt"			
			
# Read the file line by line			
for line in $(cat "$filename"); do		

kubectl patch ingress ${line} -p '{"metadata":{"finalizers":[]}}' --type=merge

kubectl delete ingress ${line}
done
