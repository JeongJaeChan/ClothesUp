package kr.ac.cu.vo;

public class FavoriteVO {
	private String fid;
	private int favoritenum;
	private int shop_num;
	private int snum;
	private String sname;

	public int getSnum() {
		return snum;
	}

	public void setSnum(int snum) {
		this.snum = snum;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getFid() {
		return fid;
	}

	public void setFid(String fid) {
		this.fid = fid;
	}

	public int getFavoritenum() {
		return favoritenum;
	}

	public void setFavoritenum(int favoritenum) {
		this.favoritenum = favoritenum;
	} 

	public int getShop_num() {
		return shop_num; 
	}

	public void setShop_num(int shop_num) {
		this.shop_num = shop_num;
	}

	@Override
	public String toString() {
		return "FavoriteVO [fid=" + fid + ", favoritenum=" + favoritenum + ", shop_num=" + shop_num + "]";
	}
	
}
