#include <iostream>
#include <pqxx/pqxx>

int main() {
    try {

        pqxx::connection C("dbname=mydb user=postgres password=mysecret host=localhost port=5432");
        if (C.is_open()) {
            std::cout << "Successfully connected to: " << C.dbname() << std::endl;
        }
        

        pqxx::work W(C); 
        // Example: W.exec("CREATE TABLE IF NOT EXISTS users (id SERIAL, name TEXT);");
        W.commit();

    } catch (const std::exception &e) {
        std::cerr << "Database Error: " << e.what() << std::endl;
        return 1;
    }
    return 0;
}
