package kr.ac.cu.dao;

import java.util.HashMap;
import java.util.List;

import kr.ac.cu.vo.FaqVO;



public interface FaqDao {
	public List<FaqVO> getFaqList();
	public int addFaq(FaqVO faqVO);
	public int deleteFaq(FaqVO faqVO);
	public int updateFaq(FaqVO faqVO);
} 
