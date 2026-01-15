#include <iostream>
#include <pqxx/pqxx>

int main() {
    try {
        pqxx::connection C("dbname=mydb user=postgres password=password host=db port=5432");
        pqxx::work W(C);
        W.exec("CREATE TABLE IF NOT EXISTS week3_table (id SERIAL PRIMARY KEY, note TEXT);");
        W.commit();
        std::cout << "Table created successfully!" << std::endl;
    } catch (const std::exception &e) {
        std::cerr << e.what() << std::endl;
        // TODO: update logic; W.exec ("UPDATE week3_table SET note'updated' WHERE id=1;);
        // TODO: Delete logic: W.exec("DELETE FROM week3_table WHERE id=1;");
        return 1;
    }
    return 0;
}
