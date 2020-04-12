<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientesAll.aspx.cs" Inherits="PetCRWeb.ClientesAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">

    
                <asp:button ID="btnMostrar" runat="server" Text="Mostrar Datos" OnClick="btnMostrar_Click1" />




     <asp:GridView ID="gridview" runat="server" Width="100%" Height="100%" AutoGenerateColumns="false">
         <Columns>
        
        
             <asp:BoundField  HeaderText="Nombre" DataField="nombre" />
             <asp:BoundField  HeaderText="Primer Apellido" DataField="primerApellido" />
             <asp:BoundField  HeaderText="Segundo Apellido" DataField="segundoApellido" />
             <asp:BoundField  HeaderText="Correo" DataField="correo" />
             <asp:BoundField  HeaderText="Telefono" DataField="telefono" />
             <asp:BoundField  HeaderText="Domicilio" DataField="domicilio" />
        
    </Columns>

     </asp:GridView>

   </form>
        
</asp:Content>
