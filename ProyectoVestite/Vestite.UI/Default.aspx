<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Vestite.UI._Default" %>

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
                            <a href="#" class="nav-menu-link link-submenu">Mujer <i class="zmdi zmdi-chevron-down"></i> </a>
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
                        <li class="nav-menu-item">
                        <li class="nav-menu-item"><a href="Carrito.aspx" class="nav-menu-link">Carrito</a></li>
                        <li class="nav-menu-item"><a href="Login.aspx" class="nav-menu-link">Iniciar Sesión</a></li>
                        <li class="nav-menu-item"><a href="Bitacora.aspx" class="nav-menu-link">Bitácora</a></li>
                    </ul>
                </nav>
            </nav>
        </header>

        <!-- Sección de fotografías -->
        <div class="container">
            <div class="columns is-multiline">
                <div class="column is-full-mobile">
                    <div class="columns is-centered is-mobile is-multiline">
                        <!-- 1 Sección de fotografías -->
                        <div class="column is-half column-full">
                            <div class="card">
                                <span class="price">$89.99</span>
                                <img src="img/item-1.png" alt="">
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                        Casual TEE $89.99 </h4>
                                    <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                        100%
                                        cotton.</p>
                                    <div class="card-buttons">
                                        <a href="#" class="btn btn--mini-rounded"><i
                                                class="zmdi zmdi-shopping-cart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="column column-full is-half">
                            <div class="card">
                                <span class="price">$47.50</span>
                                <img src="img/item-2.png" alt="">
                                <div class="card-info">
                                    <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                        Casual TEE $47.50 </h4>
                                    <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                        100%
                                        cotton.</p>
                                    <div class="card-buttons">
                                        <a href="#" class="btn btn--mini-rounded"><i
                                                class="zmdi zmdi-shopping-cart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    <div class="column is-full">
                        <div class="card">
                            <span class="price">$65.95</span>
                            
                                <img src="img/item-3.png" alt="">
                            <div class="card-info">
                                <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                    Casual TEE $65.95 </h4>
                                <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                    100%
                                    cotton.</p>
                                <div class="card-buttons">
                                    <a href="#" class="btn btn--mini-rounded"><i
                                            class="zmdi zmdi-shopping-cart"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Segunda sección de fotografías -->
            <div class="column is-half is-full-mobile">
                <div class="columns is-mobile is-multiline">
                    <div class="column is-full">
                        <div class="card">
                            <span class="price"><strike>$107</strike> $89.99</span>
                                <img src="img/item-4.png" alt="">
                            <div class="card-info">
                                <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                    Casual TEE $89.99 </h4>
                                <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                    100%
                                    cotton.</p>
                                <div class="card-buttons">
                                    <a href="#" class="btn btn--mini-rounded"><i
                                            class="zmdi zmdi-shopping-cart"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="column column-full is-half">
                        <div class="card">
                            <span class="price">$29.99</span>
                            <img src="img/item-5.png" alt="">
                            <div class="card-info">
                                <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                    Casual TEE $29.99 </h4>
                                <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                    100%
                                    cotton.</p>
                                <div class="card-buttons">
                                    <a href="#" class="btn btn--mini-rounded"><i
                                            class="zmdi zmdi-shopping-cart"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="column column-full is-half">
                        <div class="card">
                            <span class="price">$34.79</span>
                            <img src="img/item-6.png" alt="">
                            <div class="card-info">
                                <h4 class="has-text-black has-text-centered has-text-weight-bold"> Women's Burnt Orenge
                                    Casual TEE $34.79 </h4>
                                <p class="has-text-centered">Classic casual t-shirt for women on the move.
                                    100%
                                    cotton.</p>
                                <div class="card-buttons">
                                    <a href="#" class="btn btn--mini-rounded"><i
                                            class="zmdi zmdi-shopping-cart"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="js/main.js"></script>
</div>

</asp:Content>