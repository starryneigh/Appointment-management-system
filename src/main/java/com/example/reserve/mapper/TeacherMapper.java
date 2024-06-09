package com.example.reserve.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.reserve.entity.Teacher;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface TeacherMapper extends BaseMapper<Teacher> {
    List<Teacher> queryList(Map<String, Object> paramMap);

    Integer queryCount(Map<String, Object> paramMap);

    int editTeacher(Teacher teacher);
}
