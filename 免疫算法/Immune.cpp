#pragma once

#inclde<bits/stdc++.h>
using namespace std;

vector<KT*> kts;//��¼���еĿ���
int ktsLen = 0;//��������,������ 
double delta;//���ƶ���ֵ,����delta�����ƶ�Ϊ1
const int L = 0;//���������ĳ��� 

//�����ȼ���ĳ����� 
//���Լ����� 
int stim_a = 0;
int stim_b = 0;
//ָ��������
int stim_ea = 0; 

//----------------------------------------------

//������
class KT {
public:
		vector<double> vals;//ʵ������Ŀ�������
		int len;//vals�ĳ���,������
		
		//Ĭ�Ϲ���
		KT() {
			len = 0;
		}
		
		//���뿹����������Ĺ���
		KT(double* p,int n) {
			vals = vector<double>(n);
			for(int i=0; i<n; i++)
				vals[i] = p[i];
			len = n;
		}
		
		//��������
		KT(const KT& r) {
			len = r.len;
			this->vals = vector<double>(len);
			for(int i=0;i<len;i++)
				this->vals[i] = r.vals[i];
		} 
		
		//���� 
		~KT() {
			
		}
};


//���㿹��a�Ϳ�ԭky֮����׺Ͷ� 
double affinity(int ia) {
	//todo
}

//���㿹��a��b֮����׺Ͷ�(MSEʵ��<-ʵ������)
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

//���㿹��a��b֮����׺Ͷ�(��������ʵ��<-��ɢ����)
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

//���㿹��֮������ƶ�
int similarity(int ia,int ib) {
	assert(ia>0 && ia<ktsLen && ib>0 && ib<ktsLen);
	//���ƶ��������׺Ͷȼ����ƶ���ֵ����
	double aff = affinity_MSE(ia,ib);//!
	return aff<delta?1:0;
}


//���㿹��a��Ũ��
double density(int ia) {
	assert(ia>0 && ia<ktsLen);
	int sum = 0;
	for(int j=0; j<len; j++) {
		sum += similarity(ia,j);
	}
	return sum/len;
}

//�׺Ͷȴ�,Ũ�ȵ͵Ŀ����нϴ�����)
//����ѡ�����Ӹ��ݿ���ļ����Ⱦ���ѡ����Щ��������¡ѡ����� 

//���㿹��r�ļ�����(������ʽ) 
double stimulate_LIN(int ir) {
	assert(ir>0 && ir<ktsLen);
	KT* r = kts[ir];
	//ע����������ǿ���Ϳ�ԭ֮����׺Ͷ� 
	return stim_a*affinity(ir)-stim_b*density(ir);
}

//���㿹��r�ļ�����(ָ����ʽ)
double stimulate_EXP(int ir) {
	assert(ir>0 && ir<ktsLen);
	KT* r = kts[ir];
	//ע����������ǿ���Ϳ�ԭ֮����׺Ͷ� 
	return affinity(ir)*exp(-stim_ea*density(ir));
}

//��¡����:������a��¡ma��,ma���ȷ��? 
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

	//�����ڴ� 
	int ktsLen = kts.size();
	for(int i=0;i<ktsLen;i++)
		if(kts[i]!=nullptr)
			delete kts[i];
	return 0;
}
