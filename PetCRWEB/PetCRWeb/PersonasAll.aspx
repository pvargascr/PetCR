<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonasAll.aspx.cs" Inherits="PetCRWeb.Forms.PersonasAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <form runat="server">
    
                <asp:Button ID="btnMostrar" runat="server" Text="Mostrar Datos" OnClick="btnMostrar_Click"  />




     <asp:GridView ID="gridview" runat="server" Width="100%" Height="100%" AutoGenerateColumns="false">
         <Columns>
        
        
             <asp:BoundField  HeaderText="Nombre" DataField="nombre" />
             <asp:BoundField  HeaderText="Primer Apellido" DataField="primerApellido" />
             <asp:BoundField  HeaderText="Segundo Apellido" DataField="segundoApellido" />          
             <asp:BoundField  HeaderText="Salario" DataField="salario" />
        
    </Columns>

     </asp:GridView>
     </form>
</asp:Content>
