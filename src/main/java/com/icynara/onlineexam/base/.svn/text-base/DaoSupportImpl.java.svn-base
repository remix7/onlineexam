package com.icynara.onlineexam.base;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class DaoSupportImpl<T> implements DaoSupport<T> {
	
	@Resource
	private SessionFactory sessionFactory;

	protected Class<T> clazz = null;
	//通过默认的构造方法得到t的真实类型
	public DaoSupportImpl() {
		ParameterizedType type =(ParameterizedType)this.getClass().getGenericSuperclass();
		this.clazz = (Class<T>)type.getActualTypeArguments()[0];
	}
	//获取session
	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	public List<T> findAll() {
		Query q = getSession().createQuery("FROM "+clazz.getSimpleName());
		q.setCacheable(true);
		return q.list();
	}

	public T findById(Integer id) {
		if(id == null){
			return null;
		}else{
			Query q  = getSession().createQuery("FROM "+clazz.getSimpleName()+" WHERE id=?");
			q.setInteger(0, id);
			q.setCacheable(true);
			
			return (T) q.uniqueResult();
		}
		
	}

	public void add(T t) {
		getSession().saveOrUpdate(t);
	}

	public void delete(Integer id) {
		if(id == null){
			return;
		}else{
			Object o = findById(id);
			if(o != null){
				getSession().delete(o);
			}
		}
	}

	public void update(T t) {
		getSession().saveOrUpdate(t);
	}

}
