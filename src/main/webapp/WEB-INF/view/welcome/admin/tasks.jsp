<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="org.springframework.ui.ModelMap"%>
<%@page import="java.util.List"%>
<%@page import="com.webapp.nwforder.Models.Employee"%>
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
<title>Ajouter un employée</title>
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
          				<%
          					ModelMap map = new ModelMap();
          					List<Employee> listEmployee = (List<Employee>) map.getAttribute("listEmployee");
          				%>
                        <%if(listEmployee.size() == 0){%>
                        	<p class="display-3">Aucun employée éxiste pour organiser des tâches pour le moment.</p>
                        <%}else{ %>
                        	<div class="row">
                            	<div class="col-md-6">
                            		<table class="table table-striped">
                            		<thead>
                            			<tr>
                            				<th>Séléction</th>
                            				<th>Nom complet</th>
                            				<th>Fonction</th>
                            				<th>Numéro de téléphone</th>
                            				<th>Email</th>
                            			</tr>
                            		</thead>
                            		<tbody>
                            			<%for(int i=0;i<listEmployee.size();i++){ %>
                            				<tr>
                            					<td><input type="checkbox" class="form-control" value="<%= listEmployee.get(i).getId() %>" /></td>
                            					<td><%=listEmployee.get(i).getUserEmp().getName() %></td>
                            					<td><%=listEmployee.get(i).getFunction() %></td>
                            					<td><%=listEmployee.get(i).getUserEmp().getContactNumber()%></td>
                            					<td><%=listEmployee.get(i).getUserEmp().getEmail()%></td>
                            				</tr>
                            			<%} %>
                            		</tbody>
                            	</table>
                            	</div>
                            	<div class="col-md-6">
                            		<div class="form-group">
                            			<label for="title">Titre</label>
                            			<input type="text" class="form-control" id="title" />
                            		</div>
                            		<div class="form-group">
                            			<label for="title">Déscription</label>
                            			<textarea rows="5" cols="10" id="description"></textarea>
                            		</div>
                            		<button id="sendTask" class="btn btn-primary">Envoyer</button>
                            	</div>
                        	</div>
                        <%} %>
                    
                    <hr>
                    
                    <h6>Consultation des tâches</h6>
                    	<!-- TODO: Add taks methods & options according to admin -->
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