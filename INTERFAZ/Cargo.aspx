<%@ Page Title="" Language="C#" MasterPageFile="~/DEMO.Master" AutoEventWireup="true" CodeBehind="Cargo.aspx.cs" Inherits="INTERFAZ.Cargo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="panel panel-default">
        <div class="panel panel-heading">
            Nuevo Cargo
        </div>
        <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server">
        </telerik:RadAjaxLoadingPanel>
        <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" LoadingPanelID="LoadingPanel1">

        <div class="panel panel-body">
            <div class="col-md-6">
                <div class="form-group">
                    <label>
                        Nombre cargo
                    </label>
                    <telerik:RadTextBox runat="server" ID="txt_cargo" Width="75%"></telerik:RadTextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_cargo" ToolTip="Campo Requerido" ErrorMessage="Error"></asp:RequiredFieldValidator>

                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>
                        Descripcion
                    </label>
                    <telerik:RadTextBox runat="server" ID="txt_descripcion" Width="75%"></telerik:RadTextBox>
                </div>
            </div>

            <div class="col-md-6 col-md-offset-4">
                <telerik:RadButton runat="server" Text="Guardar"  AutoPostBack="true" ID="btn_guardar" OnClick="btn_guardar_Click"></telerik:RadButton>
            </div>
        </div>
        <div class="panel-heading">
            Lista de cargos
        </div>
        <div class="panel panel-body">
            <telerik:RadGrid runat="server" ID="grd_cargos" NoMasterRecordsText="No hay registros" OnDeleteCommand="grd_cargos_DeleteCommand" 
                OnNeedDataSource="grd_cargos_NeedDataSource">
                <MasterTableView DataKeyNames="id_cargo"  AutoGenerateColumns="false">
                    <Columns>
                        <telerik:GridBoundColumn DataField="id_cargo" Display="false" HeaderText="" UniqueName="id">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="nombre_cargo"   HeaderText="Nombre" UniqueName="nombre">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="descripcion"   HeaderText="Descripcion" UniqueName="descripcion">
                        </telerik:GridBoundColumn>
                        <telerik:GridButtonColumn ButtonType="PushButton" Text="Eliminar" CommandName="Delete">
                        </telerik:GridButtonColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
        </div>
            </telerik:RadAjaxPanel>
    </div>


</asp:Content>
