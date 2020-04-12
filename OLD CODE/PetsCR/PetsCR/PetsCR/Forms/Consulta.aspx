<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mascotas.aspx.cs" Inherits="PetsCR.Forms.Mascotas" MasterPageFile="~/Site.Master"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <link href="../css/style.css" rel="stylesheet" />

      <asp:Label ID="Label1" runat="server" Text="Id Consulta"></asp:Label>
    <asp:TextBox ID="txtidconsulta" runat="server"></asp:TextBox>
    <br/>
    <asp:Label ID="Label2" runat="server" Text="Id Cita"></asp:Label>
    <asp:TextBox ID="txtidcita" runat="server"></asp:TextBox>
    <br/>
    <asp:Label ID="Label3" runat="server" Text="Id Venta"></asp:Label>
    <asp:TextBox ID="txtidventa" runat="server"></asp:TextBox>
    <br/>
    <asp:Label ID="Label4" runat="server" Text="Id Empleado"></asp:Label>
    <asp:TextBox ID="txtidempleado" runat="server"></asp:TextBox>
    <br/>
    <asp:Label ID="Label5" runat="server" Text="Id Mascota"></asp:Label>
    <asp:TextBox ID="txtidmascota" runat="server"></asp:TextBox>

    <br/>
    <br/>
   
     <tr>
            <td  >
    <asp:Button  ID="btnAgregar" runat="server" Text="Agregar" />
                  </td>
        </tr>
    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
    <asp:Button ID="btnEditar" runat="server" Text="Editar" />
    <asp:Button ID="btnConsulta" runat="server" Text="Consultar" />


    <tr>
            <td colspan="5" >
                <asp:GridView ID="gridview" runat="server" Width="100%" Height="100%"></asp:GridView>

            </td>
        </tr>

    </asp:Content>

