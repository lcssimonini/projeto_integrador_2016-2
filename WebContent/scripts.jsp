<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<script src="js/javascript.js" type="text/javascript"></script>
<script src="js/jquery-3.1.1.js" type="text/javascript"></script>
<script src="js/jquery-ui.js" type="text/javascript"></script>
<script src="js/jquery.mask.js" type="text/javascript"></script>
<script>
		// Get the modal
		var modal = document.getElementById('myModal');
		
		// Get the button that opens the modal
		var btn = document.getElementById("myBtn");
		
		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];
		
		if(btn != null) {
			// When the user clicks the button, open the modal
			btn.onclick = function() {
			    modal.style.display = "block";
			}
		}
		
		if(span != null) {
			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
			    modal.style.display = "none";
			}
		}
		
		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
		    if (event.target == modal) {
		        modal.style.display = "none";
		    }
		}

		var usuario;
		$(document).ready(function() {
			$("#logout").hide();
			getUsuarioLogado();
			
			$('#nascimento').mask('00/00/0000');
			$('#peso').mask('000.00');
			$('#altura').mask('00.00');
		});
	
		function getUsuarioLogado() {
			$.get( "/sixfit/get_usuario", function( data ) {
				usuario = $.parseJSON(data);
				if(usuario.usuario_logado != "nenhum") {
					$("#login").hide();
					$("#logout").show();				
					$("#emailUsuario").text(usuario.usuario_logado);
				}
			});
		}
		
		function scroll(scrollId) {
			console.log(scrollId);
			$(document.body).animate({
			    'scrollTop':   $('#'+scrollId).offset().top - 80
			}, 2000);
		}
		
		$( ".home" ).click(function() {
			scroll("home");
		});
		
		$( ".news" ).click(function() {
			scroll("news");
		});	
		
		$( ".about" ).click(function() {
			scroll("about");
		});	
		
		$( ".contact" ).click(function() {
			scroll("contact");
		});
</script>
	
	