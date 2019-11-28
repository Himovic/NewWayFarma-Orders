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
<title>New Way Farma - Inscription Délégués</title>
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
			<c:set var="error" value="${error}" />
			<c:set var="errorRegister" value="${errorRegister}" />
			<c:if test = "${error=='error'}">
				<div class="alert alert-primary" role="alert">
  					Vous devez saisir tous les champs du formulaire.
				</div>
			</c:if>
			<c:if test= "${errorRegister == 'fail'}">
				<div class="alert alert-danger" role="alert">
  					Une érreur non identifiée est apparue. Refaire a nouveau.
				</div>
			</c:if>
		</div><br /><br />
		<div class="row">
			<div class="col-md-6">
				<img src="index/STARTER.png" class="img-fluid">
			</div>
		<div class="col-md-6">
			<form:form method="POST" modelAttribute="customer" action="confirmRegister">
    			<h2 class="text-center">Inscription</h2>  
    			<div class="form-group">
             		<form:input path="name" id="name" type="text" class="form-control" placeholder="Votre nom complet"/>
             		<form:errors path="name" class="has-error"/>
        		</div>
        		<div class="form-group">
             		<form:input path="contactNumber" id="contactNumber" type="text" class="form-control" placeholder="Votre numéro de téléphone"/>
             		<form:errors path="contactNumber" class="has-error"/>
        		</div>
        		<div class="form-group">
             		<form:input path="companyName" id="companyName" type="text" class="form-control" placeholder="Nom de l'entreprise ou vous travaillez. Indiquez le mot clé (SEUL) si vous travaillez pas dans une entreprise" />
             		<form:errors path="companyName" class="has-error"/>
        		</div>
       			<div class="form-group">
             		<form:input path="address" id="address" type="text" class="form-control" placeholder="Adresse de l'entreprise" />
             		<form:errors path="address" class="has-error"/>
        		</div>
        		<div class="form-group">
             		<form:input path="type" id="type" type="text" class="form-control" placeholder="Votre fonction" />
             		<form:errors path="type" class="has-error"/>
        		</div>
        		<div class="form-group">
             		<form:input path="city" id="city" type="text" class="form-control" placeholder="Wilaya ou l'entreprise se situe" />
             		<form:errors path="city" class="has-error"/>
        		</div>
        		<div class="form-group">
             		<form:input path="email" id="email" type="email" class="form-control" placeholder="Votre email" />
             		<form:errors path="email" class="has-error"/>
        		</div>
        		<div class="form-group">
             		<form:input path="password" id="password" type="password" class="form-control" placeholder="Votre Mot de passe" />
             		<form:errors path="password" class="has-error"/>
        		</div>
        		<div class="form-group">
        			<input type="submit" class="btn btn-primary btn-block" value="Confirmer"/>
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