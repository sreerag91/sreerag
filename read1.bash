#!/bin/bash
read -p "Plese enter your age:" age
days=$[ $age * 365 ]
echo "That makes you over $days days old"
