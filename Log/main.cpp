#include <iostream>
#include <cmath>
using namespace std;
int main() {
    double base;//основание логарифма
    double arg;//аргумент логарифма
    double accuracy;//степень точности;
   cout<<"Введите основание логарифма"<<endl;
   cin>>base;
   cout<<"Введите аргумент логарифма"<<endl;
   cin>>arg;
   cout<<"Введите степень точности"<<endl;//лучше не вводить больше 7 ,будет долго считать
   cin>>accuracy;
   double delta=pow(10,-accuracy);
   double stepen;
   if(base==1){
       cout<<"Неверный ввод"<<endl;
   }
   else if(accuracy==1){
       cout<<"0";
   }
   else if(base<=0||arg<=0||accuracy<=0){
       cout<<"Неверный ввод"<<endl;
   }
   else if(base>1&&arg>1&&base>arg){
       stepen=1;
       while(pow(base,stepen)>arg){
           stepen-=delta;
       }
       cout<<stepen;
   }else if(base>1&&arg>1&&base<arg){
       stepen=1;
       while(pow(base,stepen)<arg){
           stepen+=delta;
       }
       cout<<stepen;
   }else if(base<1&&arg>1){
       stepen=0;
       while(pow(base,stepen)<arg){
           stepen-=delta;
       }
       cout<<stepen;
   }else if(base>1&&arg<1){
       stepen=0;
       while(pow(base,stepen)>arg){
           stepen-=delta;
       }
       cout<<stepen;
   }
   else if(base<1&&arg<1&&arg>base){
       stepen=1;
       while(pow(base,stepen)<arg){
           stepen-=delta;
       }
       cout<<stepen;
   }
   else if(base<1&&arg<1&&arg<base){
       stepen=1;
       while(pow(base,stepen)>arg){
           stepen+=delta;
       }
       cout<<stepen;
   }
}
