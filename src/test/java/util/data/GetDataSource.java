package util.data;

import java.util.Random;

/**
 * @author pengzhengfa
 */
public class GetDataSource {
    
    /**
     * 随机或者数据来源
     * @return
     */
    public static String getDataSource(){
        String [] str =new String[]{"0","1","3","4"};
        return str[new Random().nextInt(str.length)];
    }
}
