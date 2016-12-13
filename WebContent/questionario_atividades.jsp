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
                                <div class="logo"><img src="img/logo.png" alt="Logo" Title="SixFit - PÃ¡gina Inicial"></div>
                                <ul class="topnav" id="myTopnav">
                                   
                                    <span><li><a class="active" href="#home">Menu</a></li></span>
                                    <li><a href="#home">Home</a></li>
                                    <li><a href="#news">O Que Fazemos</a></li>
                                    <li><a href="#contact">Quem Somos</a></li>
                                    <li><a href="#about">Contato</a></li>
                                    <li><button id="myBtn" class="botaologin">LOGIN</button></li>
                                </ul>
                                <span style="cursor:pointer" onclick="openNav()"><img src="img/menu.png" alt="Logo" Title="SixFit - PÃ¡gina Inicial"></span>
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

		<div class="form-geral col-dg-12 col-dm-12 col-dp-12 background">
			<div class="col-dg-2 col-deg-2 esconde escondemeio"></div>
			<div class="col-dg-4 col-deg-4 col-dm-6 col-dp-12">
				<form action="atividades" method="POST" class="form-horizontal">

					<div class="col-dg-12">
						<p class="titulodocadastro">CADASTRO</p>
					</div>
					<!-- nome-->

					<div class="form-group">
						<label class="col-md-4 control-label" for="radios">Se considera:</label>
						<div class="col-md-4">
							<div class="radio">
								<label for="radios-0">
														  <input name="radios" id="radios-0" value="1" type="radio">
														  Sedentário
														</label>
							</div>
							<div class="radio">
								<label for="radios-1">
														  <input name="radios" id="radios-1" value="2" type="radio">
														  Pratica atividades fisicas as vezes
														</label>
							</div>
							<div class="radio">
								<label for="radios-2">
														  <input name="radios" id="radios-2" value="3" type="radio">
														  Pratica atividades fisicas sempre
														</label>
							</div>
						</div>
					</div>

					<!-- Fumante -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="">Fumante:</label>
						<div class="col-md-4">
							<div class="radio">
								<label for="-0">
														  <input name="" id="-0" value="1" type="radio">
														  Sim
														</label>
							</div>
							<div class="radio">
								<label for="-1">
														  <input name="" id="-1" value="2" type="radio">
														  NÃ£o
														</label>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-4 control-label" for="esportescoletivos">Atividades:</label>
						<div class="col-md-4">
							<div class="checkbox">
								<label for="esportescoletivos-0">
														  <input name="esportescoletivos" id="esportescoletivos-0" value="1" type="checkbox">
														  Ciclismo
														</label>
							</div>
							<div class="checkbox">
								<label for="esportescoletivos-1">
														  <input name="esportescoletivos" id="esportescoletivos-1" value="2" type="checkbox">
														  Corrida
														</label>
							</div>
							<div class="checkbox">
								<label for="esportescoletivos-2">
														  <input name="esportescoletivos" id="esportescoletivos-2" value="3" type="checkbox">
														  NataÃ§Ã£o
														</label>
							</div>
							
							<div class="checkbox">
								<label for="esportescoletivos-0">
														  <input name="esportescoletivos" id="esportescoletivos-0" value="1" type="checkbox">
														  Futebol
														</label>
							</div>
							<div class="checkbox">
								<label for="esportescoletivos-1">
														  <input name="esportescoletivos" id="esportescoletivos-1" value="2" type="checkbox">
														  Volei
														</label>
							</div>
						</div>
					</div>
					<!-- doenÃ§as -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="doencas">Alguma doenÃ§a relevante:</label>
						<div class="col-md-4">
							<div class="checkbox">
								<label for="doencas-0">
														  <input name="doencas" id="doencas-0" value="1" type="checkbox">
														  Diabetes
														</label>
							</div>
							<div class="checkbox">
								<label for="doencas-1">
														  <input name="doencas" id="doencas-1" value="2" type="checkbox">
														  Pressão alta
														</label>
							</div>
							<div class="checkbox">
								<label for="doencas-2">
														  <input name="doencas" id="doencas-2" value="3" type="checkbox">
														  Pressão baixa
														</label>
							</div>
						</div>
					</div>

					<!-- botao -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="botaoatividades"></label>
						<div class="col-md-4">
							<button onclick="enviarInformacoes()" id="botaoatividades" name="botaoatividades" class="btn btn-primary">Submeter questionÃ¡rio</button>
						</div>
					</div>
				</form>
			</div>

			<div class="col-dg-4 col-deg-4 col-dm-6 esconde">
				<div class="imgAtividades">
					<div class="imgAtiv"></div>
					<div class="imgAtiv1"></div>
					<div class="imgAtiv2"></div>
				</div>
				<div class="rodapeAtv">
					<p>Com acompanhamento personalizado e adaptÃ¡vel para te ajudar a praticar exercicios da melhor maneira, permitindo comparar
						e competir com seus amigos em varios esportes, a SIXFIT levarÃ¡ seus exercicios a outro nÃ­vel.</p>
				</div>
			</div>
			<div class="col-dg-2 col-deg-2 esconde escondemeio"></div>
		</div>



		<!-- RdapÃ© -->
		<%@include  file="footer.html" %>
	</div>
</body>
<%@include  file="scripts.html" %>
</html>