<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<%@include  file="head.html" %>
<body>
	<div class="container-fluid">
		<a id="home"></a>
			<div class="linha">
                <div class="col-dm-1 col-dg-2 col-deg-2 esconde"></div>
                <div class="col-dp-12 col-dm-10 col-dg-8 col-deg-8">
                        <div class="header">
                                <div class="logo">
                                	<a href="/sixfit/"> 
                                		<img src="img/logo.png" alt="Logo" Title="SixFit - Página Inicial">
                                	</a>
                                </div>
                                <ul class="topnav" id="myTopnav">
                                    <span><li><a class="active" href="#home">Menu</a></li></span>
                                    <li><a href="/sixfit/">Home</a></li>
                                    <li><a class="contact" href="javascript:;" >Contato</a></li>
                                    <li id="login"><button id="myBtn" class="botaologin">LOGIN</button></li>
									<li id="logout">
										<a href="logout">
											<button id="logout" class="botaologin">LOGOUT</button><a>
										</a>
									</li>
                                    <li><span id="emailUsuario"></span></li>
                                </ul>
                                <span style="cursor:pointer" onclick="openNav()"><img src="img/menu.png" alt="Logo" Title="SixFit - PÃ¡gina Inicial"></span>
                                <div id="mySidenav" class="sidenav">
								  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
								  <a href="/sixfit/">Home</a>
								  <a href="#contact">Contato</a>
								  <button id="myBtn" class="botaologin">LOGIN</button></li>
								</div>
                        </div>
                 </div>    
                <div class="col-dm-1 col-dg-2 col-deg-2 esconde"></div>
            </div> 
                    <div class="form-geral col-dg-12 col-dm-12 col-dp-12 background">
                            <div class="col-dg-2 col-deg-2 esconde escondemeio"></div>
                            <div class="col-dg-4 col-deg-4 col-dm-6 col-dp-12">
                                 <form action="cadastro" method="POST" class="form-horizontal">
                                                <div class="col-dg-12"> <p class="titulodocadastro">CADASTRO</p></div>
                                                 <!-- nome-->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="Nome Completo">Nome Completo:</label>
                                                         <div class="col-md-5">
                                                                 <input id="NomeCompleto" name="nome" placeholder=" Digite aqui o nome completo" class="inputg" required=""
                                                                         type="text">
                                                         </div>
                                                 </div>
                                                 <!-- email-->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="email">Email:</label>
                                                         <div class="col-md-5">
                                                                 <input id="email1" name="email" placeholder=" Digite aqui seu email" class="inputg" required="" type="text">
                                                         </div>
                                                 </div>
                                                 <!-- genero -->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="genero">GÃªnero</label>
                                                         <div class="col-md-4">
                                                                 <label class="radio-inline" for="genero-0">
                                                                   <input name="genero" id="genero-0" value="1" type="radio">
                                                                   F
                                                                 </label>
                                                                 <label class="radio-inline" for="genero-1">
                                                                   <input name="genero" id="genero-1" value="2" type="radio">
                                                                   M
                                                                 </label>
                                                         </div>
                                                 </div>
                                                 <!-- nascimento-->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="nascimento">Data de nascimento:</label>
                                                         <div class="col-md-4">
                                                                 <input id="nascimento" name="nascimento" placeholder=" DD/MM/AA" class="inputm" required="" type="text">
                                                         </div>
                                                 </div>
                                                 <!-- peso-->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="peso">Peso:</label>
                                                         <div class="col-md-2">
                                                                 <input id="peso" name="peso" placeholder=" 000" class="inputp" required="" type="text">
                                                                 <span>kg </span>
                                                         </div>
                                                 </div>
                                                 <!-- altura-->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="altura">Altura</label>
                                                         <div class="col-md-2">
                                                                 <input id="altura" name="altura" placeholder=" 0,00" class="inputp" required="" type="text">
                                                                 <span>m (em metros)</span>
                                                         </div>
                                                 </div>
                                                 <!-- senha-->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="senhacadastrada">Senha:</label>
                                                         <div class="col-md-4">
                                                                 <input id="senhacadastrada" name="senha" placeholder=" Digite uma senha" class="inputg" required=""
                                                                         type="password">
                                                         </div>
                                                 </div>
                                                 <!-- confirmar senha-->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="confirmarsenha">Confirme a senha:</label>
                                                         <div class="col-md-4">
                                                                 <input id="confirmarsenha" name="confirmarsenha" placeholder=" Digite sua senha novamente" class="inputg" required=""
                                                                         type="password">
                                                         </div>
                                                 </div>
                                                 <!-- botao -->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="confirmacadastro"></label>
                                                         <div class="col-md-4">
                                                                 <button type="submit" id="confirmacadastro" name="confirmacadastro" class="btn" onclick="valida()">Finalizar Cadastro</button>
                                                         </div>
                                                 </div>
                                 </form>
                            </div>  
                            <div class="col-dg-4 col-deg-4 col-dm-6 col-dp-12">
                                    <div class="imgCadastro">
                                        <img align="center" src="img/7.png" alt="Logo" Title="SixFit - Experimente uma sabor novo de viver">
                                        <p style="font-size: 17px; color:white; font-weight: bold;">O programa proposto pela <a href="index.html" title="Sixfit para vocÃª!">SIXFIT</a> Ã© uma avaliaÃ§Ã£o fÃ­sica inicial que tem o objetivo de identificar o nÃ­vel de aptidÃ£o fÃ­sica atual do cliente, permitindo que os exercÃ­cios possam ser indicados de acordo com suas necessidades e seus objetivos.<br><br></p>
                                        
                                    </div>
                                    <div class="rodapeMsg">
                                        <p>ConheÃ§a nossas redes sociais.</p>
                                        <div class="redesSociais">
                                            <img src="img/facebook.png" alt="Facebook" Title="SixFit - Facebook">    
                                            <img src="img/instagram.png" alt="Instagram" Title="SixFit - Instagram">  
                                            <img src="img/twitter.png" alt="Twitter" Title="SixFit - Twitter">  
                                            <img src="img/snap.png" alt="Snapchat" Title="SixFit - Snapchat">  
                                        </div>
                                    </div>    
                            </div>
                            <div class="col-dg-2 col-deg-2 esconde escondemeio"></div>
                    </div>
			<%@include  file="footer.html" %> 
        </div> 
</body>
<%@include  file="login.html" %>
</body>
<%@include  file="scripts.html" %>
<script>
	$( document ).ready(function() {
		$("#nascimento").datepicker({
		    dateFormat: 'dd/mm/yy',
		    dayNames: ['Domingo','Segunda','TerÃ§a','Quarta','Quinta','Sexta','SÃ¡bado'],
		    dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
		    dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','SÃ¡b','Dom'],
		    monthNames: ['Janeiro','Fevereiro','MarÃ§o','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
		    monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez'],
		    nextText: 'PrÃ³ximo',
		    prevText: 'Anterior',
		    changeYear: true
		});
	});
</script>
</html>