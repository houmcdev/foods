package com.entity.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;


/**
 * 配送单
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-03-26 17:40:36
 */
public class PeisongdanModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 美食名称
	 */
	
	private String meishimingcheng;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 配送地址
	 */
	
	private String peisongdizhi;
		
	/**
	 * 配送状态
	 */
	
	private String peisongzhuangtai;
		
	/**
	 * 用户账号
	 */
	
	private String yonghuzhanghao;
		
	/**
	 * 联系方式
	 */
	
	private String lianxifangshi;
		
	/**
	 * 配送账号
	 */
	
	private String peisongzhanghao;
		
	/**
	 * 配送姓名
	 */
	
	private String peisongxingming;
		
	/**
	 * 联系电话
	 */
	
	private String lianxidianhua;
		
	/**
	 * 取单时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date qudanshijian;

	private String shangjiabianhao;
				
	
	/**
	 * 设置：美食名称
	 */
	 
	public void setMeishimingcheng(String meishimingcheng) {
		this.meishimingcheng = meishimingcheng;
	}
	
	/**
	 * 获取：美食名称
	 */
	public String getMeishimingcheng() {
		return meishimingcheng;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：配送地址
	 */
	 
	public void setPeisongdizhi(String peisongdizhi) {
		this.peisongdizhi = peisongdizhi;
	}
	
	/**
	 * 获取：配送地址
	 */
	public String getPeisongdizhi() {
		return peisongdizhi;
	}
				
	
	/**
	 * 设置：配送状态
	 */
	 
	public void setPeisongzhuangtai(String peisongzhuangtai) {
		this.peisongzhuangtai = peisongzhuangtai;
	}
	
	/**
	 * 获取：配送状态
	 */
	public String getPeisongzhuangtai() {
		return peisongzhuangtai;
	}
				
	
	/**
	 * 设置：用户账号
	 */
	 
	public void setYonghuzhanghao(String yonghuzhanghao) {
		this.yonghuzhanghao = yonghuzhanghao;
	}
	
	/**
	 * 获取：用户账号
	 */
	public String getYonghuzhanghao() {
		return yonghuzhanghao;
	}
				
	
	/**
	 * 设置：联系方式
	 */
	 
	public void setLianxifangshi(String lianxifangshi) {
		this.lianxifangshi = lianxifangshi;
	}
	
	/**
	 * 获取：联系方式
	 */
	public String getLianxifangshi() {
		return lianxifangshi;
	}
				
	
	/**
	 * 设置：配送账号
	 */
	 
	public void setPeisongzhanghao(String peisongzhanghao) {
		this.peisongzhanghao = peisongzhanghao;
	}
	
	/**
	 * 获取：配送账号
	 */
	public String getPeisongzhanghao() {
		return peisongzhanghao;
	}
				
	
	/**
	 * 设置：配送姓名
	 */
	 
	public void setPeisongxingming(String peisongxingming) {
		this.peisongxingming = peisongxingming;
	}
	
	/**
	 * 获取：配送姓名
	 */
	public String getPeisongxingming() {
		return peisongxingming;
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
	 * 设置：取单时间
	 */
	 
	public void setQudanshijian(Date qudanshijian) {
		this.qudanshijian = qudanshijian;
	}
	
	/**
	 * 获取：取单时间
	 */
	public Date getQudanshijian() {
		return qudanshijian;
	}
				


	public String getShangjiabianhao() {
		return shangjiabianhao;
	}

	public void setShangjiabianhao(String shangjiabianhao) {
		this.shangjiabianhao = shangjiabianhao;
	}
}
