#!/bin/bash

# nb: doesn't get projects

for resource_type in builds buildconfigs deploymentconfigs imagerepositories images pods replicationcontrollers routes services
do
	echo "# Entity: ${resource_type}"
	osc get ${resource_type}
	osc get ${resource_type} | grep -v "^[A-Z ]*$" | awk '{print $1}' | sed "s/\(.*\)/osc delete ${resource_type} \1"
done
