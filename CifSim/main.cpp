#include <iostream>
#include <string>
using namespace std;
int main() {
    string s;//число для проверки
    cout<<"Введите число для проверки"<<endl;
    cin>>s;
    string fraction;//дробная часть числа
    string number;//целая часть числа
    bool flag=false;
    for(char c:s){
        if(!flag){
            if(c==','||c=='.'){
                flag=true;
            }else{
                number+=c;
            }
        }else{
            fraction+=c;
        }
    }
    if(fraction.length()==number.length()){
        for(int i=0;i<fraction.length();i++){
            if(fraction[i]==number[fraction.length()-1-i]){
            }else{
                cout<<"NO";
                return 0;
            }
        }
    }else{
        cout<<"NO";
        return 0;
    }
    cout<<"YES";
}
