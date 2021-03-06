#include <iostream>
#include <string>
#include <set>
using namespace std;

double intersection(const set<string>& A, const set<string>& B){
	int common = 0;
	auto it = A.begin(), it2 = B.begin();
	while(it!= A.end() and it2 != B.end()){
		if(*it < *it2){
			++it;
		}
		else if(*it > *it2){
			++it2;
		}
		else {
			++it;
			++it2;
			++common;
		}
	}
	return common;
}

double Jaccard(const set<string>& A, const set<string>& B){
//J(A,B) = |A ∩ B|/|A U B|= |A ∩ B| / (|A|+|B| - |A ∩ B|)
	double size_intersection = intersection(A,B);
	return size_intersection / (A.size() + B.size() - size_intersection);
}
