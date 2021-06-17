<%@ Page Title="Bitácora" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BitacoraUI.aspx.cs" Inherits="Vestite.UI.BitacoraUI" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <link rel="stylesheet" href="css/bulma.min.css">
        <link rel="stylesheet" href="css/material-design-iconic-font.css">
        <link rel="stylesheet" href="css/styles.css">
        <!-- Barra de navegación -->
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
                            <li class="nav-menu-item"><asp:HyperLink ID="hpBitacora" runat="server" class="nav-menu-link" href="BitacoraUI.aspx">Bitácora</asp:HyperLink></li>
                            <li class="nav-menu-item"><asp:LinkButton ID="hpCerrarSesion" OnClick="hpCerrarSesion_OnClick" runat="server" class="nav-menu-link">Cerrar sesión</asp:LinkButton></li>

                        </ul>
                    </nav>
                </nav>
        </header>

        <div class="container">
            <asp:Label ID="Label1" runat="server" Text="BITACORA"  class="has-text-black has-text-centered has-text-weight-bold"></asp:Label>
            <asp:GridView ID="BitacoraView" runat="server" Height="207px" style="margin-top: 8px" Width="1087px"></asp:GridView>
        </div>
</div>
<script src="js/main.js"></script>
</asp:Content>
