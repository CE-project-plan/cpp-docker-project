FROM ubuntu:22.04
RUN apt-get update && apt-get install -y g++ libpqxx-dev libpq-dev
COPY main.cpp .
# This line fixes the "undefined reference" Red X error
RUN g++ main.cpp -o app -lpqxx -lpq
CMD ["./app"]
