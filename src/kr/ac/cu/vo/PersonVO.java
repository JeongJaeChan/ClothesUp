package kr.ac.cu.vo;

public class PersonVO {
	private String pid;
	private String pname;
	private String ppassword;
	private int ptype;
	private int shopnum;
	private double latitude;
	private double longitude;

	@Override
	public String toString() {
		return "PersonVO [pid=" + pid + ", pname=" + pname + ", ptype=" + ptype + ", shopnum=" + shopnum + ", latitude="
				+ latitude + ", longitude=" + longitude + ", ppassword=" + ppassword + "]";
	}

	public String getPpassword() { 
		return ppassword;
	}

	public void setPpassword(String ppassword) {
		this.ppassword = ppassword;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getPtype() {
		return ptype;
	}

	public void setPtype(int ptype) {
		this.ptype = ptype;
	}

	public int getShopnum() {
		return shopnum;
	}

	public void setShopnum(int shopnum) {
		this.shopnum = shopnum;
	}
}
