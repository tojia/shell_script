#!/bin/bash

sed 's/dog/cat/'  data1.txt

sleep 2
echo -e  "\n\n"


sed -e 's/brown/green/; s/dog/cat/' data1.txt
