package kr.ac.cu.vo;

public class GoodsVO {
	private int gnum;
	private String gname;
	private int gcnum;
	private int snum;
	private int ginum;

	public int getGnum() {
		return gnum;
	}

	public void setGnum(int gnum) {
		this.gnum = gnum;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public int getGcnum() {
		return gcnum;
	}

	public void setGcnum(int gcnum) {
		this.gcnum = gcnum;
	}

	public int getSnum() {
		return snum;
	}

	public void setSnum(int snum) {
		this.snum = snum;
	}

	public int getGinum() {
		return ginum;
	}

	public void setGinum(int ginum) {
		this.ginum = ginum;
	}

	@Override
	public String toString() {
		return "GoodsVO [gnum=" + gnum + ", gname=" + gname + ", gcnum=" + gcnum + ", snum=" + snum + ", ginum=" + ginum
				+ "]";
	}

	
	
}