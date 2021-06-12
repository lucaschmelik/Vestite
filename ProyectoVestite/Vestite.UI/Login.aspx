<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vestite.UI.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="css/bulma.min.css"/>
    <link rel="stylesheet" href="css/material-design-iconic-font.css"/>
    <link rel="stylesheet" href="css/styles.css"/>
    <header>
        <nav class="navbar">
            <nav class="nav-menu" id="mySidenav">
                <form class="form-group " action="#">
                    <div class="form-group-container">
                        <span class="form-group-icon"><i class="zmdi zmdi-search"></i></span>
                        <input type="text" class="form-group-input" placeholder="Buscar...">
                     </div>
                </form>

                    <a class="is-hidden-mobile brand is-uppercase has-text-weight-bold has-text-dark" style="padding-top: 15px" href="Default.aspx">Vestite</a>
                    <ul class="nav-menu-ul">
                        <li class="nav-menu-item" id="men">
                            <a class="nav-menu-link link-submenu active" href="#">Hombre  
                                <i class="zmdi zmdi-chevron-down"></i></a>
                                <div class="container-sub-menu">
                                    <ul class="sub-menu-ul">
                                        <li class="nav-menu-item ">
                                            <a class="nav-menu-link" href="#">
                                                <strong>Casual</strong>
                                                <i class="zmdi zmdi-chevron-down "></i>
                                            </a>
                                            <ul class="sub-menu-ul">
                                                <li class="nav-menu-item"><a class="nav-menu-link" href="#">Chaquetas</a></li>
                                                <li class="nav-menu-item"><a class="nav-menu-link" href="#">Camisas Polo</a></li>
                                                <li class="nav-menu-item"><a class="nav-menu-link" href="#">Pantalones</a></li>
                                                <li class="nav-menu-item"><a class="nav-menu-link" href="#">Camisetas</a></li>
                                            </ul>
                                       </li>
                                    </ul>
                                    <ul class="sub-menu-ul">
                                        <li class="nav-menu-item">
                                            <a class="nav-menu-link" href="#">
                                                <strong>Formal</strong>
                                                <i class="zmdi zmdi-chevron-down "></i>
                                            </a>
                                            <ul class="sub-menu-ul">
                                                <li class="nav-menu-item"><a class="nav-menu-link" href="#">Chaquetas</a></li>
                                                <li class="nav-menu-item"><a class="nav-menu-link" href="#">Camisetas</a></li>
                                                <li class="nav-menu-item"><a class="nav-menu-link" href="#">Trajes</a></li>
                                                <li class="nav-menu-item"><a class="nav-menu-link" href="#">Pantalones</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                        </li>
                        <li class="nav-menu-item" id="women">
                            <a href="#" class="nav-menu-link link-submenu">Mujer  <i class="zmdi zmdi-chevron-down"></i> </a>
                            <div class="container-sub-menu"> 

                                <ul class="sub-menu-ul">
                                    <li class="nav-menu-item ">
                                        <a class="nav-menu-link" href="#">
                                            <strong>Casual</strong>
                                            <i class="zmdi zmdi-chevron-down "></i>
                                        </a>
                                        <ul class="sub-menu-ul">
                                            <li class="nav-menu-item"><a class="nav-menu-link" href="#">Chaquetas</a></li>
                                            <li class="nav-menu-item"><a class="nav-menu-link" href="#">Camisas Polo</a>
                                            </li>
                                            <li class="nav-menu-item"><a class="nav-menu-link" href="#">Pantalones</a></li>
                                            <li class="nav-menu-item"><a class="nav-menu-link" href="#">Camisetas</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <ul class="sub-menu-ul">
                                    <li class="nav-menu-item"><a class="nav-menu-link" href="#">
                                            <strong>Formal</strong>
                                            <i class="zmdi zmdi-chevron-down "></i>
                                        </a>
                                        <ul class="sub-menu-ul">
                                            <li class="nav-menu-item"><a class="nav-menu-link" href="#">Chaquetas</a></li>
                                            <li class="nav-menu-item"><a class="nav-menu-link" href="#">Camisetas</a></li>
                                            <li class="nav-menu-item"><a class="nav-menu-link" href="#">Trajes</a></li>
                                            <li class="nav-menu-item"><a class="nav-menu-link" href="#">Pantalones</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div> 
                        </li>
                        <li class="nav-menu-item"><a href="Carrito.aspx" class="nav-menu-link">Carrito</a></li>
                        <li class="nav-menu-item"><a href="Login.aspx" class="nav-menu-link">Iniciar Sesión</a></li>
                        <li class="nav-menu-item"><a href="Bitacora.aspx" class="nav-menu-link">Bitácora</a></li>
                    </ul>
                </nav>
            </nav>
    </header>

    <div class="container">
        <div class="columns">
                <div class="column">
                    <h2 class="is-size-4">Iniciar seción</h2>
                        <p>
                            Usuario:
                            <asp:TextBox ID="txtUsuario" runat="server" type="text" placeholder="Email" class="form-control-field error"></asp:TextBox>
                        </p>
                        <p>
                            CONTRASEÑA:
                            <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" placeholder="Password" class="form-control-field"></asp:TextBox>
                        </p>
                        <p style="margin-left: 80px">
                            <asp:Button ID="Button1" runat="server" OnClick="btnIngresar_Click" Text="INGRESAR" />
                        </p>
                        <!--<div class="column">
                            <h2 class="is-size-4">Registro</h2>
                            <p>
                                Usuario:
                                <asp:TextBox ID="txtUsuarioRegister" runat="server" type="email" placeholder="Email" class="form-control-field error"></asp:TextBox>
                            </p>
                            <p>
                                Contraseña:
                                <asp:TextBox ID="txtContraseñaRegister" runat="server" TextMode="Password" placeholder="Password" class="form-control-field"></asp:TextBox>
                            </p>
                            <p>
                                Confirmar Contraseña:
                                <asp:TextBox ID="txtConfirmarContraseña" runat="server" TextMode="Password" placeholder="Password" class="form-control-field"></asp:TextBox>
                            </p>
                            <p style="margin-left: 80px">
                                <asp:Button ID="Button2" runat="server" OnClick="btnIngresar_Click" Text="INGRESAR" />
                            </p>
                        </div>-->
                </div>
            </div>
        </div>
</asp:Content>
