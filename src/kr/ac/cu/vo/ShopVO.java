package kr.ac.cu.vo;

import org.springframework.web.multipart.MultipartFile;

public class ShopVO {
	private int snum;
	private String sname;
	private String phone;
	private String simage;
	private String scategory;
	private String section;
	private int sectionnum;
	private String intro;
	private String pid;
	private int startrow;
	private int endrow;
	private int slike;
	private int x1;
	private int y1;
	private int x2;
	private int y2;
	private String gccategory;
	private int gcnum;
	private double score;
	private int hits;
	private MultipartFile ufile;
	
	public String getGccategory() {
	      return gccategory;
	   }

	   public void setGccategory(String gccategory) {
	      this.gccategory = gccategory;
	   }
	   public int getGcnum() {
		      return gcnum;
		   }

		   public void setGcnum(int gcnum) {
		      this.gcnum = gcnum;
		   }


	
	public MultipartFile getUfile() {
		return ufile;
	}
	public void setUfile(MultipartFile ufile) {
		this.ufile = ufile;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double d) {
		this.score = d;
	}
	public int getX1() {
		return x1;
	}
	public void setX1(int x1) {
		this.x1 = x1;
	}
	public int getY1() {
		return y1;
	}
	public void setY1(int y1) {
		this.y1 = y1;
	}
	public int getX2() {
		return x2;
	}
	public void setX2(int x2) {
		this.x2 = x2;
	}
	public int getY2() {
		return y2;
	}
	public void setY2(int y2) {
		this.y2 = y2;
	}
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSimage() {
		return simage;
	}
	public void setSimage(String simage) {
		this.simage = simage;
	}
	public String getScategory() {
		return scategory;
	}
	public void setScategory(String scategory) {
		this.scategory = scategory;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public int getSectionnum() {
		return sectionnum;
	}
	public void setSectionnum(int sectionnum) {
		this.sectionnum = sectionnum;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public int getStartrow() {
		return startrow;
	}
	public void setStartrow(int startrow) {
		this.startrow = startrow;
	}
	public int getEndrow() {
		return endrow;
	}
	public void setEndrow(int endrow) {
		this.endrow = endrow;
	}
	public int getSlike() {
		return slike;
	}
	public void setSlike(int slike) {
		this.slike = slike;
	}
	@Override
	public String toString() {
		return "ShopVO [snum=" + snum + ", sname=" + sname + ", phone=" + phone + ", simage=" + simage + ", scategory="
				+ scategory + ", section=" + section + ", sectionnum=" + sectionnum + ", intro=" + intro + ", pid="
				+ pid + ", startrow=" + startrow + ", endrow=" + endrow + ", slike=" + slike + ", x1=" + x1 + ", y1="
				+ y1 + ", x2=" + x2 + ", y2=" + y2 + ", score=" + score + ", hits=" + hits + ", ufile=" + ufile + "]";
	}
	
}
