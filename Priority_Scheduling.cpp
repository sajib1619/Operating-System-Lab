#include <bits/stdc++.h>
using namespace std;

int global_time = 1;

struct process{
    string p_name;
    int at, bt, priority;
};

struct cmp {
    bool operator()(process &p1, process &p2) {
        if(p1.priority == p2.priority){
            if(p1.at == p2.at){
                return p1.bt > p2.bt;
            }
            else return p1.at > p2.at;
        }
        else return p1.priority > p2.priority; 
    }
};

bool cmp_ar(process &p1, process &p2) {
    return p1.at < p2.at;
}

void execute_process(process p){
    while(p.bt--){
        cout << "executing process: " << p.p_name << ", Time: " << global_time << endl;
        global_time++;
    }
    cout << "execution done for process: " << p.p_name << "\n\n";
}

int main() {
    int n; cin >> n;
    vector<process> ar;
    for(int i=0; i<n; i++){
        process p;
        cin >> p.p_name >> p.at >> p.bt >> p.priority;
        ar.push_back(p);
    }

    sort(ar.begin(), ar.end(), cmp_ar);
    priority_queue<process, vector<process>, cmp> ready_q;

    int i = 0;
    while(i < n){
        while(ar[i].at <= global_time){
            ready_q.push(ar[i]);
            i++;
        }

        if(!ready_q.empty()) {
            process p = ready_q.top();
            ready_q.pop();
            execute_process(p);
        }
        else {
            cout << "waiting...\ttime: " << global_time << "\n";
            global_time++;
        }
    }

    while(!ready_q.empty()){
        process p = ready_q.top();
        ready_q.pop();
        execute_process(p);
    }

    cout << "Completion Time: " << --global_time << endl;
}
