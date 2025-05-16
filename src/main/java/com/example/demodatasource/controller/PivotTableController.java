package com.example.demodatasource.controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.*;
import java.util.Iterator;


@RestController
public class PivotTableController {


    @RequestMapping("p")
    public String pivot() throws IOException {
//        String filePath = "D:\\repos.xlsx";
        int vCount = 0, cCount = 0;

        String str = "VIGNESWARANLLLLOO";


        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) == 'C' || str.charAt(i) == 'L' || str.charAt(i) == 'O' ||
                    str.charAt(i) == 'F' || str.charAt(i) == 'U' || str.charAt(i) == 'S') {
                vCount++;
            } else {
                cCount++;
            }
        }
        System.out.println("Number of vowels: " + vCount);
        System.out.println("Number of consonants: " + cCount);
        return str;
    }
}
//
//        try {
//            FileInputStream file = new FileInputStream(new File("D:\\repos.xlsx"));
//
//            XSSFWorkbook workbook = new XSSFWorkbook(file);
//
//            XSSFSheet sheet = workbook.getSheetAt(0);
//
//            Iterator<Row> rowIterator = sheet.iterator();
//            while (rowIterator.hasNext()) {
//                Row row = rowIterator.next();
//                Iterator<Cell> cellIterator = row.cellIterator();
//
//                while (cellIterator.hasNext()) {
//                    Cell cell = cellIterator.next();
//                    XSSFWorkbook workbooks = (XSSFWorkbook)WorkbookFactory.create(new FileInputStream("ExcelWorkbook.xlsx"));
//                    XSSFSheet sheets = workbook.getSheet("Summary");
//
//                    System.out.println(sheets.getPivotTables());
//                    if (sheets.getPivotTables().size() > 0) {
//                        XSSFPivotTable pivotTable = sheets.getPivotTables().get(0);
//                        System.out.println(pivotTable);
//
//                        XSSFPivotCache pivotCache = pivotTable.getPivotCache();
//                        System.out.println(pivotCache); // null!
//                        XSSFPivotCacheDefinition pivotCacheDefinition = pivotTable.getPivotCacheDefinition();
//                        System.out.println(pivotCacheDefinition); //null!
//
//                        for (org.apache.poi.ooxml.POIXMLDocumentPart documentPart : pivotTable.getRelations()) {
//                            if (documentPart instanceof XSSFPivotCacheDefinition) {
//                                pivotCacheDefinition = (XSSFPivotCacheDefinition) documentPart;
//                                System.out.println(pivotCacheDefinition); //not null!
//                            }
//                        }
//                    }
//                }
//                workbook.close();
//            }
////                    System.out.println(cell);
//
//
//                System.out.println("");
//
//
//
//
//
//
//////            file.close();
////        } catch (Exception e) {
////            e.printStackTrace();
////        }
//        return "data";
//    } catch (IOException e) {
//
//        }
//        return null;
//    }
//    }
//        return filePath;


//        File file = new File(filePath);
//
//            FileInputStream inputStream = new FileInputStream(file);
//            Workbook workbook = new XSSFWorkbook(inputStream);
//            for (Sheet sheet : workbook) {
//                int firstRow = sheet.getFirstRowNum();
//                int lastRow = sheet.getLastRowNum();
//                Row row = sheet.getRow(0);
//
//                for (int index = firstRow + 1; index <= lastRow; index++) {
////                    Row row = sheet.getRow(index);
//
//                        for (int cellIndex = row.getFirstCellNum(); cellIndex < row.getLastCellNum(); cellIndex++) {
//                            Cell cell = row.getCell(cellIndex, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
//                            System.out.println(cell);
//
//
//
//
//                        }
//                    }
//                }
//                inputStream.close();
//
//        return filePath;
//    }
//    }

//        try {
//            FileInputStream file = new FileInputStream(new File("D:\\repos.xlsx"));
//
//            XSSFWorkbook workbook = new XSSFWorkbook(file);
//
//            XSSFSheet sheet = workbook.getSheetAt(0);
//
//            Iterator<Row> rowIterator = sheet.iterator();
//            while (rowIterator.hasNext()) {
//                Row row = rowIterator.next();
//
//                Iterator<Cell> cellIterator = row.cellIterator();
//
//                while (cellIterator.hasNext()) {
//                    Cell cell = cellIterator.next();
//                    System.out.println(cell);
//
//
//                }
//                System.out.println("");
//            }
//            file.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return "null";
//    }




