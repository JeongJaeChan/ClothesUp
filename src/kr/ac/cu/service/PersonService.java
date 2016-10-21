package kr.ac.cu.service;

import java.util.List;

import kr.ac.cu.vo.PersonVO;

public interface PersonService {
	public List<PersonVO> personList();

	public int addPerson(PersonVO person);

	public int deletePerson(PersonVO person);

	public int updatePerson(PersonVO person);

	public PersonVO loginCheck(String pid);

	public boolean checkId(PersonVO person);

	public PersonVO idpassCheck(PersonVO person);
}
