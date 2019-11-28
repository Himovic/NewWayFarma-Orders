<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	.has-error {
		color: red;
		font-style: bold;
	}
</style>
<meta charset="UTF-8">
<title>Information Personnelles</title>
</head>
<body>
	<div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
        <div class="app-header header-shadow">
            <div class="app-header__logo">
                <div class="logo-src"></div>
                <div class="header__pane ml-auto">
                    <div>
                        <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="app-header__mobile-menu">
                <div>
                    <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                </div>
            </div>
            <div class="app-header__menu">
                <span>
                    <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                        <span class="btn-icon-wrapper">
                            <i class="fa fa-ellipsis-v fa-w-6"></i>
                        </span>
                    </button>
                </span>
            </div>    <div class="app-header__content">
                <div class="app-header-right">
                    <div class="header-btn-lg pr-0">
                        <div class="widget-content p-0">
                            <div class="widget-content-wrapper">
                                <div class="widget-content-left">
                                    <div class="btn-group">
                                        <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="p-0 btn">
                                            <img width="42" class="rounded-circle" src="assets/images/avatars/1.jpg" alt="">
                                            <i class="fa fa-angle-down ml-2 opacity-8"></i>
                                        </a>
                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">
                                            <a href="/account" type="button" class="dropdown-item">Compte</a>
                                            <a href="/setting" type="button" class="dropdown-item">Paramétres</a>
                                            <h6 tabindex="-1" class="dropdown-header">Contact</h6>
                                            <a href="/messages" type="button" class="dropdown-item">Méssages</a>
                                            <div tabindex="-1" class="dropdown-divider"></div>
                                            <a href="/logout" type="button" class="dropdown-item">Se déconnecter</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget-content-left  ml-3 header-user-info">
                                    <div class="widget-heading">
                                        Benmansour Abdou
                                    </div>
                                    <div class="widget-subheading">
                                        CEO
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>        </div>
            </div>
        </div>        
       
        <div class="app-main">
                <div class="app-sidebar sidebar-shadow">
                    <div class="app-header__logo">
                        <div class="logo-src"></div>
                        <div class="header__pane ml-auto">
                            <div>
                                <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                                    <span class="hamburger-box">
                                        <span class="hamburger-inner"></span>
                                    </span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="app-header__mobile-menu">
                        <div>
                            <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                    <div class="app-header__menu">
                        <span>
                            <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                                <span class="btn-icon-wrapper">
                                    <i class="fa fa-ellipsis-v fa-w-6"></i>
                                </span>
                            </button>
                        </span>
                    </div>    <div class="scrollbar-sidebar">
                        <div class="app-sidebar__inner">
                            <ul class="vertical-nav-menu">
                                <li class="app-sidebar__heading">Dashboard</li>
                                <li>
                                    <a href="index.html" class="mm-active">
                                        <i class="metismenu-icon pe-7s-rocket"></i>
                                        Accueil
                                    </a>
                                </li>
                                <li class="app-sidebar__heading">Gestion des employés</li>
                                <li>
                                    <a href="#">
                                        <i class="metismenu-icon pe-7s-diamond"></i>
                                        Liste des employés
                                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="metismenu-icon pe-7s-car"></i>
                                        Ajouter un employés
                                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="tables-regular.html">
                                        <i class="metismenu-icon pe-7s-display2"></i>
                                        Organisation des tâches
                                    </a>
                                </li>
                                <li class="app-sidebar__heading">Gestion des commandes</li>
                                <li>
                                    <a href="dashboard-boxes.html">
                                        <i class="metismenu-icon pe-7s-display2"></i>
                                        Détails des commandes
                                    </a>
                                </li>
                                <li class="app-sidebar__heading">Gestion des produits</li>
                                <li>
                                    <a href="forms-controls.html">
                                        <i class="metismenu-icon pe-7s-mouse">
                                        </i>Nouveau produit
                                    </a>
                                </li>
                                <li>
                                    <a href="forms-layouts.html">
                                        <i class="metismenu-icon pe-7s-eyedropper">
                                        </i>Liste des produits
                                    </a>
                                </li>
                                <li>
                                    <a href="forms-validation.html">
                                        <i class="metismenu-icon pe-7s-pendrive">
                                        </i>Consultation du stock
                                    </a>
                                </li>
                                <li class="app-sidebar__heading">Gestion financiére</li>
                                <li>
                                    <a href="charts-chartjs.html">
                                        <i class="metismenu-icon pe-7s-graph2">
                                        </i>Dédouanement
                                    </a>
                                </li>
                                <li>
                                    <a href="charts-chartjs.html">
                                        <i class="metismenu-icon pe-7s-graph2">
                                        </i>Emballage
                                    </a>
                                </li>
                                <li>
                                    <a href="charts-chartjs.html">
                                        <i class="metismenu-icon pe-7s-graph2">
                                        </i>Commandes
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>    
                <div class="app-main__outer">
                    <div class="app-main__inner">
                        <div class="app-page-title">
                            <div class="page-title-wrapper">
                                <div class="page-title-heading">
                                    <div class="page-title-icon">
                                        <i class="pe-7s-car icon-gradient bg-mean-fruit">
                                        </i>
                                    </div>
                                    <div>New Way Farma Dashboard
                                        <div class="page-title-subheading">Vous pouvez changer vos informations personnelles et consulter les employés en ligne.
                                        </div>
                                    </div>
                                </div>   
                            </div>
                        </div>  
                        <br /><br />
                        	
                        	<div class="ml-auto text-center">
                        		<c:set var="errorBlank" value="${errorBlank}" />
                        		<c:set var="errorUnknowen" value="${errorUnknowen}" />
                        		<c:set var="updateSuccess" value="${updateSuccess}" />	
                        	</div>
                        	
                        	<c:if test= "${errorBlank == 'errorBlank'}">
								<div class="alert alert-danger" role="alert">
  										Vous devez remplir tous les champs.
								</div>
							</c:if>
							
							<c:if test= "${errorUnknowen == 'errorUnknowen'}">
								<div class="alert alert-danger" role="alert">
  									Une érreur non identifiée est apparue. Refaire a nouveau.
								</div>
							</c:if>
                        	<c:if test= "${updateSuccess == 'updateSuccess'}">
								<div class="alert alert-danger" role="alert">
  									<script>
  									var toast = new iqwerty.toast.Toast();
  									toast.setText('Les modifications ont été apporter avec succées.')
  									.setDuration(5000)
  									.show();
  									</script>
								</div>
							</c:if>
                        <br /><br />          
                        <div class="row">
                            
                            <form:form method="POST" modelAttribute="employee" action="/confirmAccount">
                                <form:input path="id" type="hidden" name="id" id="id"/>
                                <div class="row">
                                	<div class="col-md-6 col-xl-4">
                                    	<div class="form-group">
                                        	<label for="name">Nom</label>
                                        	<form:input path="name" type="text" id="name" name="name"/>
                                    		<form:errors path="name" class="has-error"/>
                                    	</div>
                                    	<div class="form-group">
                                        	<label for="email">Email</label>
                                        	<form:input path="email" type="email" id="email" name="email"/>
                                    		<form:errors path="email" class="has-error"/>
                                    	</div>
                                	</div>
                                	<div class="col-md-6 col-xl-4">
                                    	<div class="form-group">
                                        	<label for="phone">Numéro de téléphone</label>
                                        	<form:input path="contactNumber" type="text" id="phone" name="phone"/>
                                    		<form:errors path="contactNumber" class="has-error"/>
                                    	</div>
                                    	<div class="form-group">
                                        	<label for="function">Fonction</label>
                                        	<form:input path="function" type="text" id="function" name="function"/>
                                    		<form:errors path="function" class="has-error"/>
                                    	</div>
                                	</div>
                                	<div class="ml-auto text-center">
                                		<input type="submit" value="Confirmer" class="btn btn-primary" /> 
                                	</div>
                                </div>
                            </form:form>
                        </div>
                    </div>  
                </div>
                <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
        </div>
    </div>
    <script type="text/javascript" src="webjars/jquery/3.0.0/jquery.js"></script>
	<script type="text/javascript" src="webjars/popper.js/1.14.1/popper.js"></script>
	<script type="text/javascript" src="webjars/bootstrap/4.1.2/js/bootstrap.js"></script>
    <script type="text/javascript" src="welcome/assets/scripts/main.js"></script>
    <script type="text/javascript" src="welcome/assets/scripts/toast.min.js"></script>
    <script type="text/javascript" src="welcome/assets/scripts/toast.mod.js"></script>
</body>
</html>