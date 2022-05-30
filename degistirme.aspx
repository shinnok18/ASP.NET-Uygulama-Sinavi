<%@ Page Language="C#" AutoEventWireup="true" CodeFile="degistirme.aspx.cs" Inherits="degistirme" %>

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
<body style="background-color: #FF9900">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" border=1>
            <tr>
                <td>
                    <img alt="" class="style2" src="evrenotomotiv.jpg" /></td>
            </tr>
            <tr>
                <td style="background-color: #FF0000">
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="~/App_Data/Otomobil.mdb" SelectCommand="SELECT * FROM [oto]">
                    </asp:AccessDataSource>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" DataKeyNames="id" DataSourceID="AccessDataSource1" 
                        GridLines="Vertical" onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField SelectText="Seç" ShowSelectButton="True" />
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
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="99px" 
                                        ImageUrl='<%# "resim/"+Eval("resim") %>' Width="266px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    <br />
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                        DataFile="~/App_Data/Otomobil.mdb" 
                        DeleteCommand="DELETE FROM [oto] WHERE [id] = ?" 
                        InsertCommand="INSERT INTO [oto] ([id], [otoadi], [otomodel], [otoyil], [km], [ozellikler], [resim]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
                        SelectCommand="SELECT * FROM [oto] WHERE ([id] = ?)" 
                        
                        UpdateCommand="UPDATE [oto] SET [otoadi] = ?, [otomodel] = ?, [otoyil] = ?, [km] = ?, [ozellikler] = ?, [resim] = ? WHERE [id] = ?">
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
                    <br />
                    <asp:FormView ID="FormView1" runat="server" BackColor="White" 
                        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        DataKeyNames="id" DataSourceID="AccessDataSource2" DefaultMode="Edit" 
                        GridLines="Vertical" onitemdeleted="FormView1_ItemDeleted" 
                        onitemupdated="FormView1_ItemUpdated" 
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
                            resim:&nbsp;<asp:TextBox ID="resimTextBox" runat="server" 
                                Text='<%# Bind("resim") %>' />
                            <br />
                            Değiştirmek İstediğinizden Emin Misiniz?<br />&nbsp;<asp:LinkButton ID="UpdateButton" 
                                runat="server" CausesValidation="True" CommandName="Update" 
                                Text="Değiştir" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" Text="İptal" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
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
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    </asp:FormView>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Anasayfa</asp:HyperLink>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged" 
                        Visible="False"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
