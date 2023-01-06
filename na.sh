#!/bin/bash
read -p "Enter your Name: " Name
grep -o . <<<"$Name"
