/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ucatolica.fore_alzheimer.controlador;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Daniela
 */

@MultipartConfig
public class ProcesoArchivo extends HttpServlet {
    
    public ProcesoArchivo() {
        super();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("Hola Servlet..");
        String action = request.getParameter("action");
        System.out.println(action);
        String ruta;
        switch (action) {
            case "EEG":
                ruta="C:/csvs/"+action+ "/";
                ProcesoArchivo(request, response,ruta);
                break;
            case "ETCSV":
                ruta="C:/csvs/"+action+ "/";
                ProcesoArchivo(request, response,ruta);
                break;
            case "ETAVI":
                ruta="C:/csvs/"+action+ "/";
                ProcesoArchivo(request, response,ruta);
                break;
        }

    }
    
    private void ProcesoArchivo(HttpServletRequest request, HttpServletResponse response, String ruta) 
            throws ServletException, IOException  {
        try (PrintWriter out = response.getWriter()) {
            
            int i;
            List<String> nombre = new ArrayList<>();
            for (i = 1; i <= 3; i++) {
                nombre.add(request.getParameter("nombre" + i));
                out.println(nombre);
            }

            List<Part> archivo = new ArrayList<>();
            for (i = 1; i <= 3; i++) {
                archivo.add(request.getPart("csv" + i));
                out.println(archivo);
                InputStream is = archivo.get(i - 1).getInputStream();
                File f = new File(ruta + nombre.get(i - 1));
                FileOutputStream ous = new FileOutputStream(f);
                int dato = is.read();
                while (dato != -1) {
                    ous.write(dato);
                    dato = is.read();
                    out.println(dato);
                }
                ous.close();
                is.close();
            }

        }
    }
    

   

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

