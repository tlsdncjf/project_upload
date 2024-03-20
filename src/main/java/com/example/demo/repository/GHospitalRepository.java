package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.demo.vo.GHospital;

@Mapper
public interface GHospitalRepository {

	@Select("""
			<script>
			SELECT COUNT(*) AS cnt
			FROM gHospital AS G
			WHERE 1
			<if test="boardId != 0">
				AND boardId = #{boardId}
			</if>
			<if test="searchKeyword != ''">
				<choose>
					<when test="searchKeywordTypeCode == 'hName'">
						AND G.hName LIKE CONCAT('%',#{searchKeyword},'%')
					</when>
					<when test="searchKeywordTypeCode == 'areaName'">
						AND G.areaName LIKE CONCAT('%',#{searchKeyword},'%')
					</when>
					<otherwise>
						AND G.hName LIKE CONCAT('%',#{searchKeyword},'%')
						OR G.areaName LIKE CONCAT('%',#{searchKeyword},'%')
					</otherwise>
				</choose>
			</if>
			ORDER BY G.id DESC
			</script>
			""")
	public int getGHospitalsCount(int boardId, String searchKeywordTypeCode, String searchKeyword);
	
	@Select("""
			SELECT *
			FROM gHospital
			WHERE id = #{id}
			AND hName = #{hName}
			AND areaName = #{areaName}
			AND address = #{address}
			""")
	public List<GHospital> getHospitals();
	
	public List<GHospital> getForPrintGHospitals(int boardId, int limitFrom, int limitTake,
			String searchKeywordTypeCode, String searchKeyword);
	
}