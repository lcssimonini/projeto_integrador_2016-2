/*MENU RESPONSIVO*/
function openNav() {
    document.getElementById("mySidenav").style.display = "block";
}

function closeNav() {
    document.getElementById("mySidenav").style.display = "none";
}



/*SLIDESHOW*/
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 4000); // Change image every 2 seconds
}


function validar() {
	campos=document.getElementsByTagName("input").length;
	for(i=0;i<campos;i++){
        if(document.getElementsByTagName("input")[i].type=="text"){
        	value = document.getElementsByTagName("input")[i].value;
        	if(value=="" || value=="Campo Obrigatório*"){
        		  document.getElementsByTagName("input")[i].value = "Campo Obrigatório*";
        	}
        }

	}    
}

function limpar(idCampo) {
	document.getElementById(idCampo).value = "";
}


function newPopup(){
	varWindow = window.open (
	'cadastro.html',
	'pagina',
	"width=350, height=255, top=100, left=110, scrollbars=yes ,resizable=yes ,directories=yes , menubar=yes, toolbar=yes, titlebar=yes" );
}
