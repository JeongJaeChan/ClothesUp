package kr.ac.cu.service.Impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.cu.dao.FaqDao;
import kr.ac.cu.service.FaqService;
import kr.ac.cu.vo.FaqVO;


@Repository("FaqService")
public class FaqServicelmpl implements FaqService{
	@Autowired
	private FaqDao faqDao;

	@Override
	public List<FaqVO> getFaqListService() {
		return faqDao.getFaqList();
	}

	@Override
	public int addFaqService(FaqVO faqVO) {
		return faqDao.addFaq(faqVO);
	}

	@Override
	public int deleteFaqService(FaqVO faqVO) {
		return faqDao.deleteFaq(faqVO);
	}

	@Override
	public int updateFaqService(FaqVO faqVO) {
		return faqDao.updateFaq(faqVO);
	}
	

}
