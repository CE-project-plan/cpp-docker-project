FROM ubuntu:22.04

RUN apt-get update && apt-get install -y g++ libpqxx-dev libpqxx-dev libpqxx-dev libpqxx-dev libpqxx-dev libpqxx-dev libpqxx-dev

WORKDIR /app

COPY main.cpp .

RUN g++ main.cpp -o app

CMD ["./app"]
RUN apt-get update && apt-get install -y libpqxx-dev
