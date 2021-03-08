package util.data;

import java.util.Random;

/**
 * @author pengzhengfa
 */
public class BarCode {
    
    private static Random random = new Random(System.currentTimeMillis());
    
    private static String uuid;
    
    /**
     * 生成条形码
     *
     * @return
     */
    public static String barCode() {
        for (int j = 0; j < 1; j++) {
            for (int i = 0; i < 15; i++) {
                int subNum = random.nextInt(9);
                uuid += subNum;
            }
        }
        return uuid;
    }
    
    public static String caseCode() {
        for (int j = 0; j < 1; j++) {
            for (int i = 0; i < 15; i++) {
                int subNum = random.nextInt(9);
                uuid += subNum;
            }
        }
        return uuid.substring(4, 19);
    }
}
