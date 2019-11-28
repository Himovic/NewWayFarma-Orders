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
<link rel="shortcut icon" type="image/x-icon" href="index/titleIcon.ico" />
<title>Plateforme New Way Farma</title>
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
			<p class="display-4">Plateforme New Way Farma</p>
			<p>Graçe a notre plateforme, vous pouvez commander vos produits via Internet.</p>
			<br /><br />
			<c:set var="errorLogin" value="${errorLogin}" />
			<c:set var="successRegister" value="${successRegister}" />
			<c:set var="errorUnkowen" value="${errorUnkowen}" />
			<c:set var="error" value="${error}" />
			<c:set var="errorBlank" value="${errorBlank}" />
			<c:set var="forgetPassword" value="${forgetPassword}" />
			<c:set var="logout" value="${logout}" />
			<c:if test= "${errorLogin == 'fail'}">
				<div class="alert alert-danger" role="alert">
  					Email ou mot de passe incorrect. Refaire a nouveau.
				</div>
			</c:if>
			<c:if test = "${successRegister=='success'}">
				<div class="alert alert-success" role="alert">
  					L'inscription a été éfféctué avec succées. Veuillez vous connecter pour utiliser
  					notre plateforme.
				</div>
			</c:if>
			<c:if test = "${error=='error'}">
				<div class="alert alert-primary" role="alert">
  					Vous devez saisir tous les champs du formulaire.
				</div>
			</c:if>
			<c:if test = "${errorUnkowen=='errorUnkowen'}">
				<div class="alert alert-primary" role="alert">
  					Une érreur non identifiée est apparue. Refaire a nouveau.
				</div>
			</c:if>
			<c:if test = "${errorBlank=='blank'}">
				<div class="alert alert-warning" role="alert">
  					Vous n'avez pas créer un compte. Créer un compte avant de pouvoir utiliser la
  					plateforme.
				</div>
			</c:if>
			<c:if test = "${forgetPassword=='forgetPassword'}">
				<div class="alert alert-primary" role="alert">
  					Consulter votre boite mail pour récupérer votre mot de passe.
				</div>
			</c:if>
			<c:if test = "${logout=='logout'}">
				<div class="alert alert-dark" role="alert">
  					Vous avez été déconnecter.
				</div>
			</c:if>
		</div><br /><br />
		<div class="row">
			<div class="col-md-6">
				<img src="index/STARTER.png" class="img-fluid">
			</div>
		<div class="col-md-6">
			<form:form action="login" modelAttribute="user" method="post">
        		<h2 class="text-center">Authentification</h2>       
        			<div class="form-group">
            			<form:input path="email" type="email" class="form-control" placeholder="Votre Email"/>
        				<form:errors path="email" class="has-error"/>
        			</div>
        			<div class="form-group">
            			<form:input path="password" type="password" class="form-control" placeholder="Votre Mot de passe"/>
        				<form:errors path="password" class="has-error"/>
        			</div>
        			<div class="form-group">
            			<input type="submit" class="btn btn-primary btn-block" value="Connecter"/>
        			</div>
        			<div class="clearfix">
            			<a href="/forget" class="pull-left">Mot de passe oublié ?</a>
            			<a href="/register" class="pull-right">Créer un compte</a>
        			</div>        
    		</form:form>
		</div>
		</div>
	</div>

	<script type="text/javascript" src="webjars/jquery/3.0.0/jquery.js"></script>
	<script type="text/javascript" src="webjars/popper.js/1.14.1/popper.js"></script>
	<script type="text/javascript" src="webjars/bootstrap/4.1.2/js/bootstrap.js"></script>
</body>
</html>