package com.example.reserve.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @ClassName Reserve
 * @Description TODO
 * @Author 86151
 * @DATE 2024/6/13 14:38
 * @Version 1.0
 */
@Data
@TableName("reserve")
public class Reserve {
  @TableId(value = "id", type = IdType.AUTO)
  private Integer id;
  private Integer studentId;
  private Integer availabilityId;
  private String status;
  @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
  private Date reservationTime;
}
