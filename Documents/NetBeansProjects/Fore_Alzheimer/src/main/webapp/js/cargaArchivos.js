function consultarDoc(){
    var documento=document.formulario.doc.value;
    alert(documento);
    //document.formulario.action = "CargarDatos_p1.jsp";
    document.formulario.action = "FilesController?action="+documento;
}

