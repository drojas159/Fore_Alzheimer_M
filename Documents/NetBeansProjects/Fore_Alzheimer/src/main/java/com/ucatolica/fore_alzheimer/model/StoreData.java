/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ucatolica.fore_alzheimer.model;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.ucatolica.fore_alzheimer.BDConnection.MongoConnection;
import java.io.BufferedReader;
//import static com.ucatolica.fore_alzheimer.controlador.StoreCSV_Servlet.getDirectoryNames;
//import static com.ucatolica.fore_alzheimer.controlador.StoreCSV_Servlet.getFileNames;
import java.io.File;
import java.io.IOException;
import static java.lang.Float.parseFloat;
import static java.lang.Integer.parseInt;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.bson.Document;

/**
 *
 * @author Daniela
 */
public class StoreData {

    public ArrayList<ArrayList<String>> readCSV(String ruta) throws IOException {
        //public static void main(String args[]) {
        //StringBuilder sb= new StringBuilder();

        ArrayList<ArrayList<String>> datos = new ArrayList<ArrayList<String>>();

        Path filePath = Paths.get(ruta);
        try {
            BufferedReader br = Files.newBufferedReader(filePath);
            String linea;
            int j = 0;
            while ((linea = br.readLine()) != null) {
                j++;
                if (j == 1) {
                    continue;
                }
                linea = linea.replaceAll(" ", "");
                String[] datosDeLinea = linea.split(",");
                ArrayList<String> datosTemporal = new ArrayList<>();
                datosTemporal.addAll(Arrays.asList(datosDeLinea));
                datos.add(datosTemporal);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return datos;
    }

    public void StoreCsv(String doc, String action, List<File> listOfFiles) throws IOException {
        MongoConnection con = new MongoConnection();
        MongoDatabase database = con.Connection();
        int j = 0;
        ArrayList<ArrayList<String>> datos;
        
        for (File path : listOfFiles) {
            String ruta = path.getAbsolutePath();
            System.out.println(ruta);
            System.out.println(action);
            System.out.println(doc);
            
            datos=readCSV(ruta);
            
        }
        

        /*switch (action) {
            case "EEG": {
                
                
                for (File path : listOfFiles) {
                    MongoCollection<Document> collection = database.getCollection("EEG_" + j + "_" + doc);
                    ArrayList<ArrayList<String>> datos = readCSV(directory, listOfFiles[j].getName());
                    List<Document> documents = new ArrayList<Document>();

                    for (ArrayList<String> dato : datos) {
                        documents.add(new Document("DOCUMENT", doc)
                                .append("COUNTER", parseFloat(dato.get(0)))
                                .append("INTERPOLATED", parseFloat(dato.get(1)))
                                .append("AF3", parseFloat(dato.get(2))).append("F7", parseFloat(dato.get(3)))
                                .append("F3", parseFloat(dato.get(4))).append("FC5", parseFloat(dato.get(5)))
                                .append("T7", parseFloat(dato.get(6))).append("P7", parseFloat(dato.get(7)))
                                .append("O1", parseFloat(dato.get(8))).append("O2", parseFloat(dato.get(9)))
                                .append("P8", parseFloat(dato.get(10))).append("T8", parseFloat(dato.get(11)))
                                .append("FC6", parseFloat(dato.get(12))).append("F4", parseFloat(dato.get(13)))
                                .append("F8", parseFloat(dato.get(14))).append("AF4", parseFloat(dato.get(15)))
                                .append("RAW_CQ", parseFloat(dato.get(16))).append("GYROX", parseFloat(dato.get(17)))
                                .append("GYROY", parseFloat(dato.get(18))).append("MARKER", parseFloat(dato.get(19)))
                                .append("SYNC", parseFloat(dato.get(20))).append("TIME_STAMP_s", parseFloat(dato.get(21)))
                                .append("TIME_STAMP_ms", parseFloat(dato.get(22))).append("CQ_AF3", parseFloat(dato.get(23)))
                                .append("CQ_F7", parseFloat(dato.get(24))).append("CQ_F3", parseFloat(dato.get(25)))
                                .append("CQ_FC5", parseFloat(dato.get(26))).append("CQ_T7", parseFloat(dato.get(27)))
                                .append("CQ_P7", parseFloat(dato.get(28))).append("CQ_O1", parseFloat(dato.get(29)))
                                .append("CQ_O2", parseFloat(dato.get(30))).append("CQ_P8", parseFloat(dato.get(31)))
                                .append("CQ_T8", parseFloat(dato.get(32))).append("CQ_FC6", parseFloat(dato.get(33)))
                                .append("CQ_F4", parseFloat(dato.get(34))).append("CQ_F8", parseFloat(dato.get(35)))
                                .append("CQ_AF4", parseFloat(dato.get(36))).append("CQ_CMS", parseFloat(dato.get(37)))
                                .append("CQ_DRL", parseFloat(dato.get(38)))
                        );
                    }

                    collection.insertMany(documents);
                }
                break;
            }
            case "ETCSV": {
                for (int j = 0; j < listOfFiles.length; j++) {
                    MongoCollection<Document> collection = database.getCollection("ETCSV_" + j + "_" + doc);
                    ArrayList<ArrayList<String>> datos = readCSV(directory, listOfFiles[j].getName());
                    List<Document> documents = new ArrayList<Document>();

                    for (ArrayList<String> dato : datos) {
                        documents.add(new Document("Document", doc)
                                .append("Avi TimeStamp", dato.get(0))
                                .append("Frame", parseInt(dato.get(1)))
                                .append("Spot x", parseFloat(dato.get(2)))
                                .append("Spot y", parseFloat(dato.get(3)))
                                .append("Pupil x", parseFloat(dato.get(4)))
                                .append("Pupil y", parseFloat(dato.get(5)))
                                .append("Pupil r", parseFloat(dato.get(6)))
                                .append("Scene x", parseFloat(dato.get(7)))
                                .append("Scene y", parseFloat(dato.get(8)))
                                .append("XDAT", parseFloat(dato.get(9)))
                        );
                    }

                    collection.insertMany(documents);

                }
                break;
                /*case "ETAVI":{
                    
                
            }
        }

        //Document myDoc = collection.find().first();
        //System.out.println(myDoc.toJson());
    }*/
    }
}
