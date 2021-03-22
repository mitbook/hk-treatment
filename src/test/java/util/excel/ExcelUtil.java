package util.excel;

import org.apache.commons.io.FileUtils;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;

public class ExcelUtil {
    public static void byteArrayToExcel(byte[] ResponseBytes) {

        System.out.println("Excel file generating");
        try {
            FileUtils.writeByteArrayToFile(new File("src/test/java/util/file/response.xlsx"), ResponseBytes);
            System.out.println("Excel file generated");
        } catch (IOException e) {
            System.out.println("Excel file generation failed");
            e.printStackTrace();
        }

    }
}