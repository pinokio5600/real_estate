package com.real_estate_adm.vo;

public class Region_doVO {
	private String region_do;
	private String val;
	
	public Region_doVO(){
		
	}
	public Region_doVO(String region_do, String val){
		super();
		this.region_do=region_do;
		this.val = val;
	}
	
	
	public String getRegion_do() {
		return region_do;
	}
	public void setRegion_do(String region_do) {
		this.region_do = region_do;
	}
	public String getVal() {
		return val;
	}
	public void setVal(String val) {
		this.val = val;
	}
	
	
}
