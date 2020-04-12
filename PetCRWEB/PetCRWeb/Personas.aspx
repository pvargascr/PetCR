<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Personas.aspx.cs" Inherits="PetCRWeb.Forms.Personas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">

    <form runat="server" class="well form-horizontal" action=" " method="post"  id="contact_form">
<fieldset>

<!-- Form Name -->
<legend><center><h2><b>Busqueda y Registro de Empleados</b></h2></center></legend><br>
<!-- Text input-->

<div class="form-group">
  <asp:Label ID="lblid" runat="server" text="Cédula" CssClass="col-md-4 control-label"></asp:Label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <asp:TextBox ID="txtid" runat="server" placeholder="Cédula" CssClass="form-control"></asp:TextBox>
    </div>
  </div>
</div>


<!-- Text input-->

<div class="form-group">
  <asp:Label ID="lblnombre" runat="server" text="Nombre" CssClass="col-md-4 control-label"></asp:Label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre" CssClass="form-control"></asp:TextBox>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <asp:Label ID="lblapellido1" runat="server" text="Primer Apellido" CssClass="col-md-4 control-label"></asp:Label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
 <asp:TextBox ID="txtApellido1" runat="server" placeholder="Primer Apellido" CssClass="form-control"></asp:TextBox>
    </div>
  </div>
</div>

    <!-- Text input-->

<div class="form-group">
  <asp:Label ID="lblapellido2" runat="server" text="Segundo Apellido" CssClass="col-md-4 control-label"></asp:Label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
 <asp:TextBox ID="txtapellido2" runat="server" placeholder="Segundo Apellido" CssClass="form-control"></asp:TextBox>
    </div>
  </div>
</div>

  
   <!-- Text input-->

<div class="form-group">
  <asp:Label ID="lbltelefono" runat="server" text="Salario" CssClass="col-md-4 control-label"></asp:Label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
 <asp:TextBox ID="txtsalario" runat="server" placeholder="$" CssClass="form-control"></asp:TextBox>
    </div>
  </div>
</div>


<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
  <asp:button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-warning"></asp:button>
  </div>
</div>

</fieldset>
</form>
</div>
    </div><!-- /.container -->
</asp:Content>
