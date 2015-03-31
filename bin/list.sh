#!/bin/bash

# nb: doesn't get projects

for resource_type in builds buildconfigs deploymentconfigs imagerepositories images pods replicationcontrollers routes services
do
	echo "# Entity: ${resource_type}"
	osc get ${resource_type}
done
