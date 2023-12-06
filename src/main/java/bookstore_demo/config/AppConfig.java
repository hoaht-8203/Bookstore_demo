package bookstore_demo.config;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.Objects;
import java.util.Properties;

@Configuration
public class AppConfig {
    @Autowired
    private Environment env;

    @Bean(name = "dataSource")
    public DataSource getDataSource() {
        DriverManagerDataSource source = new DriverManagerDataSource();

        source.setDriverClassName(Objects.requireNonNull(env.getProperty("spring.datasource.driver-class-name")));
        source.setUrl(env.getProperty("spring.datasource.url"));
        source.setUsername(env.getProperty("spring.datasource.username"));
        source.setPassword(env.getProperty("spring.datasource.password"));
        return source;
    }

    @Bean(name = "entityManagerFactory")
    public SessionFactory getSessionFactory() throws IOException {
        LocalSessionFactoryBean factoryBean = new LocalSessionFactoryBean();
        factoryBean.setDataSource(getDataSource());
        factoryBean.setPackagesToScan("bookstore_demo.entities");
        Properties p = new Properties();
        p.put("hibernate.show_sql", env.getProperty("spring.jpa.show-sql"));
        p.put("hibernate.dialect", env.getProperty("spring.jpa.properties.hibernate.dialect"));
        p.put("hibernate.current_session_context_class", env.getProperty("spring.jpa.properties.hibernate.current_session_context_class"));
        factoryBean.setHibernateProperties(p);
        factoryBean.afterPropertiesSet();
        return factoryBean.getObject();
    }

    @Bean
    public PlatformTransactionManager transactionManager(EntityManagerFactory emf){
        return new JpaTransactionManager(emf);
    }
}
