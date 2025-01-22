package com.cjc.app.serviceI;

import java.util.List;

import com.cjc.app.model.StuApc;

public interface stuService {
	public void saveStudentDetails(StuApc st);

	List<StuApc> getAllStudent();

	public List<StuApc> searchStudentByBatch(String batchNumber);


	public StuApc getSingleStudent(int id);

	public List<StuApc> updateStudentFees(int studentId, float ammount);

	public void removeDelete(int id);
}
