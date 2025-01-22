package com.cjc.app.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cjc.app.model.StuApc;

public interface Repository extends JpaRepository<StuApc, Integer> {

 public List<StuApc> findAllByBatchNumber(String batchNumber);
 
}
