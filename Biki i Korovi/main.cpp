#include <fstream>
#include <iostream>
#include <sstream>

using namespace std;

int main(){
    double b;
    int num; //���������� �᫮
    int numOfCycles;
    cout<<"������ �᫮ 横��� ��� ��砩���� �᫠"<<endl;
    cin>>numOfCycles;
    if(numOfCycles<0){
        cout<<"������� ����୮� �᫮"<<endl;
    }
    for(int i=0;i<numOfCycles;i++){
        b=rand();
    }
    cout<<"��� ��砫���, �⣠���� 4-�� ���筮� �᫮ � ࠧ�묨 ��ࠬ�!"<<endl;
    while(true){
        b=rand();
        while(b<3300){
            b=rand();
        }
        num=b/3.3;
        int first;
        int second;
        int third;
        int fourth;
        int c=num;
        fourth= c%10;
        c/=10;
        third= c%10;
        c/=10;
        second= c%10;
        c/=10;
        first= c%10;
        if(first==second||first==third||first==fourth
        ||second==third||second==fourth||third==fourth){
            continue;
        }else{
            break;
        }
    }
    stringstream ss;
    ss << num;
    string curNum;
    string numS = ss.str();
    // cout<<numS<<endl;
    while(true){
        cout<<"������ ��� �᫮";
        cin>>curNum;
        if(curNum.length()>4){
            cout<<"������ ����";
            continue;
        }else{
            int countP=0;
            int countM=0;
            if(curNum[0]==numS[0]) {
                countP++;
            }else if(curNum[0]==numS[1]||
            curNum[0]==numS[2]||curNum[0]==numS[3]
            ){
                countM++;
            }
            if(curNum[1]==numS[1]) {
                countP++;
            }
            else if(curNum[1]==numS[0]||
                    curNum[1]==numS[2]||curNum[1]==numS[3]){
                countM++;
            }
            if(curNum[2]==numS[2]) {
                countP++;
            }
            else if(curNum[2]==numS[1]||
                    curNum[2]==numS[0]||
                    curNum[2]==numS[3]){
                countM++;
            }
            if(curNum[3]==numS[3]) {
                countP++;
            }
            else if(curNum[3]==numS[1]||
                 curNum[3]==numS[2]||
                 curNum[3]==numS[0]){
                countM++;
            }
            if(countP==4){
                cout<<"�� �⣠���� �᫮ "<<numS<<"!"<<endl;
                break;
            }else{
                cout<<countP<<" +"<<" � "<<countM<<" -"<<endl;
            }
        }

    }
}
