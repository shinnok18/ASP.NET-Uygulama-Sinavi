<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            width: 100%;
            height: 353px;
        }
        .style2
        {
            width: 1135px;
            height: 180px;
            margin-right: 0px;
        }
        .style3
        {
            width: 238px;
            background-color: #339966;
        }
        .style4
        {
            width: 506px;
        }
    </style>
</head>
<body style="background-color: #663300">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" border=1>
            <tr>
                <td colspan="2">
                    <img alt="" class="style2" src="evrenotomotiv.jpg" /></td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                        DataFile="~/App_Data/Otomobil.mdb" 
                        
                        SelectCommand="SELECT * FROM [uye] WHERE (([Uyeadi] = ?) AND ([sifre] = ?))" 
                        DeleteCommand="DELETE FROM [uye] WHERE [id] = ?" 
                        InsertCommand="INSERT INTO [uye] ([id], [adi], [soyadi], [Uyeadi], [sifre], [mail]) VALUES (?, ?, ?, ?, ?, ?)" 
                        UpdateCommand="UPDATE [uye] SET [adi] = ?, [soyadi] = ?, [Uyeadi] = ?, [sifre] = ?, [mail] = ? WHERE [id] = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                            <asp:Parameter Name="adi" Type="String" />
                            <asp:Parameter Name="soyadi" Type="String" />
                            <asp:Parameter Name="Uyeadi" Type="String" />
                            <asp:Parameter Name="sifre" Type="String" />
                            <asp:Parameter Name="mail" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox2" Name="Uyeadi" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox3" Name="sifre" PropertyName="Text" 
                                Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="adi" Type="String" />
                            <asp:Parameter Name="soyadi" Type="String" />
                            <asp:Parameter Name="Uyeadi" Type="String" />
                            <asp:Parameter Name="sifre" Type="String" />
                            <asp:Parameter Name="mail" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:AccessDataSource>
                    <asp:FormView ID="FormView1" runat="server" BackColor="White" 
                        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        DataKeyNames="id" DataSourceID="AccessDataSource2" DefaultMode="Edit" 
                        GridLines="Vertical">
                        <EditItemTemplate>
                            id:
                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            adi:
                            <asp:TextBox ID="adiTextBox" runat="server" Text='<%# Bind("adi") %>' />
                            <br />
                            soyadi:
                            <asp:TextBox ID="soyadiTextBox" runat="server" Text='<%# Bind("soyadi") %>' />
                            <br />
                            Uyeadi:
                            <asp:TextBox ID="UyeadiTextBox" runat="server" Text='<%# Bind("Uyeadi") %>' />
                            <br />
                            sifre:
                            <asp:TextBox ID="sifreTextBox" runat="server" Text='<%# Bind("sifre") %>' />
                            <br />
                            mail:
                            <asp:TextBox ID="mailTextBox" runat="server" Text='<%# Bind("mail") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            adi:
                            <asp:TextBox ID="adiTextBox0" runat="server" Text='<%# Bind("adi") %>' />
                            <br />
                            soyadi:
                            <asp:TextBox ID="soyadiTextBox0" runat="server" Text='<%# Bind("soyadi") %>' />
                            <br />
                            Uyeadi:
                            <asp:TextBox ID="UyeadiTextBox0" runat="server" Text='<%# Bind("Uyeadi") %>' />
                            <br />
                            sifre:
                            <asp:TextBox ID="sifreTextBox0" runat="server" Text='<%# Bind("sifre") %>' />
                            <br />
                            mail:
                            <asp:TextBox ID="mailTextBox0" runat="server" Text='<%# Bind("mail") %>' />
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
                            adi:
                            <asp:Label ID="adiLabel" runat="server" Text='<%# Bind("adi") %>' />
                            <br />
                            soyadi:
                            <asp:Label ID="soyadiLabel" runat="server" Text='<%# Bind("soyadi") %>' />
                            <br />
                            Uyeadi:
                            <asp:Label ID="UyeadiLabel" runat="server" Text='<%# Bind("Uyeadi") %>' />
                            <br />
                            sifre:
                            <asp:Label ID="sifreLabel" runat="server" Text='<%# Bind("sifre") %>' />
                            <br />
                            mail:
                            <asp:Label ID="mailLabel" runat="server" Text='<%# Bind("mail") %>' />
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
                    <br />
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View1" runat="server">
                            ÜYE GİRİŞİ<br /> Üye Adınız:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <br />
                            Şifreniz:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                            <br />
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Giriş" />
                        </asp:View>
                        <br />
                        <asp:View ID="View2" runat="server">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/kayit.aspx">Otomobil Kayıt Sayfası</asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/silme.aspx">Otomobil Silme</asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/degistirme.aspx">Otomobil Değiştir</asp:HyperLink>
                            <br />
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/uyeol.aspx">Üye Kayıt Sayfası</asp:HyperLink>
                            <br />
                            Üye Adı:<asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
                            <br />
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                PostBackUrl="~/Default.aspx" Text="Oturumu Kapat" />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </asp:View>
                    </asp:MultiView>
                </td>
                <td rowspan="2" class="style4" 
                    style="color: #CC3300; background-color: #CC3300">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="~/App_Data/Otomobil.mdb" SelectCommand="SELECT * FROM [oto]">
                    </asp:AccessDataSource>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                        CellPadding="3" CellSpacing="1" DataKeyNames="id" 
                        DataSourceID="AccessDataSource1" GridLines="None" 
                        style="margin-left: 20px" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                        <Columns>
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
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" 
                                        ImageUrl='<%# "resim/"+Eval("resim") %>' onclick="ImageButton1_Click" 
                                        Width="205px" />
                                </ItemTemplate>
                            </asp:TemplateField>
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
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/sdefteri.aspx">Ziyaretçi Defteri</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/hakkımızda.aspx">Hakkımızda</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
