package com.example.controller;

import java.sql.Connection;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

	@RunWith(SpringJUnit4ClassRunner.class) // 스프링의 테스트 컨텍스트 프레임워크의 JUnit의 확장기능 지정
	@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })
	public class OracleDataSourceTest {

		@Autowired
		private DataSource ds;

		@Test
		public void test() throws Exception {
			Connection con = ds.getConnection();
			System.out.println(con);
			con.close();
		}
	}
