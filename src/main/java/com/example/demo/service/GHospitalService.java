package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.GHospitalRepository;
import com.example.demo.vo.GHospital;

@Service
public class GHospitalService {

	@Autowired
	private GHospitalRepository gHospitalRepository;

	public GHospitalService(GHospitalRepository gHospitalRepository) {
		this.gHospitalRepository = gHospitalRepository;
	}

	// 서비스 메서드

	public int getGHospitalsCount(int boardId, String searchKeywordTypeCode, String searchKeyword) {
		return gHospitalRepository.getGHospitalsCount(boardId, searchKeywordTypeCode, searchKeyword);
	}

	public List<GHospital> getForPrintGHospitals(int boardId, int itemsInAPage, int page, String searchKeywordTypeCode,
			String searchKeyword) {
		
		int limitFrom = (page - 1) * itemsInAPage;
		int limitTake = itemsInAPage;
		
		return gHospitalRepository.getForPrintGHospitals(boardId, limitFrom, limitTake, searchKeywordTypeCode,
				searchKeyword);
	}
}