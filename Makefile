include .env

release:
	GITHUB_TOKEN=${GITHUB_TOKEN} npm run release 

up:
	git pull
	docker compose -f "docker-compose.prod.yml" up -d --build
