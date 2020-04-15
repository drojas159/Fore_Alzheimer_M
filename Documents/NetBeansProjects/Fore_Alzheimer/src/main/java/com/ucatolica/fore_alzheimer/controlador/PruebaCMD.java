/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ucatolica.fore_alzheimer.controlador;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 *
 * @author Daniela
 */
public class PruebaCMD {

    public static void main(String[] args) {
        
        ejecutarCMD("1019130758");
        //ejecutarCMD("python HelloWorld.py");
    }

    public static void ejecutarCMD(String doc) {
        String cmd="python \"C:\\Users\\Daniela Rojas\\Desktop\\A Ver\\Fore-Alzheimer-Project\\HelloWorld.py\" ";
        Process p;
        try {
            p = Runtime.getRuntime().exec(cmd+doc);
            p.waitFor();
            try (BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()))) {
                String line;
                while ((line = reader.readLine()) != null) {
                    System.out.println(line);
                }
            }
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }
}
