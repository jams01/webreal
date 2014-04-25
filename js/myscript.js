/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function nota(Sel){
    if (Sel.grupo1.selectedIndex !== 0){
    var link = Sel.grupo1.selectedIndex;
    if(link===1){
        request1("consulta",link,"null","resultado","");
        document.getElementById("grupo").innerHTML="";
        document.getElementById("resultado1").innerHTML="";
        }
    else {
        request1("tabla",link,"null","grupo","");
        document.getElementById("resultado").innerHTML="";
        document.getElementById("resultado1").innerHTML="";
        
        }
}
}
function cambiodos(Sel){
    if (Sel.gruposel.selectedIndex !== 0 && Sel.practica.selectedIndex !== 0){
    var link = Sel.gruposel.selectedIndex+1;
    var practica="";
    
     practica=Sel.practica.selectedIndex;
     request1("crear",practica,link,"resultado1","");
     
   
    //request1("crear","",link,"resultado1","");
}
}
function mostrar_practica(Sel){
    if (Sel.gruposel.selectedIndex !== 0){
    var link = Sel.gruposel.selectedIndex+1;
    request1("practica",link,link,"resultado","");
    }
}

function crear(Sel){
 if (Sel.gruposel.selectedIndex !== 0){
    var link = Sel.gruposel.selectedIndex+1;
    request1("consulta","",link,"resultado1","");
}else{
        alert("Seleccione un grupo donde crear la practica");
}
}

function tabla(Sel1){
if (Sel1.gruposel.selectedIndex !== 0){
var link = Sel1.gruposel.options[Sel1.gruposel.selectedIndex].value;
var valor=Sel1.gruposel.selectedIndex+1;
var cod="";
try {
    cod=Sel1.codigo.value;
}catch(err){
    cod="";
}
if(edit===1){
    edit="no";
}
else{
    edit="yes";
}

request1("tabla",link,valor,"resultado",cod,edit);
}
}
function filtro(cod,prac,empieza,tamano){//se usa para llamar al poppup

//request1("second",cod,prac,"resultado1","");
var ventana=window.open('./pages/pop-pup.jsp?action=second&tipo='+cod+'&cuenta='+prac+'&start='+empieza+'&tamano='+tamano+'','pop-pup','width=500,height=600');

}
function filtro1(cod,prac,tamano){//lo usa el poppup

request2("second",cod,prac,"resultado1","poppup",tamano);

}
function retornar(inicio,tamano){//regresa los valores del poppup
    var ini=inicio-1;
    var fin=(ini+tamano);
    
    var control=0;
    
    try{
    for(ini;ini<fin;ini++){
         window.opener.document.getElementById(ini).value=document.getElementById(control).value;
         control++;
    }
    self.close(); 
}catch(err){
        alert(err.message);
}

}
function request2(ac,ti,cuen,donde,otro,edit){
    var xmlhttp1;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp1=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp1.onreadystatechange=function()
  {
  if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
    {
    
    document.getElementById(donde).innerHTML=xmlhttp1.responseText;
        
    }
  };
xmlhttp1.open("GET","../registrarnotas?action="+ac+"&tipo="+ti+"&cuenta="+cuen+"&otro="+otro+"&edit="+edit+"",true);

xmlhttp1.send();
}


function request1(ac,ti,cuen,donde,otro,edit){
    var xmlhttp1;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp1=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp1.onreadystatechange=function()
  {
  if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
    {
    
    document.getElementById(donde).innerHTML=xmlhttp1.responseText;
        
    }
  };
xmlhttp1.open("GET","registrarnotas?action="+ac+"&tipo="+ti+"&cuenta="+cuen+"&otro="+otro+"&edit="+edit+"",true);

xmlhttp1.send();
}


function cambio(Sel){
if (Sel.grupo1.selectedIndex !== 0){
var link = Sel.grupo1.options[Sel.grupo1.selectedIndex].value;
request("first",link,"null","grupo");
document.getElementById("practica").innerHTML="";
}
}

function cambio2(Sel1){
if (Sel1.gruposel.selectedIndex !== 0){
var curso = Sel1.gruposel.options[Sel1.gruposel.selectedIndex].id;
var valor=Sel1.gruposel.selectedIndex+1;
var materia=document.getElementById(curso).className;
try {
    cod=Sel1.codigo.value;
}catch(err){
    cod="";
}
request("first",curso,valor,"practica",materia,"");
try{
    if (Sel1.practicasel.selectedIndex == 0 ){
        request("second",materia,valor,"resultado","","xx");
    }
}catch(err){
    request("second",materia,valor,"resultado","","xx");
}
}
}


function cambiopractica(Sel1){
if (Sel1.gruposel.selectedIndex !== 0){
var link = Sel1.gruposel.options[Sel1.gruposel.selectedIndex].value;
var link2 = Sel1.practicasel.selectedIndex;
var valor=Sel1.gruposel.selectedIndex+1;
var cod="";
try {
    cod=Sel1.codigo.value;
}catch(err){
    cod="";
}
request("second",link,valor,"resultado",cod,link2);
}
}

