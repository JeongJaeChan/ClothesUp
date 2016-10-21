package kr.ac.cu.dao.Impl;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.cu.dao.PersonDAO;
import kr.ac.cu.vo.PersonVO;

@Repository("personDAO")
public class PersonDAOImpl implements PersonDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<PersonVO> listPerson() throws RuntimeException {
		return sqlSession.selectList("kr.ac.cu.Person.listPerson");
	}

	@Override
	public int addPerson(PersonVO person) throws RuntimeException {
		return sqlSession.insert("kr.ac.cu.Person.addPerson", person);
	} 

	@Override
	public int deletePerson(PersonVO person) throws RuntimeException {
		return sqlSession.delete("kr.ac.cu.Person.deletePerson", person);
	}
	
	@Override
	public int updatePerson(PersonVO person) throws RuntimeException {
		return sqlSession.update("kr.ac.cu.Person.updateperson", person);
	}

	@Override
	public PersonVO loginCheck(String pid) throws RuntimeException {
		return sqlSession.selectOne("kr.ac.cu.Person.checkPerson", pid);
	}

	@Override
	public boolean checkId(PersonVO person) throws RuntimeException {
		if(null==sqlSession.selectOne("kr.ac.cu.Person.checkId", person))
				return true;
		else return false;
	}

	@Override
	public PersonVO idpassCheck(PersonVO person) throws RuntimeException {
		 return sqlSession.selectOne("kr.ac.cu.Person.joinPerson", person);
	}
}
