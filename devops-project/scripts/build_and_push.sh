
#!/bin/bash
set -euo pipefail
if [ -z "${1:-}" ]; then
  echo "Usage: $0 <docker_image_tag>"
  exit 1
fi
IMAGE="$1"
echo "Building app jar..."
mvn -B -DskipTests package -f app/pom.xml
echo "Building Docker image $IMAGE..."
docker build -t "$IMAGE" -f docker/Dockerfile .
echo "Pushing $IMAGE..."
docker push "$IMAGE"
echo "Done."
