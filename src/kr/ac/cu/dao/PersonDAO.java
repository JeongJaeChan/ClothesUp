package kr.ac.cu.dao;

import java.util.List;

import kr.ac.cu.vo.PersonVO;

public interface PersonDAO {
	public List<PersonVO> listPerson() throws RuntimeException;

	public PersonVO loginCheck(String pid) throws RuntimeException;

	public int addPerson(PersonVO person) throws RuntimeException;

	public int deletePerson(PersonVO person) throws RuntimeException;

	public int updatePerson(PersonVO person) throws RuntimeException;

	public boolean checkId(PersonVO person) throws RuntimeException;

	public PersonVO idpassCheck(PersonVO person) throws RuntimeException;

}
