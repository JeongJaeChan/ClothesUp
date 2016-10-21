package kr.ac.cu.service;

import java.util.HashMap;
import java.util.List;

import kr.ac.cu.vo.FaqVO;



public interface FaqService {
	public List<FaqVO> getFaqListService();
	public int addFaqService(FaqVO faqVO);
	public int deleteFaqService(FaqVO faqVO);
	public int updateFaqService(FaqVO faqVO);
}
