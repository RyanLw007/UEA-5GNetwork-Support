#!/bin/bash

vmname = "Chosen name"

if [ -z "$1"]; then
    echo "Usage: $0 <VM_NAME>"
    exit 1
fi

vmname = "$1"

VBoxManage startvm "$vmname"

if [ $? -eq 0]; then
    echo "VM '$vmname' started successfully."
    exit 1
fi