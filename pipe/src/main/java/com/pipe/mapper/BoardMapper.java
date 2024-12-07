package com.pipe.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {

	List<Map<String, Object>> selectListBoard(Map<String, Object> map);

	void deleteBoard(Map<String, Object> map);

	void updateBoard(Map<String, Object> map);

	void insertBoard(Map<String, Object> map);

	Map<String, Object> selectBoard(Map<String, Object> map);

}
