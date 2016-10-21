package kr.ac.cu.dao.Impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.cu.dao.FaqDao;
import kr.ac.cu.vo.FaqVO;


@Repository("FaqDao")
public class FaqDaolmpl implements FaqDao{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<FaqVO> getFaqList()  throws RuntimeException{
		return sqlSession.selectList("kr.ac.cu.faq.selectFaq" );
	}

	@Override
	public int addFaq(FaqVO faqVO) {
		return sqlSession.insert("kr.ac.cu.faq.addFaq", faqVO);
	} 

	@Override
	public int deleteFaq(FaqVO faqVO) {
		return sqlSession.delete("kr.ac.cu.faq.deleteFaq", faqVO);
	}

	@Override
	public int updateFaq(FaqVO faqVO) {
		return sqlSession.update("kr.ac.cu.faq.updateFaq", faqVO);
	}
	

}
