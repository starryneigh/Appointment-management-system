-- 插入测试数据到s_clazz表
INSERT INTO `s_clazz` (`name`, `info`) VALUES
('计算机科学与技术', '专注于计算机系统和软件的开发与应用。'),
('软件工程', '培养软件开发、测试和项目管理的专业技能。'),
('电子信息工程', '研究电子设备和信息系统的设计、开发、测试和应用。'),
('机械工程', '涉及机械设计、制造和自动化技术。'),
('土木工程', '学习建筑结构的设计、施工和维护。'),
('生物技术', '应用生物学原理解决医学、农业和环境问题。'),
('金融学', '研究资金的管理、投资和风险分析。'),
('市场营销', '学习市场分析、产品推广和品牌管理。'),
('艺术设计', '培养艺术创作和视觉设计的专业技能。'),
('国际商务', '专注于国际贸易、跨文化管理和全球市场分析。');

-- 插入测试数据到s_student表
INSERT INTO `s_student` (`username`, `password`, `nick_name`, `clazz_id`, `sex`, `mobile`, `create_date`) VALUES
(202301001, '123', 'Alice', 5, '女', '13512345678', CURRENT_TIMESTAMP()),
(202301002, '123', 'Bob', 6, '男', '13512345679', CURRENT_TIMESTAMP()),
(202301003, '123', 'Cindy', 7, '女', '13512345680', CURRENT_TIMESTAMP()),
(202301004, '123', 'David', 8, '男', '13512345681', CURRENT_TIMESTAMP()),
(202301005, '123', 'Eva', 9, '女', '13512345682', CURRENT_TIMESTAMP()),
(202301006, '123', 'Frank', 5, '男', '13512345683', CURRENT_TIMESTAMP()),
(202301007, '123', 'Grace', 6, '女', '13512345684', CURRENT_TIMESTAMP()),
(202301008, '123', 'Henry', 7, '男', '13512345685', CURRENT_TIMESTAMP()),
(202301009, '123', 'Ivy', 8, '女', '13512345686', CURRENT_TIMESTAMP()),
(202301010, '123', 'Jack', 9, '男', '13512345687', CURRENT_TIMESTAMP());

-- 插入测试数据到s_teacher表
INSERT INTO `s_teacher` (`username`, `password`, `clazz_id`, `sex`, `mobile`, `create_date`) VALUES
('Alice', '123', 5, '女', '13912345678', CURRENT_TIMESTAMP()),
('Bob', '123', 6, '男', '13812345678', CURRENT_TIMESTAMP()),
('Cindy', '123', 7, '女', '13712345678', CURRENT_TIMESTAMP()),
('David', '123', 8, '男', '13612345678', CURRENT_TIMESTAMP()),
('Eva', '123', 9, '女', '13512345678', CURRENT_TIMESTAMP()),
('Frank', '123', 5, '男', '13412345678', CURRENT_TIMESTAMP()),
('Grace', '123', 6, '女', '13312345678', CURRENT_TIMESTAMP()),
('Henry', '123', 7, '男', '13212345678', CURRENT_TIMESTAMP()),
('Ivy', '123', 8, '女', '13112345678', CURRENT_TIMESTAMP()),
('Jack', '123', 9, '男', '13012345678', CURRENT_TIMESTAMP());

-- 插入测试数据到s_course表
INSERT INTO `s_course` (`name`, `teacher_id`, `course_date`, `selected_num`, `max_num`, `info`) VALUES
('高等数学', 12, '10:00:00', 0, 50, '基础数学课程，适合所有理工科学生。'),
('线性代数', 13, '11:00:00', 0, 50, '向量空间和线性变换的课程。'),
('概率论与数理统计', 14, '08:00:00', 0, 50, '概率论和统计学的基础课程。'),
('大学物理', 15, '14:00:00', 0, 50, '物理基础课程，涵盖力学、电磁学等。'),
('计算机科学导论', 16, '09:00:00', 0, 50, '计算机科学的入门课程，介绍基本概念。'),
('英语口语', 12, '15:00:00', 0, 50, '提高英语口语能力的课程。'),
('现代文学', 13, '16:00:00', 0, 50, '研究现代文学流派和作品。'),
('心理学基础', 14, '18:00:00', 0, 50, '心理学的基本概念和理论。'),
('生物技术导论', 15, '13:00:00', 0, 50, '生物技术的基本原理和应用。'),
('环境科学', 16, '17:00:00', 0, 50, '环境科学的基础知识和当前问题。');

CREATE TABLE TeacherAvailability (
    availability_id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_id INT,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id)
);
