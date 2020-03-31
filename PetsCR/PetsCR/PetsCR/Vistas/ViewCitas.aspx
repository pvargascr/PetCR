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
        <p>
            <asp:GridView ID="GridDetallesCita" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="210px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="905px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField HeaderText="Código de la cita" />
                    <asp:BoundField HeaderText="Fecha" />
                    <asp:BoundField HeaderText="Hora" />
                    <asp:BoundField HeaderText="Identificación del cliente" />
                    <asp:CommandField ButtonType="Button" CancelText="Cancelar" DeleteText="Borrar" EditText="Actualizar" HeaderText="Acciones" ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </p>
        <p>
            Agregar una nueva cita</p>
        <p>
            Fecha de la cita:
            <asp:TextBox ID="TbFecha" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            Hora de presentación:
            <asp:TextBox ID="TbHora" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        </p>
        <p>
            Identificación del cliente:
            <asp:TextBox ID="TbIdentificacion" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        </p>
        <asp:Button ID="BotonAgregar" runat="server" OnClick="Button1_Click" Text="AGREGAR" />
    </form>
</body>
</html>
