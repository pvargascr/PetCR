<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mascotas.aspx.cs" Inherits="PetsCR.Forms.Mascotas" MasterPageFile="~/Site.Master"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
                   
    <asp:Label ID="Label1" runat="server" Text="Id Empleado"></asp:Label>
    <asp:TextBox ID="txtxidempleado" runat="server"></asp:TextBox>
    <br/>
    <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
    <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox>
    <br/>
    <asp:Label ID="Label3" runat="server" Text="Primer Apellido"></asp:Label>
    <asp:TextBox ID="txtapellido1" runat="server"></asp:TextBox>
    <br/>
    <asp:Label ID="Label4" runat="server" Text="Segundo Apellido"></asp:Label>
    <asp:TextBox ID="txtapellido2" runat="server"></asp:TextBox>
    <br/>
    <asp:Label ID="Label5" runat="server" Text="Salario"></asp:Label>
    <asp:TextBox ID="txtsalario" runat="server"></asp:TextBox>

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

