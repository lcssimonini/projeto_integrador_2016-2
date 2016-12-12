<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<%@include  file="head.html" %>
<body>
	<div class="container-fluid">
		<a id="home"></a>
			<!-- Nav -->
			<div class="linha">
                <div class="col-dm-1 col-dg-2 col-deg-2 esconde"></div>
                <div class="col-dp-12 col-dm-10 col-dg-8 col-deg-8">
                        <div class="header">
                                <div class="logo"><img src="img/logo.png" alt="Logo" Title="SixFit - Página Inicial"></div>
                                <ul class="topnav" id="myTopnav">
                                    <span><li><a class="active" href="#home">Menu</a></li></span>
                                    <li><a href="#home">Home</a></li>
                                    <li><a href="#contact" click="scroll('contact')" >Contato</a></li>
                                    <li><button id="myBtn" class="botaologin">LOGIN</button></li>
                                </ul>
                                <span style="cursor:pointer" onclick="openNav()"><img src="img/menu.png" alt="Logo" Title="SixFit - Página Inicial"></span>
                                <div id="mySidenav" class="sidenav">
								  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
								  <a href="#">Home</a>
								  <a href="#">O Que Fazemos</a>
								  <a href="#">Quem Somos</a>
								  <a href="#">Contato</a>
								  <button id="myBtn" class="botaologin">LOGIN</button></li>
								</div>
                        </div>
                 </div>    

                <div class="col-dm-1 col-dg-2 col-deg-2 esconde"></div>
            </div>  
		   <!-- Corpo -->
		  	 <div class="linha">
				   <div class="form-total col-deg-12 col-dg-12 col-dm-12 col-dp-12 background-resultados">
						<div class="centro">
									 <div class="col-dg-4 col-deg-4 col-dm-12 col-dp-12 dadosresultados">
										<h3><img src="img/analise.png"width="28px" height="23px">Análise</h3>
									     <p><img class="seta" src="img/seta.png">Nome: ${usuario.nome}</p>
									     <p><img class="seta" src="img/seta.png">Idade: ${usuario.getIdade()}</p>
									     <p><img class="seta" src="img/seta.png">Peso: ${usuario.peso}</p>
									     <p><img class="seta" src="img/seta.png">Status: ${usuario.getStatusPeso()}</p>
									     <p><img class="seta" src="img/seta.png">Altura: ${usuario.altura}</p>
									     <p><img class="seta" src="img/seta.png">IMC: ${usuario.getFormattedImc()}</p>
									     <p><img class="seta" src="img/seta.png">Status: ${usuario.nome}</p>
									     <p><img class="seta" src="img/seta.png">Calorias ingeridas: ${usuario.nome}</p>
									     <p><img class="seta" src="img/seta.png">Condição física: ${usuario.nome}</p>
									 </div>

									
									 <div class="col-dg-4 col-deg-4 col-dm-12 col-dp-12 dadosresultados1">
									 <h3><img src="img/sugestao.png" width="22px" height="20px">Ideal / Atividades</h3>
									     <p><img class="seta" src="img/seta.png">IMC Ideal: </p>
									     <p><img class="seta" src="img/seta.png">Peso Ideal: </p>
									     <p><img class="seta" src="img/seta.png">Esportes: </p>
									     <p><img class="seta" src="img/seta.png">Frequência: </p>
								     </div>
								     
								     <div class="col-dg-4 col-deg-4 col-dm-12 col-dp-12 dadosresultados2">
									 <h3><img src="img/indicacao.png" width="22px" height="20px">Indicações Fit</h3>
									     <p><img class="seta" src="img/seta.png">Academias: </p>
									     <p><img class="seta" src="img/seta.png">Nutricionistas: </p>
								     </div>

									 
							
                    		</div>
                    </div>
              </div>      
			<%@include  file="footer.html" %>
	</div>	
</body>
<%@include  file="scripts.html" %>
</html>