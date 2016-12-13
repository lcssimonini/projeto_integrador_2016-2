<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
    <%@include  file="head.html" %> 
    <body>        
        <div class="container-fluid"><a id="home"></a>           
            <div id="home" class="linha">
                <div class="col-dm-1 col-dg-2 col-deg-2 esconde"></div>                
                <div class="col-dp-12 col-dm-10 col-dg-8 col-deg-8">
                        <div class="header">
									<div class="logo">
                                		<a href="/sixfit/"> 
                                			<img src="img/logo.png" alt="Logo" Title="SixFit - Página Inicial">
                                		</a>
                                	</div>
                                <ul class="topnav" id="myTopnav">                                   
                                    <span><li><a class="active" href="#home" >Menu</a></li></span>
                                    <li><a class="home" href="javascript:;" >Home</a></li>
                                    <li><a class="news" href="javascript:;" >O Que Fazemos</a></li>
                                    <li><a class="about" href="javascript:;" >Quem Somos</a></li>
                                    <li><a class="contact" href="javascript:;" >Contato</a></li>
                                    <li id="login"><button id="myBtn" class="botaologin">LOGIN</button></li>
									<li id="logout">
										<a href="logout">
											<button id="logout" class="botaologin">LOGOUT</button><a>
										</a>
									</li>
                                    <li><span id="emailUsuario"></span></li>
                                </ul>
                                <span style="cursor:pointer" onclick="openNav()"><img src="img/menu.png" alt="Logo" Title="SixFit - Página Inicial"></span>
                                <div id="mySidenav" class="sidenav">
								  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                                    <li><a href="javascript:;" click="scroll('home')" >Home</a></li>
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
								<h1 style="font-size:300%;"><span style="color:#E27D15">MONITORE</span> SEU PROGRESSO<h1>
								<p>NÃ³s sabemos que cada quilÃ´metro importa para vocÃª, por isso entregamos cada detalhe 
								â ritmo, distÃ¢ncia, rota e recordes pessoais â com muita precisÃ£o e ainda mais 
								controle sobre os dados que vocÃª deseja ver durante sua corrida.<br></p>
							</div>
						</div>
						
						<div class="mySlides fade">
						  <img src="img/slider2.jpg" style="width:100%">
						  <div class="text">
								<h1 style="font-size:300%;"><span style="color:#E27D15">CORRE</span> JUNTO<h1>
								<p>Nunca foi tÃ£o fÃ¡cil comparar e competir com seus amigos e corredores do mundo todo. 
								Tudo que vocÃª precisa fazer Ã© colocar as hashtags especÃ­ficas ao compartilhar 
								suas corridas nas redes sociais..<br></p>
							</div>
						</div>
							
						<a class="prev" >&#10094;</a>
  						<a class="next" >&#10095;</a>
						
						</div>
						<br>
						
						<div style="text-align:center">
						  <span class="dot"></span> 
						  <span class="dot"></span> 
						</div>
                </div>
            </div> 

           
            <div class="linha meio"><a name="oquefazemos"></a>
				<div class="col-dg-1 col-deg-1 esconde escondemeio"></div>
                <div class="col-dp-12 col-dm-12 col-dg-4 col-deg-4">
					<div id="news" class="meio-esquerdo" name="oquefazemos">
						<h4>O Que Fazemos</h4>
						<h1>SIXFIT</h1>
						<p>
							Ã amplamente reconhecido que praticar atividades fÃ­sicas e exercÃ­cios fÃ­sicos pode trazer grandes benefÃ­cios Ã  saÃºde. Entretanto, para se tirar o mÃ¡ximo destas prÃ¡ticas Ã© necessÃ¡rio que seja realizada uma avaliaÃ§Ã£o fÃ­sica prÃ©via, que permitirÃ¡ a prescriÃ§Ã£o do exercÃ­cio com maior seguranÃ§a.<br><br>

							O programa proposto pela Sixfit Ã© uma avaliaÃ§Ã£o fÃ­sica inicial que tem o objetivo de identificar o nÃ­vel de aptidÃ£o fÃ­sica atual do cliente, permitindo que os exercÃ­cios possam ser indicados de acordo com suas necessidades e seus objetivos. AtualizaÃ§Ãµes periÃ³dicas permitirÃ£o verificar as possÃ­veis alteraÃ§Ãµes da aptidÃ£o fÃ­sica, decorrentes do programa de exercÃ­cios fÃ­sicos.
						</p>
						<br>
						<div class="botao"><a href="cadastro.html" title="FaÃ§a agora o seu Cadastro!">CADASTRE-SE</a></div>
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
								<h1>PRÃTICA DE ESPORTES / 30 MINUTOS</h1>
								<p>
									Praticar alguma atividade fÃ­sica pelo menos trÃªs vezes por semana, em seu tempo livre, com duraÃ§Ã£o mÃ­nima de 30 minutos Ã© indicado para todas idades.
								</P>
								<h2 class="escondemeio"><a href="#" title="FaÃ§a o Login">Veja os mais indicados para vocÃª.</a></h2>
							</div>
						
							<div class="col-dg-3 col-dm-3 col-deg-3 esconde">
								<img src="img/1.png" alt="Logo" Title="SixFit - PÃ¡gina Inicial">
							</div>
						</div>	
						<div class="quadro">
							<div class="col-dp-2 col-dm-1 col-dg-2 col-deg-2">
								<div class="numero">02</div>					
							</div>
							<div class="col-dp-10 col-dm-8 col-dg-7 col-deg-7">
								<h1>ATIVIDADES FISICAS</h1>
								<p>
									Os benefÃ­cios da prÃ¡tica de esportes para sua saÃºde e bem-estar sÃ£o vÃ¡rios. Entre as mais conhecidas e esperadas sÃ£o o controle e diminuiÃ§Ã£o do peso.
								</P>
								<h2 class="escondemeio"><a href="#" title="FaÃ§a o Login">Veja os mais indicados para vocÃª.</a></h2>
							</div>
						
							<div class="col-dg-3 col-dm-3 col-deg-3 esconde">
							<img src="img/2.png" alt="Logo" Title="SixFit - PÃ¡gina Inicial">
							</div>
						</div>	
						<div class="quadro">
							<div class="col-dp-2 col-dm-1 col-dg-2 col-deg-2">
								<div class="numero">03</div>					
							</div>
							<div class="col-dp-10 col-dm-8 col-dg-7 col-deg-7">
								<h1>EXERCICÃOS AERÃBICOS</h1>
								<p>
									Indicamos as modalidades Caminhada, NataÃ§Ã£o, Ciclismo, PatinaÃ§Ã£o, DanÃ§a, Corrida e outros exercÃ­cios realizados em intensidade moderada, porÃ©m com a freqÃ¼Ãªncia cardÃ­aca acima do nÃ­vel mÃ­nimo, que seja de acordo com a capacidade de cada pessoa.
								</P>
								<h2 class="escondemeio"><a href="#" title="FaÃ§a o Login">Veja os mais indicados para vocÃª.</a></h2>
							</div>
						
							<div class="col-dg-3 col-dm-3 col-deg-3 esconde">
							<img src="img/3.png" alt="Logo" Title="SixFit - PÃ¡gina Inicial">
							</div>
						</div>	
						
					</div>
				
				</div>
				
				
				
				<div class="col-dg-1 esconde escondemeio"></div>
            </div>  
            
            <div id="about" class="linha meio2"><a name="quemsomos"></a>

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
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus fuga quos amet dolorem sapiente, laborum soluta sequi molestiae, ipsum suscipit obcaecati at illum earum, quibusdam adipisci deserunt voluptates harum commodi.
						<br><br>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut expedita vel possimus sunt tempore facere quas, adipisci officiis conseqibusdam quidem ullam, odio omnis repellendus est debitis. Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						<br><br>
						Beatae ipsum ex deleniti mouuntur dolorum animi dolor qulestiae nulla sequi molestias sit quia.
					</p>
				</div>
				
				<div class="col-dg-1 col-deg-1 esconde escondemeio"></div>
			
            </div>  
		<%@include  file="footer.html" %>
        </div> 
<%@include  file="login.html" %>
</body>
<%@include  file="scripts.html" %>
</html>





