package com.cjc.app.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.app.model.StuApc;
import com.cjc.app.repository.Repository;
import com.cjc.app.serviceI.stuService;

@Service
public class ServiceImpl implements stuService {

	@Autowired
	private Repository srre;

	@Override
	public void saveStudentDetails(StuApc st) {
		srre.save(st);

	}

	@Override
	public List<StuApc> getAllStudent() {
		return srre.findAll();
	}

	@Override
	public List<StuApc> searchStudentByBatch(String batchNumber) {
		List<StuApc> batchStudent = srre.findAllByBatchNumber(batchNumber);
		return batchStudent;
	}

	@Override
	public StuApc getSingleStudent(int id) {
		Optional<StuApc> opStudent = srre.findById(id);
		return opStudent.get();
	}

	@Override
	public List<StuApc> updateStudentFees(int studentId,float ammount){
		StuApc s=srre.findById(studentId).get();
		float paidfees=Float.parseFloat(s.getFeesPaid())+ammount;
		s.setFeesPaid(String.valueOf(paidfees));
		srre.save(s);
		return(List<StuApc>)srre.findAll();
		
	}

	@Override
	public void removeDelete(int id) {
   srre.deleteById(id);		
	}

	
}
