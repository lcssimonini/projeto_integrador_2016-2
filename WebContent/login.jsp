<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">X</span>
      <h2>Login </h2>
    </div>
    <div class="modal-body">
   
   	<div class="form-group">
	  <label class="col-md-4 control-label" for="botaologin"></label>
	  <div class="col-md-4">
	  <br>
	  	<form action="login" method="POST">
	  	 	<label class="col-md-4 control-label" for="email">Email:</label>  
	  		<input id="email2" name="email" type="email" placeholder="Digite o email" class="form-control input-md" required>
	  		<label class="col-md-4 control-label senha" for="senhalogin">Senha:</label>
	    	<input id="senha" name="senha" type="password" placeholder="Digite a senha" class="form-control input-md" required>
	    	<br>
	    	<br>
	    	<input type="submit" id="botaologin" name="botaologin" class="btn btn-primary botao2" value="CONFIRMAR LOGIN"></input>
	    	<p>Ainda não possui cadastro? <a href="cadastro.jsp" title="Façaa seu Cadastro!">Cadastre-se.</p>
	  	</form>
	  </div>
	</div>
    </div>
  </div>
</div>