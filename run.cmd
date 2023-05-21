@echo off

IF NOT EXIST .\app (
	md .\app
)

docker-compose up -d --build