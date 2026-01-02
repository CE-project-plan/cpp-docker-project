FROM ubuntu:22.04
RUN apt-get update && apt-get install -y g++ libpqxx-dev libpq-dev
COPY main.cpp .
# This -lpqxx -lpq line is the ONLY way to fix that "undefined reference" error
RUN g++ main.cpp -o app -lpqxx -lpq
CMD ["./app"]
