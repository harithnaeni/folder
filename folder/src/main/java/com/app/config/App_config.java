package com.app.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan("com.app")
@EnableWebMvc
@PropertySource("classpath:app.properties")
public class App_config  {

	@Autowired
	private Environment env;
	
	@Bean
	public BasicDataSource ds() {
		BasicDataSource ds = new BasicDataSource();
		ds.setDriverClassName(env.getProperty("dc"));
		ds.setUrl(env.getProperty("url"));
		ds.setUsername(env.getProperty("un"));
		ds.setPassword(env.getProperty("pwd"));
		return ds;
	}
	
	@Bean
	public InternalResourceViewResolver ivr() {
		InternalResourceViewResolver ivr = new InternalResourceViewResolver();
		ivr.setPrefix(env.getProperty("prefix"));
		ivr.setSuffix(env.getProperty("suffix"));
		return ivr;
	}
}