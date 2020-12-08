#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>

using namespace std;

int firstGeneration( int present[21][21]) {
    ifstream output(R"(D:\CLionProjects\microbi\work.dat.txt)");
    string nextLine;
    int countOfStrokes = 0;
    while (getline(output, nextLine)) {
        int count = 0;
        for (char c:nextLine) {
            if (count > 20) continue;
            if (c == 'X') {
                present[countOfStrokes + 1][count + 1] = 1;
            }
            count++;
        }
        countOfStrokes++;
    }
    output.close();
    ofstream input(R"(D:\CLionProjects\microbi\work.out.txt)");
    input<<"First Generation"<<endl;
    for(int i=0;i<21;i++){
        for(int j=0;j<21;j++){
           input<<present[i][j]<<" ";
        }
        input<<endl<<endl;
    }
    input.close();
    int countOfGenerations;
    cout<<"Введите количество поколений"<<endl;
    cin>>countOfGenerations;
    return countOfGenerations;
}
void futureGenerate(int future[21][21],int present[21][21]){
    for(int i=0;i<21;i++) {
        for (int j = 0; j < 21; j++) {
            if (present[i][j] == 0) {
                future[i][j]=1;
            } else if (present[i][j] == 12) {
                future[i][j]=0;
            } else {
                int count = 0;
                if (i - 1 > 0 && present[i - 1][j] != 0) count++;
                if (i + 1 < 21 && present[i + 1][j] != 0) count++;
                if (j - 1 > 0 && present[i][j - 1] != 0) count++;
                if (j + 1 < 21 && present[i][j + 1] != 0) count++;
                if (count < 2 || count == 4) future[i][j] = 0;
                else {
                    if (0 < future[i][j] && future[i][j] < 12) future[i][j]++;
                }
            }
        }
    }
}
bool checkAlive(int future[21][21]){
    int count=0;
    for(int i=0;i<21;i++) {
        for (int j = 0; j < 21; j++) {
            if(future[i][j]!=0) count++;
        }
    }
    if(count==0) return false;
    else return true;
}
void recordGeneration(int present[21][21],int i){
    fstream input(R"(D:\CLionProjects\microbi\work.out.txt)",ios::in|ios::out|ios::app|ios::binary|ios::ate);
    input<<i<<" "<<"Generation"<<endl;
    for(int i=0;i<21;i++){
        for(int j=0;j<21;j++){
            input<<setw(3)<<present[i][j];
        }
        input<<endl<<endl;
    }
    input.close();
}

int main() {
    int present[21][21];
    int future[21][21];
    for(int i=0;i<21;i++) {
        for (int j = 0; j < 21; j++) {
            present[i][j] = 0;
            future[i][j] = 0;
        }
    }
    int countOfGenerations =firstGeneration(present);
    for(int i=0;i<countOfGenerations;i++) {
        futureGenerate(future, present);
        if(!checkAlive(future)){
            cout<<"Все Умерли"<<endl;
        }
        for(int i=0;i<21;i++) {
            for (int j = 0; j < 21; j++) {
                present[i][j] = future[i][j];
            }
        }
        recordGeneration(present,i+2);
    }
}
