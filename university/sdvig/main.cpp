#include <iostream>
 using namespace std;
int main() {
    int N;//размер массива
    cin>>N;
    int arr[N];
    for(int i=0;i<N;i++){
        arr[i]=(int)(rand()/10);
    }
    for(int i=0;i<N;i++){
        cout<<arr[i]<<" ";
    }
    cout<<endl;
    int k;// сдвиг массива
    cin>>k;
    for(int i=0;i<k;i++){
        arr[i]=0;
    }
    for(int i=k;i<N;i++){
        arr[i-k]=arr[i];
        arr[i]=0;
    }
    for(int i=0;i<N;i++){
        cout<<arr[i]<<" ";
    }
    cout<<endl;
}
