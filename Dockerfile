FROM ubuntu:22.04
RUN apt-get update && apt-get install -y g++ libpqxx-dev libpq-dev
COPY main.cpp .
# The fix: added -lpqxx -lpq to the build command
RUN g++ main.cpp -o app -lpqxx -lpq
CMD ["./app"]
