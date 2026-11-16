build:
	docker build -t tasktrack-api .

run:
	docker run -d -p 5000:5000 --name tasktrack_container tasktrack-api

stop:
	docker stop tasktrack_container && docker rm tasktrack_container

compose-up:
	docker compose up --build -d

compose-down:
	docker compose down