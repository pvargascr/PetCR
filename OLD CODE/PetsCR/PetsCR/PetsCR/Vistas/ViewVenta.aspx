<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewVenta.aspx.cs" Inherits="PetsCR.Vistas.ViewVenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        GENERAR VENTA<br />
        <br />
        Seleccione a continuación su método de pago<br />
        <asp:RadioButtonList ID="RbTipo" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Débito</asp:ListItem>
            <asp:ListItem>Crédito</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        Identificación del cliente:&nbsp;
        <asp:TextBox ID="TbIdentificacion" runat="server" OnTextChanged="TbIdentificacion_TextChanged"></asp:TextBox>
        <br />
        <br />
        Costo bruto:&nbsp;
        <asp:TextBox ID="TbCbruto" runat="server" OnTextChanged="TbCbruto_TextChanged"></asp:TextBox>
        <br />
        <br />
        Costo neto (calculado):&nbsp;
        <asp:TextBox ID="TbCneto" runat="server" OnTextChanged="TbCneto_TextChanged"></asp:TextBox>
        <br />
        <br />
        ACCIONES:<br />
        <br />
        <asp:Button ID="BtConsultar" runat="server" OnClick="BtConsultar_Click" Text="CONSULTAR " />
        <asp:Button ID="BtAgregar" runat="server" OnClick="BtAgregar_Click" Text="AGREGAR" />
        <asp:Button ID="BtActualizar" runat="server" OnClick="BtActualizar_Click" Text="ACTUALIZAR" />
        <asp:Button ID="BtEliminar" runat="server" OnClick="BtEliminar_Click" Text="ELIMINAR" />
    </form>
</body>
</html>
