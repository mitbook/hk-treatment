package util.rsa;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * @author pengzhengfa
 */
public class GetTime {
    
    public static String getCurrentTime() {
        String currentTime = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd")).toString();
        return currentTime;
    }
    
    public static String getSearchTime() {
        LocalDate dayAgo = LocalDate.now().minusDays(30);
        String searchTime = dayAgo.toString();
        return searchTime;
    }
    public static String getBirthTime() {
        LocalDate dayAgo = LocalDate.now().minusDays(7);
        String searchTime = dayAgo.toString();
        return searchTime;
    }
}
