<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Sixfit - Cadastro</title>
	<link rel="shortcut icon" href="img/favicon.ico" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="css/estilo.css" rel="stylesheet" type="text/css" />
	<link href="css/cadastro.css" rel="stylesheet" type="text/css" />
</head>

<body onload="main()">

	<div class="container-fluid">
		<a id="home"></a>
		
<!-- Nav -->
			<div class="linha">
                <div class="col-dm-1 col-dg-2 esconde"></div>
                
                <div class="col-dp-12 col-dm-10 col-dg-8">
                        <div class="header">
                            <div class="col-dp-4 col-dm-4 col-dg-4">
                                <div class="logo"><img src="img/logo.png" alt="Logo" Title="SixFit - Cadastro"></div>
                            </div> 
                            <div class="col-dp-8 col-dm-8 col-dg-8">
                               
                            </div>
                        </div>    
                </div>
                <div class="col-dm-1 col-dg-2 esconde"></div>
            </div>  
           
                    <div class="form-geral col-dg-12 col-dm-12 col-dp-12 background">
                            <div class="col-dg-2 col-deg-2 esconde escondemeio"></div>
                            <div class="col-dg-4 col-deg-4 col-dm-6 col-dp-12">
                                 <form action="cadastro" method="POST" class="form-horizontal">
                                     
                                                <div class="col-dg-12"> <p class="titulodocadastro">CADASTRO</p></div>
                                                 <!-- nome-->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="Nome Completo">Nome Completo: ${usuario.nome} cadastrado</label>
                                                         <div class="col-md-5">
                                                                 <input id="NomeCompleto" name="nome" placeholder=" Digite aqui o nome completo" class="inputg" required=""
                                                                         type="text">

                                                         </div>
                                                 </div>

                                                 <!-- email-->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="email">Email:</label>
                                                         <div class="col-md-5">
                                                                 <input id="email1" name="email" placeholder=" Digite aqui seu email" class="inputg" type="text">

                                                         </div>
                                                 </div>

                                                 <!-- genero -->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="genero">Gênero</label>
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
                                                         <label class="col-md-4 control-label" for="nascdate">Data de nascimento:</label>
                                                         <div class="col-md-4">
                                                                 <input id="nascdate" name="nascimento" placeholder=" DD/MM/AA" class="inputm" type="text">

                                                         </div>
                                                 </div>

                                                 <!-- peso-->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="peso">Peso:</label>
                                                         <div class="col-md-2">
                                                                 <input id="peso" name="peso" placeholder=" 000" class="inputp" type="text">
                                                                 <span>kg </span>

                                                         </div>
                                                 </div>

                                                 <!-- altura-->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="altura">Altura</label>
                                                         <div class="col-md-2">
                                                                 <input id="altura" name="altura" placeholder=" 0,00" class="inputp" type="text">
                                                                 <span>m (em metros)</span>
                                                         </div>
                                                 </div>

                                                 <!-- senha-->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="senhacadastrada">Senha:</label>
                                                         <div class="col-md-4">
                                                                 <input id="senhacadastrada" name="senha" placeholder=" Digite uma senha" class="inputg"
                                                                         type="password">

                                                         </div>
                                                 </div>

                                                 <!-- confirmar senha-->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="confirmarsenha">Confirme a senha:</label>
                                                         <div class="col-md-4">
                                                                 <input id="confirmarsenha" name="confirmarsenha" placeholder=" Digite sua senha novamente" class="inputg"
                                                                         type="password">
                                                         </div>
                                                 </div>
                                                 <!-- botao -->
                                                 <div class="form-group">
                                                         <label class="col-md-4 control-label" for="confirmacadastro"></label>
                                                         <div class="col-md-4">
                                                                 <button type="submit" id="confirmacadastro" name="confirmacadastro" class="btn" onclick="">Finalizar Cadastro</button>
                                                         </div>
                                                 </div>
                                 </form>
                            </div>  
                            
                            <div class="col-dg-4 col-deg-4 col-dm-6 esconde">
                                    <div class="imgCadastro">
                                        <img align="center" src="img/7.png" alt="Logo" Title="SixFit - Experimente uma sabor novo de viver">
                                        <p style="font-size: 17px; color:white; font-weight: bold;">O programa proposto pela <a href="index.html" title="Sixfit para você!">SIXFIT</a> é uma avaliação física inicial que tem o objetivo de identificar o nível de aptidão física atual do cliente, permitindo que os exercícios possam ser indicados de acordo com suas necessidades e seus objetivos.<br><br></p>
                                        
                                    </div>
                                    <div class="rodapeMsg">
                                        <p>Conheça nossas redes sociais.</p>
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



<!-- Rdapé -->
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
	<script>
		function enviarInformações(){
			var nome;
			var sexo;
			var peso;
			var altura;
			var vetRespostas = new Array();
			nome = document.getElementsById("NomeCompleto);
			sexo = document.getElementsById("NomeCompleto);
			peso = document.getElementsById("NomeCompleto);
			altura = document.getElementsById("NomeCompleto);
			vetRespostas[0] = nome;
			vetRespostas[1] = sexo;
			vetRespostas[2] = peso;
			vetRespostas[3] = altura;
			
			//armazenando na seção do navegador o vetor contendo as alternativas selecionadas pelo usuario
			sessionStorage.respostas = vetRespostas;
			window.open("resultados.html","_self");
		}
			
	</script>
</html>