/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ucatolica.fore_alzheimer.controlador;

import com.ucatolica.fore_alzheimer.BDConnection.StoreCSV;
import com.ucatolica.fore_alzheimer.model.Usuario;
import com.ucatolica.fore_alzheimer.model.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import static java.lang.Integer.parseInt;

/**
 *
 * @author Daniela
 */
//@WebServlet("/FilesController")
@MultipartConfig
public class FilesController extends HttpServlet {

    public FilesController() {
        super();
    }

    /*protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
 /*out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FilesController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FilesController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }*/
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        System.out.println("Hola Servlet.. FilesController");
        String action = request.getParameter("action");
        System.out.println(action);

        //String ruta;
        switch (action) {
            case "EEG":

                ProcessFile(request, action);
                RedirectETCSV(request, response);
                break;
            case "ETCSV":

                ProcessFile(request, action);
                RedirectModel(request, response);
                break;
            case "ETAVI":

                // ProcessFile(request, response,action);
                RedirectModel(request, response);
                break;
            default:
                consultar_doc(request, response, action);

                break;
        }
    }

    private void ProcessFile(HttpServletRequest request, String action)
            throws ServletException, IOException {

        HttpSession doc = request.getSession();
        String document = (String) doc.getAttribute("doc");

        List<Part> archivos = new ArrayList<>();
        for (int i = 1; i <= 15; i++) {
            archivos.add(request.getPart("csv" + i));
        }
        //System.out.println("CSV"+1+archivos);

        StoreCSV csv = new StoreCSV();
        csv.StoreCsv(document, archivos, action);

    }

    private void RedirectModel(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        RequestDispatcher dispatcher = request.getRequestDispatcher("/modelo.jsp");
        dispatcher.forward(request, response);
    }

    private void RedirectETCSV(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        RequestDispatcher dispatcher = request.getRequestDispatcher("/CargarDatos_p2.jsp");
        dispatcher.forward(request, response);
    }

    private void RedirectETAVI(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        RequestDispatcher dispatcher = request.getRequestDispatcher("/CargarDatos_p3.jsp");
        dispatcher.forward(request, response);
    }

    private void almacenar_doc(HttpServletRequest request, HttpServletResponse response, String documento) throws IOException, ServletException {
        HttpSession sesion = request.getSession();
        sesion.setAttribute("doc", documento);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/CargarDatos_p1.jsp");
        dispatcher.forward(request, response);
//        response.sendRedirect("CargarDatos_p1.jsp");

    }

    private void consultar_doc(HttpServletRequest request, HttpServletResponse response, String argument) throws IOException, ServletException {
        
        UsuarioDAO dao = new UsuarioDAO();

        int Num_documento = parseInt(request.getParameter("doc"));
        
        
        
        Usuario usr = (Usuario) dao.consultar(Num_documento);
        if (usr.getNum_documento() == Num_documento) {
            almacenar_doc(request, response, request.getParameter("doc"));
        } else {
            switch (argument) {
                case "Carga": {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/Paciente_Error.jsp");
                    dispatcher.forward(request, response);
                }
                case "Modelo":{
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/Paciente_Error_Pred.jsp");
                    dispatcher.forward(request, response);
                }
                case "Reporte":{
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/Paciente_Error_Resul.jsp");
                    dispatcher.forward(request, response);
                }

            }

        }

        //RequestDispatcher dispatcher = request.getRequestDispatcher("/CargarDatos_p1.jsp");
        //dispatcher.forward(request, response);
//        response.sendRedirect("CargarDatos_p1.jsp");
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
