package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class GHospital {
	private int id;
	private String encryptedSymbol; // 암호화요양기호
	private String hName; // 병원이름
	private int typeCode; // 종별코드
	private String typeName; // 종별이름
	private int areaCode; // 지역코드
	private String areaName; // 지역이름
	private int addrCode; // 시군구코드
	private String addrName; // 시군구이름
	private String detailArea; // 읍동면
	private int zipCode; // 우편번호
	private String address; // 주소
	private String hNumber; // 전화번호
	private String hHomepage; // 홈페이지
	private int openedYear; // 개설년도
	private double x; // x좌표
	private double y; // y좌표
}