<%@ Page Language="C#" AutoEventWireup="true" CodeFile="silme.aspx.cs" Inherits="silme" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 950px;
            height: 180px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" border=1>
            <tr>
                <td>
                    <img alt="" class="style2" src="evrenotomotiv.jpg" /></td>
            </tr>
            <tr>
                <td style="background-color: #0066FF">
                    <br />
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="~/App_Data/Otomobil.mdb" 
                        DeleteCommand="DELETE FROM [oto] WHERE [id] = ?" 
                        InsertCommand="INSERT INTO [oto] ([id], [otoadi], [otomodel], [otoyil], [km], [ozellikler], [resim]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
                        SelectCommand="SELECT * FROM [oto] WHERE ([id] = ?)" 
                        
                        
                        UpdateCommand="UPDATE [oto] SET [otoadi] = ?, [otomodel] = ?, [otoyil] = ?, [km] = ?, [ozellikler] = ?, [resim] = ? WHERE [id] = ?" 
                        ondeleted="AccessDataSource1_Deleted">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                            <asp:Parameter Name="otoadi" Type="String" />
                            <asp:Parameter Name="otomodel" Type="String" />
                            <asp:Parameter Name="otoyil" Type="String" />
                            <asp:Parameter Name="km" Type="String" />
                            <asp:Parameter Name="ozellikler" Type="String" />
                            <asp:Parameter Name="resim" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" 
                                Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="otoadi" Type="String" />
                            <asp:Parameter Name="otomodel" Type="String" />
                            <asp:Parameter Name="otoyil" Type="String" />
                            <asp:Parameter Name="km" Type="String" />
                            <asp:Parameter Name="ozellikler" Type="String" />
                            <asp:Parameter Name="resim" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:AccessDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" DataKeyNames="id" DataSourceID="AccessDataSource2" 
                        GridLines="Horizontal" onselectedindexchanged="GridView1_SelectedIndexChanged1">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" SelectText="Seç" />
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="otoadi" HeaderText="otoadi" 
                                SortExpression="otoadi" />
                            <asp:BoundField DataField="otomodel" HeaderText="otomodel" 
                                SortExpression="otomodel" />
                            <asp:BoundField DataField="otoyil" HeaderText="otoyil" 
                                SortExpression="otoyil" />
                            <asp:BoundField DataField="km" HeaderText="km" SortExpression="km" />
                            <asp:BoundField DataField="ozellikler" HeaderText="ozellikler" 
                                SortExpression="ozellikler" />
                            <asp:TemplateField HeaderText="resim" SortExpression="resim">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("resim") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="82px" 
                                        ImageUrl='<%# "resim/"+Eval("resim") %>' Width="263px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Anasayfa</asp:HyperLink>
                    <br />
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                        DataFile="~/App_Data/Otomobil.mdb" SelectCommand="SELECT * FROM [oto]">
                    </asp:AccessDataSource>
                    <asp:FormView ID="FormView1" runat="server" BackColor="White" 
                        BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
                        CellSpacing="1" DataKeyNames="id" DataSourceID="AccessDataSource1" 
                        DefaultMode="Edit" onitemdeleted="FormView1_ItemDeleted" 
                        onpageindexchanging="FormView1_PageIndexChanging">
                        <EditItemTemplate>
                            otoadi:
                            <asp:TextBox ID="otoadiTextBox" runat="server" Text='<%# Bind("otoadi") %>' />
                            <br />
                            otomodel:
                            <asp:TextBox ID="otomodelTextBox" runat="server" 
                                Text='<%# Bind("otomodel") %>' />
                            <br />
                            otoyil:
                            <asp:TextBox ID="otoyilTextBox" runat="server" Text='<%# Bind("otoyil") %>' />
                            <br />
                            km:
                            <asp:TextBox ID="kmTextBox" runat="server" Text='<%# Bind("km") %>' />
                            <br />
                            ozellikler:
                            <asp:TextBox ID="ozelliklerTextBox" runat="server" 
                                Text='<%# Bind("ozellikler") %>' />
                            <br />
                            resim:
                            <asp:TextBox ID="resimTextBox" runat="server" Text='<%# Bind("resim") %>' />
                            <br />
                            Silmek İstediğinizden Emin Misiniz?<br />&nbsp;<asp:LinkButton ID="UpdateButton" 
                                runat="server" CausesValidation="True" CommandName="Delete" Text="Sil" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" Text="İptal" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <InsertItemTemplate>
                            otoadi:
                            <asp:TextBox ID="otoadiTextBox" runat="server" Text='<%# Bind("otoadi") %>' />
                            <br />
                            otomodel:
                            <asp:TextBox ID="otomodelTextBox" runat="server" 
                                Text='<%# Bind("otomodel") %>' />
                            <br />
                            otoyil:
                            <asp:TextBox ID="otoyilTextBox" runat="server" Text='<%# Bind("otoyil") %>' />
                            <br />
                            km:
                            <asp:TextBox ID="kmTextBox" runat="server" Text='<%# Bind("km") %>' />
                            <br />
                            ozellikler:
                            <asp:TextBox ID="ozelliklerTextBox" runat="server" 
                                Text='<%# Bind("ozellikler") %>' />
                            <br />
                            resim:
                            <asp:TextBox ID="resimTextBox" runat="server" Text='<%# Bind("resim") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            id:
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            otoadi:
                            <asp:Label ID="otoadiLabel" runat="server" Text='<%# Bind("otoadi") %>' />
                            <br />
                            otomodel:
                            <asp:Label ID="otomodelLabel" runat="server" Text='<%# Bind("otomodel") %>' />
                            <br />
                            otoyil:
                            <asp:Label ID="otoyilLabel" runat="server" Text='<%# Bind("otoyil") %>' />
                            <br />
                            km:
                            <asp:Label ID="kmLabel" runat="server" Text='<%# Bind("km") %>' />
                            <br />
                            ozellikler:
                            <asp:Label ID="ozelliklerLabel" runat="server" 
                                Text='<%# Bind("ozellikler") %>' />
                            <br />
                            resim:
                            <asp:Label ID="resimLabel" runat="server" Text='<%# Bind("resim") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                                CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                                CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                                CommandName="New" Text="New" />
                        </ItemTemplate>
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    </asp:FormView>
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged" 
                        Visible="False"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
