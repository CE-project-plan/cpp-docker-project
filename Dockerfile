FROM ubuntu:22.04

# Install the compiler and the database libraries
RUN apt-get update && apt-get install -y \
    g++ \
    libpqxx-dev \
    libpq-dev

COPY main.cpp .

# THE FIX: Added the linker flags so it can find the database code
RUN g++ main.cpp -o app -lpqxx -lpq

CMD ["./app"]

