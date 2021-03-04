package util.db;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import java.util.List;
import java.util.Map;

/**
 * @author pengzhengfa
 */
public class jdbcUtils {
    
    private static final Logger logger = LoggerFactory.getLogger(jdbcUtils.class);
    
    private final JdbcTemplate jdbcTemplate;
    
    private DriverManagerDataSource dataSource;
    
    public jdbcUtils(Map<String, Object> configMap) {
        String jdbcUrl = (String) configMap.get("jdbcUrl");
        String username = (String) configMap.get("username");
        String password = (String) configMap.get("password");
        String driver = (String) configMap.get("driverClassName");
        logger.info("jdbcURL的值: {}, username的值: {},password的值: {},driverClassName的值: {}", jdbcUrl, username, password,
                driver);
        
        dataSource = new DriverManagerDataSource(jdbcUrl, username, password);
        dataSource.setDriverClassName(driver);
        
        jdbcTemplate = new JdbcTemplate(dataSource);
    }
    
    public Object readValue(String query) {
        /**
         * Mapping Query Results to Java Object
         * The queryForObject() method executes an SQL query and returns a result object. The result type is specified in the arguments.
         */
        return jdbcTemplate.queryForObject(query, Object.class);
    }
    
    public Map<String, Object> readRow(String query) {
        return jdbcTemplate.queryForMap(query);
    }
    
    public List<Map<String, Object>> readRows(String query) {
        /**
         * queryForList() method returns list of Map whereas Map contains the row data mapped with key as the column name and value from the database row matching the criteria.
         */
        return jdbcTemplate.queryForList(query);
    }
    
    public void UpdateData(String sql) {
        jdbcTemplate.update(sql);
    }
}
