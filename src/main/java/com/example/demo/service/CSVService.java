package com.example.demo.service;

import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.CSVRepository;
import com.example.demo.vo.CSV;
import com.opencsv.CSVReader;

@Service
public class CSVService {

    @Autowired
    private CSVRepository csvRepository;

    public String readAndSaveToDB() {
        try {
            List<CSV> csvList = new ArrayList<>();

            // 예시 파일들을 배열에 추가
            String[] fileNames = {"gHospital.csv"};
            

            for (String fileName : fileNames) {
                InputStreamReader is = new InputStreamReader(getClass().getClassLoader().getResourceAsStream("csv/" + fileName), "EUC-KR");
                CSVReader reader = new CSVReader(is);

                // 첫 번째 줄(헤더) 건너뛰기
                reader.skip(1);

                List<String[]> list = reader.readAll();

                for (String[] csvRow : list) {
                    CSV csv = new CSV();
                    // 엔터티의 필드에 CSV 데이터를 할당
                    csv.setEncryptedSymbol(csvRow[0]); 
                    csv.setHName(csvRow[1]);
                    csv.setTypeCode(Integer.parseInt(csvRow[2])); // 정수형으로 변환
                    csv.setTypeName(csvRow[3]);
                    csv.setAreaCode(Integer.parseInt(csvRow[4]));
                    csv.setAreaName(csvRow[5]);
                    csv.setAddrCode(Integer.parseInt(csvRow[6]));
                    csv.setAddrName(csvRow[7]);
                    csv.setDetailArea(csvRow[8]);
                    csv.setZipCode(Integer.parseInt(csvRow[9]));
                    csv.setAddress(csvRow[10]);
                    csv.setHNumber(csvRow[11]);
                    csv.setHHomepage(csvRow[12]);
                    csv.setOpenedYear(Integer.parseInt(csvRow[13]));
                    try {
                        if (!csvRow[14].isEmpty())
                            csv.setX(Double.parseDouble(csvRow[14]));
                        else
                            csv.setX(0.0); // Set default value or handle accordingly
                    } catch (NumberFormatException | ArrayIndexOutOfBoundsException ex) {
                        csv.setX(0.0); // Set default value or handle accordingly
                    }
                    try {
                        if (!csvRow[15].isEmpty())
                            csv.setY(Double.parseDouble(csvRow[15]));
                        else
                            csv.setY(0.0); // Set default value or handle accordingly
                    } catch (NumberFormatException | ArrayIndexOutOfBoundsException ex) {
                        csv.setY(0.0); // Set default value or handle accordingly
                    }
                 
                    csvList.add(csv);
                }
            }

            // CSV 데이터를 데이터베이스에 저장
            csvRepository.insertCSVList(csvList);

            return "CSV 데이터가 성공적으로 데이터베이스에 저장되었습니다.";

        } catch (Exception e) {
            e.printStackTrace();
            return "CSV 데이터를 데이터베이스에 저장하는 중 오류가 발생했습니다.";
        }
    }
}