if ! [ -d ./app ]; then
	mkdir ./app
fi

docker-compose up -d --build