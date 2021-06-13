<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vestite.UI.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="css/bulma.min.css"/>
    <link rel="stylesheet" href="css/material-design-iconic-font.css"/>
    <link rel="stylesheet" href="css/styles.css"/>
    <header>
        <nav class="navbar">
            <nav class="nav-menu" id="mySidenav">
                <form class="form-group " action="#">
                    <div class="form-group-container" style:"padding-top: 15px">
                        <span class="form-group-icon"><i class="zmdi zmdi-search"></i></span>
                        <asp:TextBox ID="txtBuscar" runat="server" type="text" class="form-group-input" placeholder="Buscar..."></asp:TextBox>
                     </div>
                </form>

                    <asp:HyperLink ID="hlVestiteMenu" runat="server" class="is-hidden-mobile brand is-uppercase has-text-weight-bold has-text-dark" href="Default.aspx">VESTITE</asp:HyperLink>
                    <ul class="nav-menu-ul">
                        <li class="nav-menu-item" id="men">
                            <asp:Label ID="lblHombreMenu" runat="server" class="nav-menu-link link-submenu active">
                                Hombre <i class="zmdi zmdi-chevron-down"></i>
                            </asp:Label>
                            <div class="container-sub-menu">
                                <ul class="sub-menu-ul">
                                    <li class="nav-menu-item ">
                                        <asp:Label ID="lblCasualSubMenuHombre" runat="server" class="nav-menu-link">
                                            <strong>Casual</strong>
                                            <i class="zmdi zmdi-chevron-down "></i>
                                        </asp:Label>
                                        <ul class="sub-menu-ul">
                                            <li class="nav-menu-item"><asp:HyperLink ID="hlHombreCasualChaquetas" runat="server" class="nav-menu-link" href="#">Chaquetas</asp:HyperLink></li>
                                            <li class="nav-menu-item"><asp:HyperLink ID="hlHombreCasualCamisas" runat="server" class="nav-menu-link" href="#">Camisas</asp:HyperLink></li>
                                            <li class="nav-menu-item"><asp:HyperLink ID="hlHombreCasualPantalones" runat="server" class="nav-menu-link" href="#">Pantalones</asp:HyperLink></li>
                                            <li class="nav-menu-item"><asp:HyperLink ID="hlHombreCasualRemeras" runat="server" class="nav-menu-link" href="#">Remeras</asp:HyperLink></li>
                                        </ul>
                                    </li>
                                </ul>
                                <ul class="sub-menu-ul">
                                    <li class="nav-menu-item">
                                      <asp:Label ID="lblFormalSubMenuHombre" runat="server" class="nav-menu-link">
                                          <strong>Formal</strong>
                                          <i class="zmdi zmdi-chevron-down "></i>
                                       </asp:Label>
                                       <ul class="sub-menu-ul">
                                           <li class="nav-menu-item"><asp:HyperLink ID="hlHombreFormalChaquetas" runat="server" class="nav-menu-link" href="#">Chaquetas</asp:HyperLink></li>
                                           <li class="nav-menu-item"><asp:HyperLink ID="hlHombreFormalCamisas" runat="server" class="nav-menu-link" href="#">Camisas</asp:HyperLink></li>
                                           <li class="nav-menu-item"><asp:HyperLink ID="hlHombreFormalTrajes" runat="server" class="nav-menu-link" href="#">Trajes</asp:HyperLink></li>
                                           <li class="nav-menu-item"><asp:HyperLink ID="hlHombreFormalPantalones" runat="server" class="nav-menu-link" href="#">Pantalones</asp:HyperLink></li>
                                       </ul>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-menu-item" id="women">
                             <asp:Label ID="lblMujerMenu" runat="server" class="nav-menu-link link-submenu active">
                                Mujer <i class="zmdi zmdi-chevron-down"></i>
                            </asp:Label>
                            <div class="container-sub-menu">
                                <ul class="sub-menu-ul">
                                    <li class="nav-menu-item ">
                                        <asp:Label ID="lblMujerCasual" runat="server" class="nav-menu-link">
                                            <strong>Casual</strong>
                                            <i class="zmdi zmdi-chevron-down "></i>
                                        </asp:Label>
                                        <ul class="sub-menu-ul">
                                            <li class="nav-menu-item"><asp:HyperLink ID="hlMujerCasualChaquetas" runat="server" class="nav-menu-link" href="#">Chaquetas</asp:HyperLink></li>
                                            <li class="nav-menu-item"><asp:HyperLink ID="hlMujerCasualCamisas" runat="server" class="nav-menu-link" href="#">Camisas</asp:HyperLink></li>
                                            <li class="nav-menu-item"><asp:HyperLink ID="hlMujerCasualPantalones" runat="server" class="nav-menu-link" href="#">Pantalones</asp:HyperLink></li>
                                            <li class="nav-menu-item"><asp:HyperLink ID="hlMujerCasualRemeras" runat="server" class="nav-menu-link" href="#">Remeras</asp:HyperLink></li>
                                        </ul>
                                    </li>
                                </ul>
                                <ul class="sub-menu-ul">
                                    <li class="nav-menu-item">
                                      <asp:Label ID="lblMujerFormal" runat="server" class="nav-menu-link">
                                          <strong>Formal</strong>
                                          <i class="zmdi zmdi-chevron-down "></i>
                                       </asp:Label>
                                       <ul class="sub-menu-ul">
                                           <li class="nav-menu-item"><asp:HyperLink ID="hlMujerFormalChaquetas" runat="server" class="nav-menu-link" href="#">Chaquetas</asp:HyperLink></li>
                                           <li class="nav-menu-item"><asp:HyperLink ID="hlMujerFormalCamisas" runat="server" class="nav-menu-link" href="#">Camisas</asp:HyperLink></li>
                                           <li class="nav-menu-item"><asp:HyperLink ID="hlMujerFormalTrajes" runat="server" class="nav-menu-link" href="#">Trajes</asp:HyperLink></li>
                                           <li class="nav-menu-item"><asp:HyperLink ID="hlMujerFormalPantalones" runat="server" class="nav-menu-link" href="#">Pantalones</asp:HyperLink></li>
                                       </ul>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-menu-item"><asp:HyperLink ID="hpCarrito" runat="server" class="nav-menu-link" href="Carrito.aspx">Carrito</asp:HyperLink></li>
                        <li class="nav-menu-item"><asp:HyperLink ID="hpIniciarSesion" runat="server" class="nav-menu-link" href="Login.aspx">Iniciar Sesión</asp:HyperLink></li>
                        <li class="nav-menu-item"><asp:HyperLink ID="hpBitacora" runat="server" class="nav-menu-link" href="Bitacora.aspx">Bitácora</asp:HyperLink></li>
                    </ul>
                </nav>
            </nav>
    </header>

    <div class="container">
        <div class="columns">
                <div class="column">
                    <h2 class="is-size-4" style="padding-top: 5px">Iniciar sesión</h2>
                        <p>
                            Usuario:
                            <asp:TextBox ID="txtUsuario" runat="server" type="text" placeholder="Email" class="form-control-field error"></asp:TextBox>
                        </p>
                        <p>
                            CONTRASEÑA:
                            <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" placeholder="Password" class="form-control-field"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Button ID="btnIngresar" runat="server" class="btn btn-default btn-primary" OnClick="btnIngresar_Click" Text="INGRESAR"  />
                        </p>
                </div>
            </div>
        </div>
</asp:Content>