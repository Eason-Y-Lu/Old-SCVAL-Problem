/*
(3 4 5) => 6
(15 16 17) => 120
(20 21 22) => 210
(44 45 46) => 990
(608 609 610) => 185136
(3496 3497 3498) => 6112756
*/
#include <iostream>
#include <cmath>

using namespace std;

int trig_num(int n){
    return (n * (n + 1)) / 2;
}

bool mutiple_of_three(int num) {
    int a = floor(cbrt(num));
    int b = ceil(cbrt(num));
    int c = b + 1;
    if (num == a * b * c){
        return true;
    }else{
    return false;
    }
}
int first_of_three(int num) {
    int a = floor(cbrt(num));
    return a;
}
int main() {
    printf("(");
    for (int x = 1; trig_num(x) <= 258474216; x++) {
        if (mutiple_of_three(trig_num(x))) {
            int y = first_of_three(trig_num(x));
            int z = trig_num(x);
            printf("(%d %d %d)",x,y,z);
        }
    }
    printf(") \n");
    return 0;
}
