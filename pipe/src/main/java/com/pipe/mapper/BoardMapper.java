package com.pipe.mapper;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {

	List<LinkedHashMap<String,Object>> boardList(Map<String, Object> map);

	Map<String, Object> boardSelect(Map<String, Object> map);

	int boardInsert(Map<String, Object> map);

	int boardUpdate(Map<String, Object> map);

	int boardDelete(Map<String, Object> map);

}
