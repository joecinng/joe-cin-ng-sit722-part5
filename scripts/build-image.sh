#
# Builds a Docker image.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   VERSION - The version number to tag the images with.
#
# Usage:
#
#       ./scripts/build-image.sh
#

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

docker-compose build --build-arg CONTAINER_REGISTRY=$CONTAINER_REGISTRY

# Tag the images
docker tag book_catalog:latest $CONTAINER_REGISTRY/book_catalog
docker tag inventory_management:latest $CONTAINER_REGISTRY/inventory_management