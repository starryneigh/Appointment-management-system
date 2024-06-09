package com.example.reserve.service.Impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.example.reserve.dto.LoginDTO;
import com.example.reserve.entity.Student;
import com.example.reserve.mapper.StudentMapper;
import com.example.reserve.service.StudentService;
import com.example.reserve.utils.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentMapper studentMapper;

    @Override
    public PageBean<Student> queryPage(Map<String, Object> paramMap) {
        PageBean<Student> pageBean = new PageBean<>((Integer) paramMap.get("pageno"), (Integer) paramMap.get("pagesize"));

        Integer startIndex = pageBean.getStartIndex();
        paramMap.put("startIndex", startIndex);
        List<Student> datas = studentMapper.queryList(paramMap);
        pageBean.setDatas(datas);

        Integer totalsize = studentMapper.queryCount(paramMap);
        pageBean.setTotalsize(totalsize);
        return pageBean;
    }

    @Override
    public int deleteStudent(List<Integer> ids) {
        return studentMapper.deleteBatchIds(ids);
    }

    @Override
    public int addStudent(Student student) {
        return studentMapper.insert(student);
    }

    @Override
    public int editStudent(Student student) {
        return studentMapper.editStudent(student);
    }

    @Override
    public Student login(LoginDTO loginDTO) {
        LambdaQueryWrapper<Student> wrapper = new LambdaQueryWrapper<Student>()
                .eq(Student::getUsername, loginDTO.getUsername())
                .eq(Student::getPassword, loginDTO.getPassword());
        return studentMapper.selectOne(wrapper);
    }

    @Override
    public boolean isStudentByClazzId(Integer id) {
        List<Student> studentList = studentMapper.isStudentByClazzId(id);
        return studentList.isEmpty();
    }

    @Override
    public int editPswdByStudent(Student student) {
        return studentMapper.updateById(student);
    }

    @Override
    public int updateById(Student student) {
        return studentMapper.updateById(student);
    }
}
