<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PetCRWeb.Forms.Login" %>


<!DOCTYPE HTML>
<html>
<head>
<title>Transparent Login Form Responsive Widget Template | Home :: w3layouts</title>
<link href="../css/styles.css" rel="stylesheet" type="text/css" media="all"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Transparent Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<!--web-fonts-->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css' />
<!--web-fonts-->
</head>

<body>
<!--header-->
	<div class="header-w3l">
		<h1>Formulario de Ingreso</h1>
	</div>
<!--//header-->

<!--main-->
<div class="main-content-agile">
	<div class="sub-main-w3">	
		<form id="form1" runat="server">
			<asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
            <br>
			<asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
            <br>
			&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" />
        </form>
	</div>
</div>
<!--//main-->

<!--footer-->
<div class="footer">
	<p>&copy;  2020 Login Form. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
</div>
<!--//footer-->

</body>
</html>