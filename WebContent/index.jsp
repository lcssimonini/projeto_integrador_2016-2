<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
	<html>
	<%@include  file="head.jsp" %>
		<body>
			<div class="container-fluid">
				<a id="home"></a>
				<div id="home" class="linha">
					<div class="col-dm-1 col-dg-2 col-deg-2 esconde"></div>
					<div class="col-dp-12 col-dm-10 col-dg-8 col-deg-8">
						<div class="header">
							<div class="logo">
								<a href="/sixfit/">
									<img src="img/logo.png" alt="Logo" Title="SixFit - PÃ¡gina Inicial">
								</a>
							</div>
							<ul class="topnav" id="myTopnav">
								<span><li><a class="active" href="#home" >Menu</a></li></span>
								<li><a class="home" href="javascript:;">Home</a></li>
								<li><a class="news" href="javascript:;">O Que Fazemos</a></li>
								<li><a class="about" href="javascript:;">Quem Somos</a></li>
								<li><a class="contact" href="javascript:;">Contato</a></li>
								<li id="login"><button id="myBtn" class="botaologin">LOGIN</button></li>
								<li id="logout">
									<a href="logout">
										<button id="logout" class="botaologin">LOGOUT</button>
										<a>
										</a>
								</li>
								<li><span id="emailUsuario"></span></li>
							</ul>
							<span style="cursor:pointer" onclick="openNav()"><img src="img/menu.png" alt="Logo" Title="SixFit - Página Inicial"></span>
							<div id="mySidenav" class="sidenav">
								<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
								<li><a href="javascript:;" click="scroll('home')">Home</a></li>
								<li><a href="javascript:;" click="scroll('news')">O Que Fazemos</a></li>
								<li><a href="javascript:;" click="scroll('about')">Quem Somos</a></li>
								<li><a href="javascript:;" click="scroll('contact')">Contato</a></li>
								<button id="myBtn" class="botaologin">LOGIN</button></li>
							</div>
						</div>
					</div>

					<div class="col-dm-1 col-dg-2 col-deg-2 esconde"></div>
				</div>

				<div class="linha">
					<div class="col-dp-12 col-dm-12 col-dg-12 col-deg-12">
						<div class="slideshow-container">

							<div class="mySlides fade">
								<img src="img/slider1.jpg" style="width:100%">
								<div class="text">
									<h1 style="font-size:300%;"><span style="color:#E27D15">MONITORE</span> SEU PROGRESSO
										<h1>
											<p>
											
											Nós sabemos que cada quilometro importa para você, por isso entregamos cada detalhe: 
											ritmo, distância, rota e recordes pessoais com muita precisão e ainda mais controle sobre
											 os dados que você deseja ver durante sua corrida.<br></p>
								</div>
							</div>

							<div class="mySlides fade">
								<img src="img/slider2.jpg" style="width:100%">
								<div class="text">
									<h1 style="font-size:300%;"><span style="color:#E27D15">CORRE</span> JUNTO
										<h1>
											<p>Nunca foi tão fácil comparar e competir com seus amigos e corredores do mundo todo. 
											Tudo que você precisa fazer é colocar as hashtags específicas ao compartilhar suas corridas nas 
											redes sociais..<br></p>
								</div>
							</div>

							<a class="prev">&#10094;</a>
							<a class="next">&#10095;</a>

						</div>
						<br>

						<div style="text-align:center">
							<span class="dot"></span>
							<span class="dot"></span>
						</div>
					</div>
				</div>


				<div class="linha meio">
					<a name="oquefazemos"></a>
					<div class="col-dg-1 col-deg-1 esconde escondemeio"></div>
					<div class="col-dp-12 col-dm-12 col-dg-4 col-deg-4">
						<div id="news" class="meio-esquerdo" name="oquefazemos">
							<h4>O Que Fazemos</h4>
							<h1>SIXFIT</h1>
							<p>
								É amplamente reconhecido que praticar atividades fí­sicas e exercí­cios fí­sicos podem trazer grandes benefí­cios
								à saúde. Entretanto, para se tirar o máximo destas práticas é necessário que seja realizada uma avaliação física
								 pŕevia, que permitirá a prescrição do exercí­cios com maior segurança.
								 <br><br> 
								 O programa proposto pela Sixfit é uma avaliação física inicial que tem o objetivo de identificar o ní­vel de 
								 aptidão físiva atual do cliente, permitindo que os exercí­cios possam ser indicados de acordo com suas necessidades
								  e seus objetivos. Atualizações periódicas permitirão verificar as possí­veis alterações da aptidão fí­sica,
								   decorrentes do programa de exercí­cios fí­sicos.
							</p>
							<br>
							<div class="botao"><a href="cadastro.jsp" title="FaÃ§a agora o seu Cadastro!">CADASTRE-SE</a></div>
							<br>
							<img align="center" src="img/quemsomos.jpg" alt="Logo" Title="SixFit - PÃ¡gina Inicial">
						</div>
					</div>



					<div class="col-dp-12 col-dm-12 col-dg-6 col-deg-6">
						<div class="meio-direito">
							<div class="quadro">
								<div class="col-dp-2 col-dm-1 col-dg-2 col-deg-2">
									<div class="numero">01</div>
								</div>
								<div class="col-dp-10 col-dm-8 col-dg-7 col-deg-7">
									<h1>PRÁTICA DE ESPORTES / 30 MINUTOS</h1>
									<p>
										Praticar alguma atividade física pelo menos três vezes por semana, em seu tempo livre, com duração mínima
										 de 30 minutos é indicado por profissionais de saúde para pessoas de todas idades.
									</P>
									<h2 class="escondemeio"><a href="#" title="Faça o Login">Veja os mais indicados para vocÊ.</a></h2>
								</div>

								<div class="col-dg-3 col-dm-3 col-deg-3 esconde">
									<img src="img/1.png" alt="Logo" Title="SixFit - Página Inicial">
								</div>
							</div>
							<div class="quadro">
								<div class="col-dp-2 col-dm-1 col-dg-2 col-deg-2">
									<div class="numero">02</div>
								</div>
								<div class="col-dp-10 col-dm-8 col-dg-7 col-deg-7">
									<h1>ATIVIDADES FÍSICAS</h1>
									<p>
										Os benefícios da prática de esportes para sua saúde e bem-estar são vários. 
										Entre as mais conhecidas e esperadas são o controle e diminuição do peso.
									</P>
									<h2 class="escondemeio"><a href="#" title="Faça o Login">Veja os mais indicados para você.</a></h2>
								</div>

								<div class="col-dg-3 col-dm-3 col-deg-3 esconde">
									<img src="img/2.png" alt="Logo" Title="SixFit - Página Inicial">
								</div>
							</div>
							<div class="quadro">
								<div class="col-dp-2 col-dm-1 col-dg-2 col-deg-2">
									<div class="numero">03</div>
								</div>
								<div class="col-dp-10 col-dm-8 col-dg-7 col-deg-7">
									<h1>EXERCíCIOS AERÓBICOS</h1>
									<p>
										Indicamos as modalidades Caminhada, Natação, Ciclismo, Patinação, Dança, Corrida e outros exercí­cios
										 realizados em intensidade moderada, porém com a frequência cardíaca acima do ní­vel minimo, 
										 que seja de acordo com a capacidade de cada pessoa.
									</P>
									<h2 class="escondemeio"><a href="#" title="Faça o Login">Veja os mais indicados para você.</a></h2>
								</div>

								<div class="col-dg-3 col-dm-3 col-deg-3 esconde">
									<img src="img/3.png" alt="Logo" Title="SixFit - Página Inicial">
								</div>
							</div>

						</div>

					</div>



					<div class="col-dg-1 esconde escondemeio"></div>
				</div>

				<div id="about" class="linha meio2">
					<a name="quemsomos"></a>

					<div class="col-dg-1 col-deg-1 esconde escondemeio"></div>

					<div class="col-dm-5 col-dg-3 col-deg-3 esconde">
						<div class="imgdispositivo">
							<h4>Quem somos</h4>
							<img src="img/6.jpg" alt="Logo" Title="SixFit - PÃ¡gina Inicial">
						</div>
					</div>

					<div class="col-dg-2 col-deg-2 esconde escondemeio">
						<div class="imgexercicio escondemeio">
							<img src="img/4.jpg" alt="Logo" Title="SixFit - PÃ¡gina Inicial">
							<img src="img/5.jpg" alt="Logo" Title="SixFit - PÃ¡gina Inicial">
						</div>
					</div>

					<div class="col-dp-12 col-dm-7 col-dg-5 col-deg-5">
						<h4 class="mostrarpequeno">Quem Somos</h4>
						<p>
							Somos um grupo de alunos do curso de sistemas do instituto federal do triangulo mineiro que se reuniu para apresentar uma
							proposta de projeto de aplicação que realmente ajudasse as pessoas de alguma forma e contribuisse de maneira positiva
							no dia a dia delas e que trouxesse informações relevantes da sua saúde e desse aconselhamentos sobre como alterar
							sua rotina contribuindo com o alcance dos seus objetivos e bem estar.
						</p>
					</div>

					<div class="col-dg-1 col-deg-1 esconde escondemeio"></div>

				</div>
				<%@include  file="footer.jsp" %>
			</div>
			<%@include  file="login.jsp" %>
		</body>
		<%@include  file="scripts.jsp" %>
	</html>