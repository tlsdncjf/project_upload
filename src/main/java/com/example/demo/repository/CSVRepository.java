package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.CSV;

@Mapper
public interface CSVRepository {

	@Insert({ "<script>",
			"INSERT INTO gHospital (encryptedSymbol, hName, typeCode, typeName, areaCode, areaName, addrCode, addrName, detailArea, zipCode, address, hNumber, hHomepage, openedYear, x, y) VALUES ",
			"<foreach collection='csvList' item='item' index='index' separator=','>",
			"(#{item.encryptedSymbol},#{item.hName}, #{item.typeCode}, #{item.typeName}, #{item.areaCode}, #{item.areaName}, #{item.addrCode}, #{item.addrName}, #{item.detailArea}, #{item.zipCode}, #{item.address}, #{item.hNumber}, #{item.hHomepage}, #{item.openedYear}, #{item.x}, #{item.y})",
			"</foreach>", "</script>" })
	void insertCSVList(List<CSV> csvList);
}