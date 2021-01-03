typedef struct Item {
    int a;
    float b;
    char* name;
} Item;

int main(void) {
    Item item = { 5, 2.2, "George" };
    return 0;
}
