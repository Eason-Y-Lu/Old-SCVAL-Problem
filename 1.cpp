/*
(3 4 5) => 6
(15 16 17) => 120
(20 21 22) => 210
(44 45 46) => 990
(608 609 610) => 185136
(3496 3497 3498) => 6112756
*/
#include <iostream>

using namespace std;

int trinum(int n){
    return (n * (n + 1)) / 2;
}

bool conseint(int num) {
    for (int i = 1; i <= num / 3; i++) {
        if (i * (i + 1) * (i + 2) == num) {
            return true;
        }
    }
    return false;
}
int iconseint(int num) {
    for (int i = 1; i <= num / 3; i++) {
        if (i * (i + 1) * (i + 2) == num) {
            return i;
        }
    }
    return -1;
}
int main() {
    printf("(");
    for (int x = 1; trinum(x) <= 258474216; x++) {
        if (conseint(trinum(x))) {
            int y = iconseint(trinum(x));
            int z = trinum(x);
            printf("(%d %d %d)",x,y,z);
        }
    }
    printf(")");
    return 0;
}
