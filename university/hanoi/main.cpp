#include <iostream>
using namespace std;
void hanoi(int num, char from, char to, char buff)
{
    if (num != 0 )
    {
        hanoi(num-1, from, buff, to);
        cout << from << " -> " << to << endl;
        hanoi(num-1, buff, to, from);
    }
}

int main()
{
    int num;
    cin >> num;
    hanoi(num, '1', '2', '3');
    return 0;
}