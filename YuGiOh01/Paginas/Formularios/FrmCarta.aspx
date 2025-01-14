﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmCarta.aspx.cs" Inherits="YuGiOh01.Paginas.Formularios.FrmCarta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
    <title>Gerenciar Carta</title>
</head>
<body>
    <form runat="server">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <div class="navbar-brand ps-2">Gerenciar Carta</div>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNav">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse justify-content-end pe-1" id="myNav">
                <ul class="navbar-nav">


                    <li class="nav-item">
                        <a class="nav-link" runat="server" href="~/Home">Home</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Gerenciar
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" runat="server" href="~/Armadilha">Gerenciar Armadilhas</a></li>
                            <li><a class="dropdown-item" runat="server" href="~/Atributo">Gerenciar Atributo</a></li>
                            <li><a class="dropdown-item" runat="server" href="~/Icone">Gerenciar Icone</a></li>
                            <li><a class="dropdown-item" runat="server" href="~/Magias">Gerenciar Magias</a></li>
                            <li><a class="dropdown-item" runat="server" href="~/Monstro">Gerenciar Monstro</a></li>
                            <li><a class="dropdown-item" runat="server" href="~/MonstroEfeito">Gerenciar Monstro de Efeito</a></li>
                            <li><a class="dropdown-item" runat="server" href="~/MonstroPendulo">Gerenciar Monstro Pendulo</a></li>
                            <li><a class="dropdown-item" runat="server" href="~/TipoCarta">Gerenciar Tipo Carta</a></li>
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" runat="server" href="~/Carta">Gerenciar Carta</a></li>
                    <li class="nav-item">
                        <asp:Button Text="Sair" class="nav-link btn" runat="server" ID="btnSair" OnClick="btnSair_Click" />
                    </li>
                </ul>

            </div>
        </nav>

        <div class="container w-50 mt-4 mb-5">
            <div class="mt-4">
                <h1 class="text-center" id="h1Titulo" runat="server">Cadastrar Carta</h1>
            </div>
            <div class="mb-3">
                <label for="txtNomeCard" class="form-label" runat="server">Nome da Carta *</label>
                <asp:TextBox runat="server" class="form-control" ID="txtNomeCard"  />
            </div>

            <div class="mb-3">
                <label for="txtNivel" class="form-label" runat="server">Nível</label>
                <asp:TextBox runat="server" class="form-control" ID="txtNivel" TextMode="Number" />
            </div>

            <div class="mb-3">
                <label for="ddlAtributo" class="form-label" runat="server">Atributo</label>
                <asp:DropDownList runat="server" ID="ddlAtributo" class="form-select w-100 p-2"></asp:DropDownList>
            </div>

            <div class="mb-3">
                <label for="ddlTipoCarta" class="form-label" runat="server">Tipo da carta *</label>
                <asp:DropDownList runat="server" ID="ddlTipoCarta" class="form-select w-100 p-2" required OnSelectedIndexChanged="ddlAcoes_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            </div>

            <div class="mb-3" style="display: none" id="slArmadilha" runat="server">
                <label for="ddlArmadilha" class="form-label" runat="server">Armadilha*</label>
                <asp:DropDownList runat="server" ID="ddlArmadilha" class="form-select w-100 p-2" required></asp:DropDownList>
            </div>

            <div class="mb-3" style="display: none" id="slMagias" runat="server">
                <label for="ddlMagias" class="form-label" runat="server">Magias *</label>
                <asp:DropDownList runat="server" ID="ddlMagias" class="form-select w-100 p-2" required></asp:DropDownList>
            </div>

            <div class="mb-3" style="display: none" id="slMonstro" runat="server">
                <label for="ddlMonstro" class="form-label" runat="server">Monstro *</label>
                <asp:DropDownList runat="server" ID="ddlMonstro" class="form-select w-100 p-2" required OnSelectedIndexChanged="ddlAcoes_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            </div>

            <div class="mb-3" style="display: none" id="slMonstroEfeito" runat="server">
                <label for="ddlMonstroEfeito" class="form-label" runat="server">Monstro de Efeito *</label>
                <asp:DropDownList runat="server" ID="ddlMonstroEfeito" class="form-select w-100 p-2" required OnSelectedIndexChanged="ddlAcoes_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            </div>

            <div class="mb-3" style="display: none" id="slMonstroPendulo" runat="server">
                <label for="ddlMonstroPendulo" class="form-label" runat="server">Monstro Pêndulo *</label>
                <asp:DropDownList runat="server" ID="ddlMonstroPendulo" class="form-select w-100 p-2" required></asp:DropDownList>
            </div>

            <div class="mb-3" style="display: none" id="slIcone" runat="server">
                <label for="ddlIcone" class="form-label" runat="server">Icone</label>
                <asp:DropDownList runat="server" ID="ddlIcone" class="form-select w-100 p-2"></asp:DropDownList>
            </div>

            <div class="mb-3">
                <label for="txtNumeroCarta" class="form-label" runat="server">Número da carta *</label>
                <asp:TextBox runat="server" class="form-control" ID="txtNumeroCarta" />
            </div>



            <div class="mb-3">
                <label for="txtPontoAtaque" class="form-label" runat="server">Pontos de Ataque</label>
                <asp:TextBox runat="server" class="form-control" ID="txtPontoAtaque" TextMode="Number" />
            </div>

            <div class="mb-3">
                <label for="txtPontoDefesa" class="form-label" runat="server">Pontos de Defesa</label>
                <asp:TextBox runat="server" class="form-control" ID="txtPontoDefesa" TextMode="Number" />
            </div>

            <div class="mb-3">
                <label for="txtDescricao" class="form-label" runat="server">Descrição *</label>
                <asp:TextBox runat="server" class="form-control" ID="txtDescricao"  />
            </div>

            <div class="mb-3">
                <label for="txtImagemCarta" class="form-label" runat="server">Casdatrar uma imagem para carta</label>
                <asp:FileUpload ID="fuImagem" runat="server"  class="form-control-file"/>
            </div>

            <div class="mb-3">
                <asp:Button Text="Cadastrar" ID="btnCadastrar" runat="server" class="btn btn-primary w-100" OnClick="btnCadastrar_Click" />
            </div>



            <div class="mb-3 text-center">
                <label id="lblMensagem" runat="server"></label>
                <a href="~/Paginas/Formularios/FrmCarta.aspx" visible="false" id="btnNovaCarta" runat="server">Cadastrar novo carta</a>
            </div>
                <div class="container mt-4" runat="server">
        <h3 class="text-center mb-2">Cartas cadastradas</h3>
        <table class="table m-auto table-hover table-bordered text-center m-auto">
            <thead class="thead-dark">
                <tr>
                    <td><b>Código</b></td>
                    <td><b>Nome da Carta</b></td>
                    <td><b>Descrição</b></td>
                    <td><b>Tipo da Carta</b></td>
                    <td colspan="3"><b>Ações</b></td>
                </tr>
            </thead>
            <asp:ListView runat="server" ID="lvCarta">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("IdCarta") %></td>
                        <td><%#Eval("Nome") %></td>
                        <td><%#Eval("Descricao") %></td>
                        <td><%#Eval("TipoCartaCarta") %></td>
                        <td>
                            <asp:ImageButton ImageUrl="~/Assets/Images/search.png" runat="server"
                                ID="btnVisualizar"
                                ToolTip="Visualizar"
                                OnCommand="btnAcoes_Command"
                                CommandArgument='<%#Eval("IdCarta") %>'
                                CommandName="Visualizar"
                                Style="width: 20px" />
                        </td>
                        <td>
                            <asp:ImageButton ImageUrl="~/Assets/Images/update.png" runat="server"
                                ID="btnAlterar"
                                ToolTip="Alterar"
                                OnCommand="btnAcoes_Command"
                                CommandArgument='<%#Eval("IdCarta") %>'
                                CommandName="Alterar"
                                Style="width: 20px" />
                        </td>
                        <td>
                            <asp:ImageButton ImageUrl="~/Assets/Images/delete.png" runat="server"
                                ID="btnExcluir"
                                ToolTip="Excluir"
                                OnCommand="btnAcoes_Command"
                                CommandArgument='<%#Eval("IdCarta") %>'
                                CommandName="Excluir"
                                Style="width: 20px" />
                        </td>

                    </tr>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <b>Ainda não foi cadastrado nenhuma carta</b>
                </EmptyDataTemplate>
            </asp:ListView>
        </table>

    </div>

        </div>
        <asp:HiddenField ID="hfIdCarta" runat="server" />
        <asp:HiddenField ID="hfIdCartaTipoCarta" runat="server" />

    </form>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>

</body>
</html>
