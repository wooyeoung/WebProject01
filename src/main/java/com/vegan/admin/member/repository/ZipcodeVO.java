package com.vegan.admin.member.repository;

public class ZipcodeVO {
	private int id;
	private String zipcode;
	private String sido;
	private String gugun;
	private String dong;
	private String ri; 
	private String bunji; 
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getSido() {
		return sido;
	}

	public void setSido(String sido) {
		this.sido = sido;
	}

	public String getGugun() {
		return gugun;
	}

	public void setGugun(String gugun) {
		this.gugun = gugun;
	}

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	public String getRi() {
		return ri;
	}

	public void setRi(String ri) {
		this.ri = ri;
	}

	public String getBunji() {
		return bunji;
	}

	public void setBunji(String bunji) {
		this.bunji = bunji;
	}
	
	@Override
	public String toString() {
		return "id : "+id+", 우편번호 : "+zipcode+", "
				+ "주소 : "+sido+"시/도 "+gugun+"/군 "+dong+" "+ri+"(리) "+bunji;
	}
	
}