function cambio3(Sel1){
var link = Sel1.codigo.value;
var link2 = document.getElementById("practicasel").selectedIndex;
request("second",link,"null","resultado","",link2);
}
function cambio4(cod){
var link2 = document.getElementById("practicasel").selectedIndex;
request("second",cod,"null","resultado","",link2);
}
function nombre(Sel1){
   var link = Sel1.codigo.value;
   request("third",link,"null","resultado");
}
function request(ac,ti,cuen,donde,otro,prac){
    var xmlhttp1;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp1=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp1.onreadystatechange=function()
  {
  if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
    {
    
    document.getElementById(donde).innerHTML=xmlhttp1.responseText;
    
    }
  };
xmlhttp1.open("GET","consultarnotas?action="+ac+"&tipo="+ti+"&cuenta="+cuen+"&otro="+otro+"&practica="+prac,true);

xmlhttp1.send();
}
function stopRKey(evt) {
var evt = (evt) ? evt : ((event) ? event : null);
var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
if ((evt.keyCode == 13) && (node.type=="text")) {return false;}
}
document.onkeypress = stopRKey;

function permisoglobal(radio){
    var check=radio.activar;
    var i=check.length;
    for (var j = 0; j < i; j++) {
    if (check[j].checked) { //index has to be j.
       permisos_request("global",j,""); 
    }
    
}
}

function permisolocal(radio,codigo){
    var check=radio.activardoc;
    var i=check.length;
    for (var j = 0; j < i; j++) {
    if (check[j].checked) { //index has to be j.
       permisos_request("local",j,codigo); 
    }
    
}
}

function generar_radio(sel){
    if (sel.permisosdoc.selectedIndex !== 0){
var link = sel.permisosdoc.options[sel.permisosdoc.selectedIndex].id;
var link2= document.getElementById(link).className;
var chk1="",chk2="",chk3="";
if(link2==0){
    chk1="checked";
    chk2="";
    chk3="";
}
else if(link2==1){
    chk2="checked";
    chk1="";
    chk3="";
}else{
    chk3="checked";
    chk1="";
    chk2="";
}
var res="<form id=\"radiodoc\" name=\"radiodoc\"><input type=\"radio\" onchange=\"permisolocal(this.form,"+link+")\" name=\"activardoc\" "+chk1+"/>Desactivar<br><input type=\"radio\" onchange=\"permisolocal(this.form,"+link+")\" name=\"activardoc\" "+chk2+"/>Activar inserción de nuevas notas solamente<br><input type=\"radio\" onchange=\"permisolocal(this.form,"+link+")\" name=\"activardoc\" "+chk3+"/>Activar inserción o edicion de notas</form>";
document.getElementById("resultador").innerHTML=res;

}
}

function permisos_request(ac,ti,cod){
    var xmlhttp1;
        if (window.XMLHttpRequest)
          {// code for IE7+, Firefox, Chrome, Opera, Safari
          xmlhttp1=new XMLHttpRequest();
          }
        else
          {// code for IE6, IE5
          xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
          }
        xmlhttp1.onreadystatechange=function()
          {
          if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
            {

            window.alert(xmlhttp1.responseText);

            }
          };
        xmlhttp1.open("GET","./pages/modificarpermisos.jsp?action="+ac+"&tipo="+ti+"&cod="+cod,true);

        xmlhttp1.send();
}
function contrasenas(Sel){
    var ps1= Sel.contrasena1.value;
    var ps2= Sel.contrasena2.value;
    if(ps1===ps2){
        document.getElementById("resultado").innerHTML="";
        document.getElementById("envia").disabled = false;
    }else{
        document.getElementById("resultado").innerHTML="las contraseñas no coinciden";
        document.getElementById("envia").disabled = true;
    }
}
function otro(val){
    var num=val+1;
    document.getElementById("guardar").disabled=false;
    document.getElementById(val).innerHTML='Estudiante &nbsp; <input type="text" name="'+val+'" id="1'+val+'" onchange="comprobar(1'+val+',0)" size="10" required /><input type="text" id="11'+val+'" readonly="readonly" style="border: 0px;"/><div id="'+num+'"></div></tr><tr id="'+num+'">';
    document.getElementById("agregar").setAttribute("onclick","otro("+num+")");
}

function comprobar(val,tipo){
    var codigo=document.getElementById(val).value;
    var xmlhttp1;
        if (window.XMLHttpRequest)
          {// code for IE7+, Firefox, Chrome, Opera, Safari
          xmlhttp1=new XMLHttpRequest();
          }
        else
          {// code for IE6, IE5
          xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
          }
        xmlhttp1.onreadystatechange=function()
          {
          if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
            {
              var res=xmlhttp1.responseText;
              if(res==="---"||res==="null"){
                  document.getElementById(val).value="";
                  alert("ese codigo no coincide");
              }
              document.getElementById("1"+val).value=res;

            }
          };
        xmlhttp1.open("GET","comprobarcodigos?codigo="+codigo+"&tipo="+tipo,true);

        xmlhttp1.send();
}
function lista(curso,materia){
     var xmlhttp1;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp1=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp1.onreadystatechange=function()
  {
  if (xmlhttp1.readyState==4 && xmlhttp1.status==200)
    {
    
    document.getElementById("resultado").innerHTML=xmlhttp1.responseText;
    
    }
  };
xmlhttp1.open("GET","../Lista?curso="+curso+"&materia="+materia,true);

xmlhttp1.send();
    
}
function eliminar(Sel){
    var confirm=window.confirm("¿Esta seguro(a) que desea finalizar el periodo?");
    if(confirm){
        document.eli.submit();
    }
}