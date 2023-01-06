#!/bin/bash
read -p "Enter your word : " word
grep -o . <<< $word
