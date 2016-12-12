<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Sixfit - Resultados</title>
	<link rel="shortcut icon" href="img/favicon.ico" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="css/estilo.css" rel="stylesheet" type="text/css" />
	<link href="css/cadastro.css" rel="stylesheet" type="text/css" />

</head>

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
                                    <li><a href="#news">O Que Fazemos</a></li>
                                    <li><a href="#contact">Quem Somos</a></li>
                                    <li><a href="#about">Contato</a></li>
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

					<!-- Rodapé -->
					<div class="linha rodape">
						<a name="contato"></a>
						<div class="linha">
							<div class="col-dg-1 esconde escondemedio"></div>

							<div class="col-dp-12 col-dm-8 col-dg-7">

								<h4>Contato</h4>
								<form name="meuForm" method="post" id="formulario">
									<div class="box">
										<label> 
										<span>Nome Completo</span>
										<input type="text" class="input_text" name="nome" id="name"/>
							 
									</label>

										<label>
										<span>Email</span>
										<input type="text" class="input_text" name="email" id="email"/>
									 </label>

										<label>
										<span>Assunto</span>
										<input type="text" class="input_text" name="assunto" id="subject"/>
									</label>

										<label>
										 <span>Mensagem</span>
										<textarea class="message" name="feedback" id="feedback"></textarea><br>
										<input type="button" class="button" value="Enviar" />
									</label>
									</div>
								</form>

							</div>



							<div class="col-dm-4 col-dg-3 esconde">
								<div class="linha">
									<div class="col-dm-2 col-dg-1 esconde"></div>

									<div class="col-dm-8 col-dg-10 esconde">
										<div class="contato1">
											<img src="img/icon1.png" alt="Logo" Title="SixFit - Página Inicial">
											<h3>ENDEREÇO</h3>
											<p>Endereço da Faculdade</p>
										</div>
										<div class="contato2">
											<img src="img/icon2.png" alt="Logo" Title="SixFit - Página Inicial">
											<h3>TELEFONE</h3>
											<p>Telefone da Faculdade</p>
										</div>
										<div class="contato3">
											<img src="img/icon3.png" alt="Logo" Title="SixFit - Página Inicial">
											<h3>EMAIL</h3>
											<p>sistemasiftm@gmail.com</p>
										</div>
									</div>

									<div class="col-dm-2 col-dg-1 esconde"></div>
								</div>

							</div>

							<div class="col-dg-1 esconde escondemedio"></div>

						</div>

						<div class="linha borda">
							<div class="col-dm-2 col-dg-3 esconde"></div>

							<div class="col-dp-12 col-dm-8 col-dg-6">
								<div class="copyright">
									<p>Copyright © <a href="#home" title="Sixfit - Página Inicial"><span>SIXFIT</span></a>, Instituto Federal de Educação,
										Ciência e Tecnologia 2016</p>
								</div>
							</div>

							<div class="col-dm-2 col-dg-3 esconde">
								<div class="iftm">
									<a href="http://www.iftm.edu.br/uberlandiacentro"><img src="img/iftm.png" title="Conheça mais sobre a nossa Universidade" alt="Imagem Logo"></a>
								</div>
							</div>

						</div>


					</div>
					
	</div>	
			
</body>
<script src="js/jquery-3.1.1.js" type="text/javascript"></script>
<script src="js/jquery-ui.js" type="text/javascript"></script>
</html>