COMPOSE_RUN=docker-compose run --rm
COMPOSE_UP=docker-compose up
RUN_NPM=${COMPOSE_RUN} dev-api npm


start-dependencies:
	${COMPOSE_RUN} start-dependencies

i:
	${RUN_NPM} i --save $(module)

i-dev:
	${RUN_NPM} i --save-dev $(module)

install:
	${RUN_NPM} ci --production

run:
	${RUN_NPM} $(command)

dev: start-dependencies
	${COMPOSE_UP} dev-api
