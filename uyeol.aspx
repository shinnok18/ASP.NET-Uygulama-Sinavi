<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uyeol.aspx.cs" Inherits="uyeol" %>

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
            height: 25px;
        }
        .style3
        {
            background-color: #993300;
        }
        .style4
        {
            width: 950px;
            height: 180px;
        }
    </style>
</head>
<body style="background-color: #990000">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" border=1>
            <tr>
                <td class="style2">
                    <img alt="" class="style4" src="evrenotomotiv.jpg" /></td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="~/App_Data/Otomobil.mdb" SelectCommand="SELECT * FROM [uye]">
                    </asp:AccessDataSource>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                        CellPadding="3" CellSpacing="1" DataKeyNames="id" 
                        DataSourceID="AccessDataSource1" GridLines="None" Visible="False">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
                            <asp:BoundField DataField="soyadi" HeaderText="soyadi" 
                                SortExpression="soyadi" />
                            <asp:BoundField DataField="Uyeadi" HeaderText="Uyeadi" 
                                SortExpression="Uyeadi" />
                            <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
                            <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                    </asp:GridView>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Anasayfa</asp:HyperLink>
                    <br />
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                        DataFile="~/App_Data/Otomobil.mdb" 
                        DeleteCommand="DELETE FROM [uye] WHERE [id] = ?" 
                        InsertCommand="INSERT INTO uye(adi, soyadi, Uyeadi, sifre, mail) VALUES (?, ?, ?, ?, ?)" 
                        SelectCommand="SELECT * FROM [uye]" 
                        UpdateCommand="UPDATE [uye] SET [adi] = ?, [soyadi] = ?, [Uyeadi] = ?, [sifre] = ?, [mail] = ? WHERE [id] = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="adi" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="soyadi" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox3" Name="Uyeadi" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox4" Name="sifre" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox5" Name="mail" PropertyName="Text" 
                                Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="adi" Type="String" />
                            <asp:Parameter Name="soyadi" Type="String" />
                            <asp:Parameter Name="Uyeadi" Type="String" />
                            <asp:Parameter Name="sifre" Type="String" />
                            <asp:Parameter Name="mail" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:AccessDataSource>
                    <br />
                    <table class="style1" border=1>
                        <tr>
                            <td>
                                Adınız:</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Soyadınız:</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Uye Adınız:</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Şifreniz:</td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Mailiniz:</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Kaydol" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
