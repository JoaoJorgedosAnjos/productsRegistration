<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageProducts.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="productsRegistration.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Lista dos produtos</h2>
    <div>
        <asp:ListView runat="server" DataSourceID="DatabaseProducts" ID="ctl00" DataKeyNames="Id" InsertItemPosition="LastItem">
        <AlternatingItemTemplate><tr style="background-color: #FFFFFF; color: #284775;">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Nome") %>' runat="server" ID="NomeLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("Descrição") %>' runat="server" ID="DescriçãoLabel" /></td>
            </tr>
        </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999;">
                    <td>
                        <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                        <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                    </td>
                    <td>
                        <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Nome") %>' runat="server" ID="NomeTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Descrição") %>' runat="server" ID="DescriçãoTextBox" /></td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                        <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Nome") %>' runat="server" ID="NomeTextBox" /></td>
                    <td>
                        <asp:TextBox Text='<%# Bind("Descrição") %>' runat="server" ID="DescriçãoTextBox" /></td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF; color: #333333;">
                    <td>
                        <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                        <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                    </td>
                    <td>
                        <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Nome") %>' runat="server" ID="NomeLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Descrição") %>' runat="server" ID="DescriçãoLabel" /></td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                    <th runat="server"></th>
                                    <th runat="server">Id</th>
                                    <th runat="server">Nome</th>
                                    <th runat="server">Descrição</th>
                                </tr>
                                <tr runat="server" id="itemPlaceholder"></tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                            <asp:DataPager runat="server" ID="DataPager1">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True"></asp:NextPreviousPagerField>
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                    <td>
                        <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                        <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                    </td>
                    <td>
                        <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Nome") %>' runat="server" ID="NomeLabel" /></td>
                    <td>
                        <asp:Label Text='<%# Eval("Descrição") %>' runat="server" ID="DescriçãoLabel" /></td>
                </tr>
            </SelectedItemTemplate>
    </asp:ListView>
        <asp:SqlDataSource runat="server" ID="DatabaseProducts" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [List] WHERE [Id] = @Id" InsertCommand="INSERT INTO [List] ([Nome], [Descrição]) VALUES (@Nome, @Descrição)" SelectCommand="SELECT * FROM [List]" UpdateCommand="UPDATE [List] SET [Nome] = @Nome, [Descrição] = @Descrição WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nome" Type="String"></asp:Parameter>
                <asp:Parameter Name="Descri&#231;&#227;o" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nome" Type="String"></asp:Parameter>
                <asp:Parameter Name="Descri&#231;&#227;o" Type="String"></asp:Parameter>
                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        
        
        
       
      
    </div>
</asp:Content>
