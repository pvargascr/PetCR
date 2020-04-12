<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCitas.aspx.cs" Inherits="PetsCR.Vistas.ViewCitas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            FORMULARIO DE CITAS</p>
        <p>
            Usuario actual:
        </p>
        <p>
            Citas programadas:</p>
        <p id="GridCitas">
            <asp:GridView ID="GridCitas" runat="server" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="GridCitas_PageIndexChanging" PageSize="5" OnRowEditing="GridCitas_RowEditing">
                <Columns>
                    <asp:TemplateField HeaderText="Código de cita">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("id_cita") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("id_cita") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha de la cita">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("fecha") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("fecha") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hora de la cita">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("hora") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("hora") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Identificación del cliente">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Id_cliente") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Id_cliente") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Actualizar" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" Text="Borrar" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </p>
        <p>
            Agregar una nueva cita</p>
        <p>
            Fecha de la cita:
            <asp:TextBox ID="TbFecha" runat="server"></asp:TextBox>
        </p>
        <p>
            Hora de presentación:
            <asp:TextBox ID="TbHora" runat="server"></asp:TextBox>
        </p>
        <p>
            Identificación del cliente:
            <asp:TextBox ID="TbIdentificacion" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="BotonAgregar" runat="server" Text="AGREGAR" />
    </form>
</body>
</html>
