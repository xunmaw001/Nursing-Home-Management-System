package com.entity.model;

import com.entity.FuwugongdanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 服务工单
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-05-13 12:25:08
 */
public class FuwugongdanModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 医护工号
	 */
	
	private String yihugonghao;
		
	/**
	 * 医护姓名
	 */
	
	private String yihuxingming;
		
	/**
	 * 联系电话
	 */
	
	private String lianxidianhua;
		
	/**
	 * 老人编号
	 */
	
	private String laorenbianhao;
		
	/**
	 * 老人姓名
	 */
	
	private String laorenxingming;
		
	/**
	 * 手机号
	 */
	
	private String shoujihao;
		
	/**
	 * 时间段
	 */
	
	private String shijianduan;
		
	/**
	 * 服务要求
	 */
	
	private String fuwuyaoqiu;
				
	
	/**
	 * 设置：医护工号
	 */
	 
	public void setYihugonghao(String yihugonghao) {
		this.yihugonghao = yihugonghao;
	}
	
	/**
	 * 获取：医护工号
	 */
	public String getYihugonghao() {
		return yihugonghao;
	}
				
	
	/**
	 * 设置：医护姓名
	 */
	 
	public void setYihuxingming(String yihuxingming) {
		this.yihuxingming = yihuxingming;
	}
	
	/**
	 * 获取：医护姓名
	 */
	public String getYihuxingming() {
		return yihuxingming;
	}
				
	
	/**
	 * 设置：联系电话
	 */
	 
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
				
	
	/**
	 * 设置：老人编号
	 */
	 
	public void setLaorenbianhao(String laorenbianhao) {
		this.laorenbianhao = laorenbianhao;
	}
	
	/**
	 * 获取：老人编号
	 */
	public String getLaorenbianhao() {
		return laorenbianhao;
	}
				
	
	/**
	 * 设置：老人姓名
	 */
	 
	public void setLaorenxingming(String laorenxingming) {
		this.laorenxingming = laorenxingming;
	}
	
	/**
	 * 获取：老人姓名
	 */
	public String getLaorenxingming() {
		return laorenxingming;
	}
				
	
	/**
	 * 设置：手机号
	 */
	 
	public void setShoujihao(String shoujihao) {
		this.shoujihao = shoujihao;
	}
	
	/**
	 * 获取：手机号
	 */
	public String getShoujihao() {
		return shoujihao;
	}
				
	
	/**
	 * 设置：时间段
	 */
	 
	public void setShijianduan(String shijianduan) {
		this.shijianduan = shijianduan;
	}
	
	/**
	 * 获取：时间段
	 */
	public String getShijianduan() {
		return shijianduan;
	}
				
	
	/**
	 * 设置：服务要求
	 */
	 
	public void setFuwuyaoqiu(String fuwuyaoqiu) {
		this.fuwuyaoqiu = fuwuyaoqiu;
	}
	
	/**
	 * 获取：服务要求
	 */
	public String getFuwuyaoqiu() {
		return fuwuyaoqiu;
	}
			
}
