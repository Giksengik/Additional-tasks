    #include <iostream>
    using namespace std;
    int main() {
        int N;//количество элементов в массиве
        cin>>N;
        int delay;
        cin>>delay;
        for(int i=0;i<delay;i++){
            rand();
        }
        int arr [N];
        for(int i=0;i<N;i++){
            if(i==0){
                arr[i]=(int)(rand()/10);
            }else {
               int k=(int)(rand()/10);
               while(k<arr[i-1]){
                   k=(int)(rand()/10);
               }
               arr[i]=k;
            }
        }
        for(int i=0;i<N;i++) {
            cout<<arr[i]<<endl;
        }
        int count=0;
        for(int i=0;i<N;i++){
            if(i==0) count++;
            else {
                if(arr[i]!=arr[i-1]) count++;
            }
        }
        cout<< count<<endl;
    }
