#!env sh
docker compose pull
if [ -f "./no-caddy" ]; then
  echo "Build docker without Caddy2"
  docker compose -f docker-compose.no-caddy.yml pull
  docker compose -f docker-compose.no-caddy.yml up -d
else
  echo "Build docker with Caddy2 (HTTP host)"
  docker compose pull
  docker compose up -d
fi
