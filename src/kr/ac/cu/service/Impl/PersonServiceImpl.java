package kr.ac.cu.service.Impl;

import java.util.List;

import javax.swing.text.Document;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.cu.dao.PersonDAO;
import kr.ac.cu.service.PersonService;
import kr.ac.cu.vo.PersonVO;

@Repository("PersonService")
public class PersonServiceImpl implements PersonService {
	@Autowired
	private PersonDAO PersonDao;

	@Override
	public List<PersonVO> personList() {
		return PersonDao.listPerson();
	}

	@Override
	public int addPerson(PersonVO person) {
		return PersonDao.addPerson(person);
	}

	@Override
	public int deletePerson(PersonVO person) {
		return PersonDao.deletePerson(person);
	}

	@Override
	public int updatePerson(PersonVO person) {
		return PersonDao.updatePerson(person);
	}

	@Override
	public PersonVO loginCheck(String pid) {

		return PersonDao.loginCheck(pid);
	}

	@Override
	public boolean checkId(PersonVO person) {
		boolean check = PersonDao.checkId(person);
		return check;
	}

	@Override
	public PersonVO idpassCheck(PersonVO person) {
		return PersonDao.idpassCheck(person);
	}

}
