#!/bin/bash

# Builds the operator
operator-sdk build kentwu111/rmlab-aci-operator:apic4.2-v1alpha2

# Push to Docker Hub
docker push kentwu111/rmlab-aci-operator:apic4.2-v1alpha2
