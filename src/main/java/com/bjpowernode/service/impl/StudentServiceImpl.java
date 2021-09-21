package com.bjpowernode.service.impl;

import com.bjpowernode.dao.StudentDao;
import com.bjpowernode.domain.Student;
import com.bjpowernode.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class StudentServiceImpl implements StudentService {
    //引用类型自动注入@Atuowired,@Resource
    @Resource
    private StudentDao dao;
    @Override
    public int addStudent(Student student) {
       int count =  dao.insertStudent(student);
        return count;
    }

    @Override
    public List<Student> findStudents() {

        return dao.selectStudent();
    }
}
