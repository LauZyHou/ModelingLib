#pragma once

#inclde<bits/stdc++.h>
using namespace std;

vector<KT*> kts;//记录所有的抗体
int ktsLen = 0;//抗体总数,加速用 
double delta;//相似度阈值,大于delta设相似度为1
const int L = 0;//抗体向量的长度 

//激励度计算的超参数 
//线性激励度 
int stim_a = 0;
int stim_b = 0;
//指数激励度
int stim_ea = 0; 

//----------------------------------------------

//抗体类
class KT {
public:
		vector<double> vals;//实数编码的抗体向量
		int len;//vals的长度,加速用
		
		//默认构造
		KT() {
			len = 0;
		}
		
		//传入抗体向量数组的构造
		KT(double* p,int n) {
			vals = vector<double>(n);
			for(int i=0; i<n; i++)
				vals[i] = p[i];
			len = n;
		}
		
		//拷贝构造
		KT(const KT& r) {
			len = r.len;
			this->vals = vector<double>(len);
			for(int i=0;i<len;i++)
				this->vals[i] = r.vals[i];
		} 
		
		//析构 
		~KT() {
			
		}
};


//计算抗体a和抗原ky之间的亲和度 
double affinity(int ia) {
	//todo
}

//计算抗体a和b之间的亲和度(MSE实现<-实数编码)
double affinity_MSE(int ia,int ib) {
	assert(ia>0 && ia<ktsLen && ib>0 && ib<ktsLen);
	KT* a = kts[ia];
	KT* b = kts[ib];
	double sum = 0;
	for(int k=0;i<L;k++) {
		double diff = a->vals[k] - b->vals[k];
		sum += diff*diff;	
	}
	return sqrt(sum);
}

//计算抗体a和b之间的亲和度(汉明距离实现<-离散编码)
int affinity_HAM(int ia,int ib) {
	assert(ia>0 && ia<ktsLen && ib>0 && ib<ktsLen);
	KT* a = kts[ia];
	KT* b = kts[ib];
	int sum = 0;
	for(int k=0;i<L;k++) {
		sum += a->vals[k]==b->vals[k] ? 1:0;
	}
	return sum;
} 

//计算抗体之间的相似度
int similarity(int ia,int ib) {
	assert(ia>0 && ia<ktsLen && ib>0 && ib<ktsLen);
	//相似度由两者亲和度及相似度阈值导出
	double aff = affinity_MSE(ia,ib);//!
	return aff<delta?1:0;
}


//计算抗体a的浓度
double density(int ia) {
	assert(ia>0 && ia<ktsLen);
	int sum = 0;
	for(int j=0; j<len; j++) {
		sum += similarity(ia,j);
	}
	return sum/len;
}

//亲和度大,浓度低的抗体有较大激励度)
//免疫选择算子根据抗体的激励度决定选择哪些抗体进入克隆选择操作 

//计算抗体r的激励度(线性形式) 
double stimulate_LIN(int ir) {
	assert(ir>0 && ir<ktsLen);
	KT* r = kts[ir];
	//注意这里算的是抗体和抗原之间的亲和度 
	return stim_a*affinity(ir)-stim_b*density(ir);
}

//计算抗体r的激励度(指数形式)
double stimulate_EXP(int ir) {
	assert(ir>0 && ir<ktsLen);
	KT* r = kts[ir];
	//注意这里算的是抗体和抗原之间的亲和度 
	return affinity(ir)*exp(-stim_ea*density(ir));
}

//克隆算子:将抗体a克隆ma次,ma如何确定? 
void clone(int ia,int ma) {
	assert(ia>0 && ia<ktsLen);
	KT* a = kts[ia];
	for(int i=0;i<ma;i++) {
		kts.push_back(new KT(*a));
	}
	ktsLen += ma;
}

int main() {
	//todo

	//回收内存 
	int ktsLen = kts.size();
	for(int i=0;i<ktsLen;i++)
		if(kts[i]!=nullptr)
			delete kts[i];
	return 0;
}
