package kr.ac.cu.vo;

public class GoodsInfoVO {
	private int ginum;
	private int gnum;
	private int gprice;
	private int quantity;
	private String gname;
	private String gimage;
	private String gsize;
	public int getGinum() {
		return ginum;
	}
	public void setGinum(int ginum) {
		this.ginum = ginum;
	}
	public int getGnum() {
		return gnum;
	}
	public void setGnum(int gnum) {
		this.gnum = gnum;
	} 

	public int getGprice() {
		return gprice;
	}
	public void setGprice(int gprice) {
		this.gprice = gprice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getGimage() {
		return gimage;
	}
	public void setGimage(String gimage) {
		this.gimage = gimage;
	}
	public String getGsize() {
		return gsize;
	}
	public void setGsize(String gsize) {
		this.gsize = gsize;
	}
	@Override
	public String toString() {
		return "GoodsInfoVO [ginum=" + ginum + ", gnum=" + gnum + ", gprice=" + gprice + ", quantity=" + quantity
				+ ", gname=" + gname + ", gimage=" + gimage + ", gsize=" + gsize + "]";
	}

	
}
