#include <iostream>
using namespace std;
    int waitingTime[100];
    int turnAroundTime[100];
    int completionTime[100];
// function to calculate waiting time :
void findWaitingTime(int n,int brustTime[]){
    //waiting time=turn around-brust time
    // calculating waiting time
    //waitingTime[1] =  turnAroundTime[1] - brustTime[1] ;
    for (int  i = 0; i < n ; i++ ){
       waitingTime[i] =  turnAroundTime[i] - brustTime[i] ;
    }
}
// fynction to calculate turn around time :
void findTurnAroundTime(int n,int arrivalTime[],int brustTime[]){
    //compltetiontime
    int prevcompletion=0;
    for (int  i = 0; i < n ; i++){
        completionTime[i] = prevcompletion + brustTime[i];
        prevcompletion=prevcompletion + brustTime[i];
        }

    for (int  i = 0; i < n ; i++){
        turnAroundTime[i] = completionTime[i] - arrivalTime[i];
        }
}
// function to calculate average waiting time and average turn around time
void findAvgTime(int n){
    //avg
     float total_waitingTime = 0, total_turnAroundTime = 0;

        for (int  i=0; i<n; i++){
        total_waitingTime = total_waitingTime + waitingTime[i];
        total_turnAroundTime = total_turnAroundTime + turnAroundTime[i];
    }
    cout << "Average waiting time = "
         << total_waitingTime / n;
    cout << "\nAverage turn around time = "
         << total_turnAroundTime / n << endl;
}
void table(int n,int process[],int arrivalTime[],int brustTime[],int waitingTime[]){

    cout << "Processes  "<< " Arrival Time  "<< " Burst time  "<< " Completion time  "<< " Waiting time  " << " Turn around time\n";

    for (int  i=0; i<n; i++) {
        cout << "\n" << process[i] << "\t\t" << arrivalTime[i] <<"\t    "<< brustTime[i] <<"\t\t  " << completionTime[i] <<"\t\t  " << waitingTime[i] <<"\t\t  " << turnAroundTime[i] <<endl;
    }
}
int main(){
    // input : process , arrival time , brust time
    // output : waiting time , turn around time , completion time

    //input :
    int process[] = {1,2,3};
    int arrivalTime[] = {0,3,6};
    int brustTime[] = {5,9,6};

    // output :


    int n = sizeof(process) / sizeof(process[0]); // length of the array.
    //cout << "the length of process array : " << n;


    // 1. find turn around :
    findTurnAroundTime(n,arrivalTime,brustTime);

    findAvgTime(n);
    table(n,process,arrivalTime,brustTime,waitingTime);
    // 2. find waiting time :

    // output : table ;

    //3 . find avg time :

    return 0;
}


