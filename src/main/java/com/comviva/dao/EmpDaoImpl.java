package com.comviva.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.comviva.entity.Emp;

@Repository("Emp")
@Transactional
public class EmpDaoImpl implements IEmpDao{

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<Emp> getEmployee() {
		String jpql="from Emp order by empName";
		TypedQuery<Emp> qry = em.createQuery(jpql, Emp.class);
		return qry.getResultList();
	}

	@Override
	public List<Emp> getEmployee(String deptName) {
		String jpql="from Emp where dept=:dname";
		TypedQuery<Emp> qry = em.createQuery(jpql, Emp.class);
		qry.setParameter("dname", deptName);
		return qry.getResultList();
	}

	@Override
	public Emp getEmployee(int eid) {
		Emp emp = em.find(Emp.class, eid);
		return emp;
	}

	@Override
	public boolean addEmployee(Emp emp) {
		em.persist(emp);
		return true;
	}

}
