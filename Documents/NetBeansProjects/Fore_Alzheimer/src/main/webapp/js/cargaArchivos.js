/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function cargarArchivo(origen) {
    var file1 = document.formulario.csv1.files[0];
    var file2 = document.formulario.csv2.files[0];
    var file3 = document.formulario.csv3.files[0];
    /*var file4 = document.formulario.csv4.files[0];
    var file5 = document.formulario.csv5.files[0];
    var file6 = document.formulario.csv6.files[0];
    var file7 = document.formulario.csv7.files[0];
    var file8 = document.formulario.csv8.files[0];
    var file9 = document.formulario.csv9.files[0];
    var file10 = document.formulario.csv10.files[0];
    var file11 = document.formulario.csv11.files[0];
    var file12 = document.formulario.csv12.files[0];
    var file13 = document.formulario.csv13.files[0];
    var file14 = document.formulario.csv14.files[0];
    var file15 = document.formulario.csv15.files[0];
    var file16 = document.formulario.csv16.files[0];
    var file17 = document.formulario.csv17.files[0];
    var file18 = document.formulario.csv18.files[0];
    var file19 = document.formulario.csv19.files[0];
    var file20 = document.formulario.csv20.files[0];
    var file21 = document.formulario.csv21.files[0];
    var file22 = document.formulario.csv22.files[0];
    var file23 = document.formulario.csv23.files[0];
    var file24 = document.formulario.csv24.files[0];
    var file25 = document.formulario.csv25.files[0];
    var file26 = document.formulario.csv26.files[0];
    var file27 = document.formulario.csv27.files[0];
    var file28 = document.formulario.csv28.files[0];
    var file29 = document.formulario.csv29.files[0];
    var file30 = document.formulario.csv30.files[0];
    var file31 = document.formulario.csv31.files[0];
    var file32 = document.formulario.csv32.files[0];
    var file33 = document.formulario.csv33.files[0];
    var file34 = document.formulario.csv34.files[0];
    var file35 = document.formulario.csv35.files[0];
    var file36 = document.formulario.csv36.files[0];
    var file37 = document.formulario.csv37.files[0];
    var file38 = document.formulario.csv38.files[0];
    var file39 = document.formulario.csv39.files[0];
    var file40 = document.formulario.csv40.files[0];
    var file41 = document.formulario.csv41.files[0];
    var file42 = document.formulario.csv42.files[0];
    var file43 = document.formulario.csv43.files[0];
    var file44 = document.formulario.csv44.files[0];
    var file45 = document.formulario.csv45.files[0];
    */
 
    var objHidden1;
    var objHidden2;
    var objHidden3 ;
    /*var objHidden4, objHidden5, objHidden6, objHidden7, objHidden8, objHidden9,
            objHidden10, objHidden11, objHidden12, objHidden13, objHidden14, objHidden15,
            objHidden16, objHidden17, objHidden18, objHidden19, objHidden20, objHidden21,
            objHidden22, objHidden23, objHidden24, objHidden25, objHidden26, objHidden27,
            objHidden28, objHidden29, objHidden30, objHidden31, objHidden32, objHidden33,
            objHidden34, objHidden34, objHidden36, objHidden37, objHidden38, objHidden39,
            objHidden40, objHidden41, objHidden42, objHidden43, objHidden44, objHidden45;
    */
    objHidden1 = document.formulario.nombre1;
    objHidden1.value = file1.name;
    
    objHidden2 = document.formulario.nombre2;
    objHidden2.value = file2.name;
    
    objHidden3 = document.formulario.nombre3;
    objHidden3.value = file3.name;
    
    /*
    objHidden4 = document.formulario.nombre4;
    objHidden4.value = file4.name;
    
    objHidden5 = document.formulario.nombre5;
    objHidden5.value = file5.name;
    
    objHidden6 = document.formulario.nombre6;
    objHidden6.value = file6.name;
    
    objHidden7 = document.formulario.nombre7;
    objHidden7.value = file7.name;
    
    objHidden8 = document.formulario.nombre8;
    objHidden8.value = file8.name;
    
    objHidden9 = document.formulario.nombre9;
    objHidden9.value = file9.name;
    
    objHidden10 = document.formulario.nombre10;
    objHidden10.value = file10.name;
    
    objHidden11 = document.formulario.nombre11;
    objHidden11.value = file11.name;
    
    objHidden12 = document.formulario.nombre12;
    objHidden12.value = file12.name;
    
    objHidden13 = document.formulario.nombre13;
    objHidden13.value = file13.name;
    
    objHidden14 = document.formulario.nombre14;
    objHidden14.value = file14.name;
    
    objHidden15 = document.formulario.nombre15;
    objHidden15.value = file15.name;
    
    objHidden16 = document.formulario.nombre16;
    objHidden16.value = file16.name;
    
    objHidden17 = document.formulario.nombre17;
    objHidden17.value = file17.name;
    
    objHidden18 = document.formulario.nombre18;
    objHidden18.value = file18.name;
    
    objHidden19 = document.formulario.nombre19;
    objHidden19.value = file19.name;
    
    objHidden20 = document.formulario.nombre20;
    objHidden20.value = file20.name;
    
    objHidden21 = document.formulario.nombre21;
    objHidden21.value = file21.name;
    
    objHidden22 = document.formulario.nombre22;
    objHidden22.value = file22.name;
    
    objHidden23 = document.formulario.nombre23;
    objHidden23.value = file23.name;
    
    objHidden24 = document.formulario.nombre24;
    objHidden24.value = file24.name;
    
    objHidden25 = document.formulario.nombre25;
    objHidden25.value = file25.name;
    
    objHidden26 = document.formulario.nombre26;
    objHidden26.value = file26.name;
    
    objHidden27 = document.formulario.nombre27;
    objHidden27.value = file27.name;
    
    objHidden28 = document.formulario.nombre28;
    objHidden28.value = file28.name;
    
    objHidden29 = document.formulario.nombre29;
    objHidden29.value = file29.name;
    
    objHidden30 = document.formulario.nombre30;
    objHidden30.value = file30.name;
    
    objHidden31 = document.formulario.nombre31;
    objHidden31.value = file31.name;
    
    objHidden32 = document.formulario.nombre32;
    objHidden32.value = file32.name;
    
    objHidden33 = document.formulario.nombre33;
    objHidden33.value = file33.name;
    
    objHidden34 = document.formulario.nombre34;
    objHidden34.value = file34.name;
    
    objHidden35 = document.formulario.nombre35;
    objHidden35.value = file35.name;
    
    objHidden36 = document.formulario.nombre36;
    objHidden36.value = file36.name;
    
    objHidden37 = document.formulario.nombre37;
    objHidden37.value = file37.name;
    
    objHidden38 = document.formulario.nombre38;
    objHidden38.value = file38.name;
    
    objHidden39 = document.formulario.nombre39;
    objHidden39.value = file39.name;
    
    objHidden40 = document.formulario.nombre40;
    objHidden40.value = file40.name;
    
    objHidden41 = document.formulario.nombre41;
    objHidden41.value = file41.name;
    
    objHidden42 = document.formulario.nombre42;
    objHidden42.value = file42.name;
    
    objHidden43 = document.formulario.nombre43;
    objHidden43.value = file43.name;
    
    objHidden44 = document.formulario.nombre44;
    objHidden44.value = file44.name;
    
    objHidden45 = document.formulario.nombre45;
    objHidden45.value = file45.name;
    */
    document.formulario.target = "null";
    //document.formulario.action = "ProcesoArchivo";
    switch(origen){
        case 'EEG':{
            
            document.formulario.action = "ProcesoArchivo?action=EEG";
            document.formulario.style="display:none;";
            document.formulario2.style="";
            break;
        }   
        case 'ETAVI':{
            document.formulario.action = "ProcesoArchivo?action=ETAVI";
            document.formulario.style="display:none;";
            document.formulario2.style="";
            break;
        }
        case 'ETCSV':{
            document.formulario.action = "ProcesoArchivo?action=ETCSV";
            document.formulario.style="display:none;";
            document.formulario2.style="";
            break;
        }
    }
    

}

function consultarDoc(){
    var documento=document.formulario.doc.value;
    alert(documento);
    document.formulario.action = "CargarDatos_p1.jsp";
}

