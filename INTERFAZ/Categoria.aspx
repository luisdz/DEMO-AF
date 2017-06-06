<%@ Page Title="" Language="C#" MasterPageFile="~/DEMO.Master" AutoEventWireup="true" CodeBehind="Categoria.aspx.cs" Inherits="INTERFAZ.Categoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="panel panel-default">
        <div class="panel panel-heading">
            Nueva Categoria
        </div>
        <div class="panel panel-body">
            <div class="col-md-6">
                <div class="form-group">
                    <label>
                        Codigo
                    </label>
                    <telerik:RadTextBox runat="server" ID="txt_cargo" Width="75%"></telerik:RadTextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_cargo" ToolTip="Campo Requerido" ErrorMessage="Error"></asp:RequiredFieldValidator>

                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>
                        Nombre Categoria
                    </label>
                    <telerik:RadTextBox runat="server" ID="txt_descripcion" Width="75%"></telerik:RadTextBox>
                </div>
            </div>

            <div class="col-md-6 col-md-offset-4">
                <telerik:RadButton runat="server" Text="Guardar" ID="btn_guardar" OnClick="btn_guardar_Click"></telerik:RadButton>
            </div>
        </div>
    </div>
</asp:Content>
