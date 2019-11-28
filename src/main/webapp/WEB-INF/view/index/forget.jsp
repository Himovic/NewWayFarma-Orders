<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="webjars/bootstrap/4.1.2/css/bootstrap.css"/>
<title>Siha Africa Rooming</title>
<style type="text/css">
	.has-error {
		color: red;
		font-style: bold;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="ml-auto text-center">
			<p class="display-4">Rooming Siha Africa</p>
			<p>Graçe a notre plateforme, vous pouvez enregister, modifier et supprimer
			les visiteurs et les éxposants dans les hôtels de vos choix. Il vous suffit de créer un
			compte dans la plateforme et remplir les informations nécéssaires conçernant les 
			personnes qui vont visiter.</p>
			<br /><br />
			<c:set var="forgetPasswordError" value="${forgetPasswordError}" />
			<c:if test= "${forgetPasswordError == 'forgetPasswordError'}">
				<div class="alert alert-danger" role="alert">
  					Une érreur est apparue lors de l'envoie de l'email. Veuillez réessayer dans quelque minutes.
				</div>
			</c:if>
			<br /><br />
		<div class="row">
			<div class="col-md-6">
				<img src="index/logo.png" class="img-fluid">
			</div>
		<div class="col-md-6">
			<form action="getPassword" method="post">
        		<h2 class="text-center">Mot de passe oublié ?</h2>       
        			<div class="form-group">
            			<input name="email" type="email" class="form-control" placeholder="Email de l'entreprise ou de la clinique" required="required"/>
        			</div>
        			<div class="form-group">
            			<input type="submit" class="btn btn-primary btn-block" value="Récupérer"/>
        			</div>        
    		</form>
		</div>
		</div>
	</div>	
</div>

	<script type="text/javascript" src="webjars/jquery/3.0.0/jquery.js"></script>
	<script type="text/javascript" src="webjars/popper.js/1.14.1/popper.js"></script>
	<script type="text/javascript" src="webjars/bootstrap/4.1.2/js/bootstrap.js"></script>
</body>
</html>