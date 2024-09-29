#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Function to display usage information
usage() {
    echo "Usage: $0 <image_name> <image_tag>"
    echo
    echo "Arguments:"
    echo "  image_name    Name of the Docker image."
    echo "  image_tag     Tag of the Docker image."
    exit 1
}

# Check if exactly two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Error: Invalid number of arguments."
    usage
fi

# Assign arguments to variables
IMAGE_NAME="$1"
IMAGE_TAG="$2"

# Capture the current directory
CURRENT_DIR="$(pwd)"

echo "Current Directory: $CURRENT_DIR"
echo "Image Name: $IMAGE_NAME"
echo "Image Tag: $IMAGE_TAG"

# Define the path to your Ansible playbook
# Modify this path if your playbook is located elsewhere
ANSIBLE_DIR="/home/ssilver/dev/ocean-infra"

# Execute the Ansible playbook with the provided variables
ansible-playbook "$ANSIBLE_DIR/cicd.yml" \
    -i "$ANSIBLE_DIR/inventory.yml" \
    --extra-vars "image_name=$IMAGE_NAME image_tag=$IMAGE_TAG image_path=$CURRENT_DIR"
