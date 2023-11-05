<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="PROJETO_PRATICO2.Panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Panel</title>
    <style>

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        #form1 {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        
        h2 {
            font-size: 24px;
            margin-bottom: 15px;
            color: #333;
        }

        
        label {
            display: block;
            margin: 10px 0;
            font-weight: bold;
        }

        
        input[type="text"],
        input[type="password"],
        select {
            width: 90%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        
        input[type="button"],
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        #btnVoltar {
            background-color: #ccc;
            color: #333;
        }

        #lblMensagem {
            font-weight: bold;
            margin: 10px 0;
        }

        .validation-summary-errors {
            color: red;
            font-weight: bold;
            margin-top: 10px;
            
        }

        #ddlGenero {
            width: 30%;
        }

        

        

        

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel0" runat="server">
               
                <asp:Panel ID="Panel1" runat="server">
                    <h2>Informações pessoais</h2>
                    <asp:Label ID="lblNome" runat="server" Text="Nome*:"></asp:Label>
                    <asp:TextBox ID="txtNome" runat="server" CssClass="required"></asp:TextBox><br />
                    <asp:Label ID="lblSobrenome" runat="server" Text="Sobrenome*:"></asp:Label>
                    <asp:TextBox ID="txtSobrenome" runat="server" CssClass="required"></asp:TextBox><br />
                    Gênero: <asp:DropDownList ID="ddlGenero" runat="server">
                        <asp:ListItem Text="Selecione o gênero" Value="" />
                        <asp:ListItem Text="Masculino" Value="Masculino" />
                        <asp:ListItem Text="Feminino" Value="Feminino" />
                        <asp:ListItem Text="Outro" Value="Outro" />
                    </asp:DropDownList><br />
                    <asp:Label ID="lblCelular" runat="server" Text="Celular*: " ></asp:Label>
                    <asp:TextBox ID="txtCelular" runat="server" CssClass="required"></asp:TextBox><br />
                    <asp:Button ID="btnProximo1" runat="server" Text="Próximo" OnClick="btnProximo1_Click" class="form-button" />
                    <div id="errorMsg" style="color: red; font-size: 12px;"></div>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server">
                    <h2>Detalhes do endereço</h2>
                    <asp:Label ID="lblEndereco" runat="server" Text="Endereço*:"></asp:Label>
                    <asp:TextBox ID="txtEndereco" runat="server" CssClass="required"></asp:TextBox><br />
                    <asp:Label ID="lblCidade" runat="server" Text="Cidade*:"></asp:Label>
                    <asp:TextBox ID="txtCidade" runat="server" CssClass="required"></asp:TextBox><br />
                    <asp:Label ID="lblCEP" runat="server" Text="CEP*:"></asp:Label>
                    <asp:TextBox ID="txtCEP" runat="server" CssClass="required"></asp:TextBox><br />
                    <asp:Button ID="btnVoltar" runat="server" Text="Voltar" OnClick="btnVoltar_Click" class="form-button" />
                    <asp:Button ID="btnProximo2" runat="server" Text="Próximo" OnClick="btnProximo2_Click" />
                    <div id="errorMsg" style="color: red; font-size: 12px;"></div>
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server">
                    <h2>Área de Login</h2>
                    <asp:Label ID="lblUsuario" runat="server" Text="Usuário*:"></asp:Label>
                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="required"></asp:TextBox><br />
                    <asp:Label ID="lblSenha" runat="server" Text="Senha*:"></asp:Label>
                    <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" CssClass="required"></asp:TextBox><br />
                    <asp:Button ID="btnVoltar2" runat="server" Text="Voltar" OnClick="btnVoltar2_Click" class="form-button" />
                    <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" class="form-button" />
                    <div id="errorMsg" style="color: red; font-size: 12px;"></div><p />
                    <asp:Label ID="lblMensagem" runat="server" ForeColor="Green" Text=""></asp:Label><br />
                </asp:Panel>

            </asp:Panel>
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <script type="text/javascript">
                $(document).ready(function () {
                    
                    function checkRequiredFields() {
                        var isValid = true;

                        
                        $('.required').each(function () {
                            if ($(this).val() === "") {
                                isValid = false;
                                return false; 
                            }
                        });

                       
                        if (isValid) {
                            $('#<%= btnProximo1.ClientID %>').prop('disabled', false);
                            $('#errorMsg').text('');
                        } else {
                            $('#<%= btnProximo1.ClientID %>').prop('disabled', true);
                            $('#errorMsg').text('* Campo obrigatório.');
                        }
                    }

                  
                    $('.required').change(checkRequiredFields);

                    
                    checkRequiredFields();
                });
            </script>   
        </div>
    </form>
</body>
</html>
