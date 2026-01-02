#include <iostream>
#include <pqxx/pqxx>

int main() {
    try {
        pqxx::connection C("dbname=mydb user=postgres password=password host=db port=5432");
        if (C.is_open()) {
            std::cout << "Connected to database successfully!" << std::endl;
        }
    } catch (const std::exception &e) {
        std::cerr << "Database Error: " << e.what() << std::endl;
        return 1;
    }
    return 0;
}
