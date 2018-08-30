package com.real_estate_adm.vo;

public class UploadVO {
	private int upload_seq;
	private int board_seq;
	private String upload_src;
	private String upload_name;
	
	public int getUpload_seq() {
		return upload_seq;
	}
	public void setUpload_seq(int upload_seq) {
		this.upload_seq = upload_seq;
	}
	public int getBoard_seq() {
		return board_seq;
	}
	public void setBoard_seq(int board_seq) {
		this.board_seq = board_seq;
	}
	public String getUpload_src() {
		return upload_src;
	}
	public void setUpload_src(String upload_src) {
		this.upload_src = upload_src;
	}
	public String getUpload_name() {
		return upload_name;
	}
	public void setUpload_name(String upload_name) {
		this.upload_name = upload_name;
	}	
}
