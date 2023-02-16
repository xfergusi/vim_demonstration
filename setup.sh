#!/bin/bash
input="/Users/ian/Desktop/VIM_IS_LIFE/config/prod-cluster-setup.yaml"
flag="T"
while IFS= read -r line
do
    if [ "$line" == "environment: ian-ferguson-Lab01" ]
    then
        echo ""
        echo "ERROR: Config malformed /Users/ian/Desktop/VIM_IS_LIFE/config/prod-cluster-setup.yaml"
        echo "Invalid configuration property node.environment: is malformed (for class io.airlift.node.NodeConfig.environment)"
        echo ""
        flag="F"
    fi
done < "$input"

    if [ "$flag" == "T" ]
    then
        echo ""
        echo "Config configured"
        echo ""
    fi