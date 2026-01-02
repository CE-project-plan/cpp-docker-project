FROM ubuntu:22.04
RUN apt-get update && apt-get install -y g++ libpqxx-dev libpq-dev
COPY main.cpp .
# This -lpqxx -lpq fix turns the Red X into a Green Checkmark
RUN g++ main.cpp -o app -lpqxx -lpq
CMD ["./app"]