//    FileInputStream file = new FileInputStream(new File("D:\\Book11.xlsx"));
//
//    XSSFWorkbook workbook = new XSSFWorkbook(file);
//    XSSFWorkbook wb = new XSSFWorkbook(file);
//    XSSFSheet pivotSheet = wb.createSheet("Pivot sheet");
//
//
//    //create pivot table
//   XSSFPivotTable pivotTable = pivotSheet.createPivotTable
//            (new AreaReference(new CellReference
//                            ("\'Selected Messages\'!A3"),
//                            new CellReference("\'Selected Messages\'!T4620"), //make the reference big enough for later data
//                    SpreadsheetVersion.EXCEL2007),
//            new CellReference("\'Pivot sheet\'!C5"), wb.getSheet("Selected Messages"));
//    //Configure the pivot table
//    //Use first column as row label
//    pivotTable.add(0);
//
//    pivotTable.addRowLabel(2);
//
//    pivotTable.addColumnLabe l(DataConsolidateFunction.COUNT, 5, "Number of messages");
//
//    pivotTable.addColLabel(4);
//
//    pivotTable.addReportFilter(11);
//
//
////
//    wb.write(new FileOutputStream("SXSSFPivotTableTest.xlsx"));
//    wb.close();
//}

//        public String datass() throws IOException {
//    File file= new File("D:\\Book11..xlsx");
//    FileInputStream fis = new FileInputStream(file);
//    XSSFWorkbook workbook = new XSSFWorkbook (fis);
//    System.out.println(workbook);
//    XSSFSheet data = workbook.getSheetAt(0);
//    System.out.println(data);
//    XSSFSheet sheet = workbook.createSheet("PIVOT SHEET");
//
////
////System.out.println(data.getPhysicalNumberOfRows());
////
////System.out.println(data.getRow(0).
//
////    void getLastCellNum());
//    CellReference cr = new CellReference("A1");
//    CellReference c1 = new CellReference(0, 0);
//    CellReference c2 = new CellReference(data.getPhysicalNumberOfRows() - 1,       data.getRow(0).getLastCellNum() - 1);
//
//    return "null";
//}
//    AreaReference ar = new AreaReference(c1,c2);
//    XSSFPivotTable pivotTable = sheet.createPivotTable(ar, cr, data);
//
//    public PivotTableController() throws IOException {
//    }
//pivotTable.addRowLabel(7);
//pivotTable.addColumnLabel(DataConsolidateFunction.COUNT, 6);
//}
//int firstRow = dataSheet.getFirstRowNum();
//    int lastRow = dataSheet.getLastRowNum();
//    int firstCol = dataSheet.getRow(0).getFirstCellNum();
//    int lastCol = dataSheet.getRow(0).getLastCellNum();
//
//    CellReference topLeft = new CellReference(firstRow, firstCol);
//    CellReference botRight = new CellReference(lastRow, lastCol - 1);
//    AreaReference ar = new AreaReference(topLeft, botRight,SpreadsheetVersion.EXCEL2007);
//    /* Find out where the Pivot Table needs to be placed */
//    CellReference cr=new CellReference("A5");
//    // CellReference cr = new CellReference(firstRow + 4, lastCol + 1);
//    /* Create Pivot Table */
//    XSSFPivotTable pivotTable = sheet.createPivotTable(ar, cr, dataSheet);
///* Add filters - first pivot table */
//        pivotTable.addRowLabel(11);
//                pivotTable.addRowLabel(8);
//                pivotTable.addColLabel(15);
//                pivotTable.addColumnLabel(DataConsolidateFunction.SUM, 77);
//
//                /* Second Pivot table dynamic generation */
//                CellReference cr2=new CellReference("A35");//How to get dynamically this cellReference "A35" value based on the first pivot table generation
//                XSSFPivotTable pivotTable2 = sheet.createPivotTable(ar, cr2, dataSheet);
//                /* Add filters */
//                pivotTable2.addRowLabel(11);
//                pivotTable2.addColLabel(15);
//                pivotTable2.addColumnLabel(DataConsolidateFunction.SUM, 77);