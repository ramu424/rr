#!/bin/bash
i=$(find /root/tuy -type f -exec rm -rf {} \;)
echo $i
j=$(find /root/muy -type f -exec rm -rf {} \;)
echo $j
a=$(find /root/nuy -type f -exec rm -rf {} \;)
echo $a
b=$(find /root/ouy -type f -exec rm -rf {} \;)
echo $b
