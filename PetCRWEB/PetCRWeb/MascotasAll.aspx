<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MascotasAll.aspx.cs" Inherits="PetCRWeb.Forms.MascotasAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
   
                <asp:Button ID="btnMostrar" runat="server" Text="Mostrar Datos" OnClick="btnMostrar_Click"/>




     <asp:GridView ID="gridview" runat="server" Width="100%" Height="100%" AutoGenerateColumns="false">
         <Columns>
        
        
             <asp:BoundField  HeaderText="Nombre" DataField="nombre" />
             <asp:BoundField  HeaderText="Raza" DataField="raza" />
             <asp:BoundField  HeaderText="Edad" DataField="edad" />
           
        
    </Columns>

     </asp:GridView>

   
         </form>

</asp:Content>
