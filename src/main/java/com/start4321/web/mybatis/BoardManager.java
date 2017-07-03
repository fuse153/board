package com.start4321.web.mybatis;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.start4321.web.model.write;

public class BoardManager {
	private static SqlSessionFactory sqlSessionFactory;
	
	static{
		try{
			Reader reader = 
					Resources.getResourceAsReader("com/start4321/web/mybatis/mybatis_config.xml");

			sqlSessionFactory =
					new SqlSessionFactoryBuilder().build(reader);
		}
		catch(Exception err){
			throw new RuntimeException("SqlSessionFactory 연결실패 : " + err);
		}
	}
	
	public static void write_insert(write writes){
		SqlSession session = sqlSessionFactory.openSession();
		System.out.println(writes.getContent());
		session.insert("write_insert", writes);
		session.commit();
		
	}

	public static List list_search(){
		
		SqlSession session = sqlSessionFactory.openSession();
		
		List list = null;
		
		list = session.selectList("getSearchList");
		
		return list;
	}
	
	public static List view_search(String subject){
		
		SqlSession session = sqlSessionFactory.openSession();
		System.out.println("매니저 쪽 :" + subject );
		List list = null;
		
		list = session.selectList("viewSearchList",subject);
		
		return list;
	}
	
	
	
}
	
