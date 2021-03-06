<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<div id="contact" class="linha rodape"><a name="contato"></a>
	<div class="linha">
		<div class="col-dg-1 col-deg-1 esconde escondemeio"></div>	
		<div class="col-dp-12 col-dm-8 col-dg-7 col-deg-7">
				<h4>Contato</h4>
				<form name="meuForm" method="post" id="formulario" action="disparaEmail">
					<div class="box"> 
						<label> 
							<span>Nome Completo:</span>
							<input type="text" class="input_text" name="nome" id="name" onclick="limpar('name')">
						</label>
						<label>
							<span>Email:</span>
							<input type="text" class="input_text" name="email" id="email" onclick="limpar('email')">
						 </label>
						<label>
							<span>Assunto:</span>
							<input type="text" class="input_text" name="assunto" id="subject" onclick="limpar('subject')">
						</label>
						<label>
							 <span>Mensagem</span>
							<textarea class="message" name="feedback" id="feedback" onclick="limpar('feedback')"></textarea><br>
							<div class="botao1" title="Faça agora o seu Cadastro!"
							onclick="validar()">Enviar</div>
					</label>           
					</div>
				</form>
		</div>
		<div class="col-dm-4 col-dg-3 col-deg-3 esconde">
			<div class="linha">
				<div class="col-dm-2 col-dg-1 col-deg-1 esconde"></div>
				
				<div class="col-dm-8 col-dg-10 col-deg-10 esconde">
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
				
				<div class="col-dm-2 col-dg-1 col-deg-1 esconde"></div>
			</div>
			
		</div>
		<div class="col-dg-1 col-deg-1 esconde escondemeio"></div>
	</div>
	<div class="linha borda">
		<div class="col-dm-2 col-dg-3 col-deg-3 esconde"></div>
		
		<div class="col-dp-12 col-dm-8 col-dg-6 col-deg-6">
			<div class="copyright">
				<p>Copyright © <a href="#home" title="Sixfit - Página Inicial"><span>SIXFIT</span></a>
				, Instituto Federal de Educação, Ciência e Tecnologia 2016</p>
			</div>
		</div>
		
		<div class="col-dm-2 col-dg-3 col-deg-3 esconde">
			<div class="iftm">
				<a href="http://www.iftm.edu.br/uberlandiacentro"><img src="img/iftm.png" title="Conheça mais sobre a nossa Universidade" alt="Imagem Logo" onclick="newPopup()"></a>
				</div>
			</div>
		</div>
	</div>