package br.com.spring.config;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.jdbc.datasource.init.DatabasePopulatorUtils;
import org.springframework.jdbc.datasource.init.ResourceDatabasePopulator;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaDialect;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@PropertySource("classpath:db.properties")
@EnableTransactionManagement
@Configuration
public class SpringJpaConfig {
	
	/*@Autowired
	private Environment env;*

	@Bean
	public LocalSessionFactoryBean getSessionFactory() {
		LocalSessionFactoryBean factoryBean = new LocalSessionFactoryBean();
	    
	    Properties props = new Properties();
	    
	    // Setting JDBC properties
	    props.put(DRIVER, env.getProperty("mysql.driver"));
	    props.put(URL, env.getProperty("mysql.jdbcUrl"));
	    props.put(USER, env.getProperty("mysql.username"));
	    props.put(PASS, env.getProperty("mysql.password"));

	    // Setting Hibernate properties
	    props.put(SHOW_SQL, env.getProperty("hibernate.show_sql"));
	    props.put(HBM2DDL_AUTO, env.getProperty("hibernate.hbm2ddl.auto"));

	    // Setting C3P0 properties
	    props.put(C3P0_MIN_SIZE, env.getProperty("hibernate.c3p0.min_size"));
	    props.put(C3P0_MAX_SIZE, env.getProperty("hibernate.c3p0.max_size"));
	    props.put(C3P0_ACQUIRE_INCREMENT, env.getProperty("hibernate.c3p0.acquire_increment"));
	    props.put(C3P0_TIMEOUT, env.getProperty("hibernate.c3p0.timeout"));
	    props.put(C3P0_MAX_STATEMENTS, env.getProperty("hibernate.c3p0.max_statements"));

	    factoryBean.setHibernateProperties(props);
	    factoryBean.setAnnotatedClasses(Usuario.class);
	    
	    return factoryBean;
	}

	@Bean
	public HibernateTransactionManager getTransactionManager() {
	    HibernateTransactionManager transactionManager = new HibernateTransactionManager();
	    transactionManager.setSessionFactory(getSessionFactory().getObject());
	    return transactionManager;
    }*/
	
	@Bean
    public DataSource dataSource() {
        DriverManagerDataSource ds = new DriverManagerDataSource();
        ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
        ds.setUrl("jdbc:mysql://localhost:3306/projeto2?useTimezone=true&serverTimezone=UTC&useSSL=false");
        ds.setUsername("root");
        ds.setPassword("admin");
        return ds;
    }
	
	@Bean
    public EntityManagerFactory entityManagerFactory(DataSource dataSource) {
        LocalContainerEntityManagerFactoryBean factory = new LocalContainerEntityManagerFactoryBean();
        factory.setDataSource(dataSource);
        factory.setPackagesToScan("br.com.spring.model");
        factory.setJpaVendorAdapter(new HibernateJpaVendorAdapter());
        
        factory.afterPropertiesSet();
        return factory.getObject();
    }

	@Bean
    public JpaTransactionManager transactionManager(EntityManagerFactory factory) {
        JpaTransactionManager tx = new JpaTransactionManager();
        tx.setEntityManagerFactory(factory);
        tx.setJpaDialect(new HibernateJpaDialect());
        return tx;
    }
	
	public void createDatabasePopulator(DataSource dataSource) {
        ResourceDatabasePopulator databasePopulator = new ResourceDatabasePopulator();
        databasePopulator.setContinueOnError(true);
        databasePopulator.addScript(new ClassPathResource("data.sql"));
        
        DatabasePopulatorUtils.execute(databasePopulator, dataSource);
    }
	
}