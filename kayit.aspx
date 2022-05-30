<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kayit.aspx.cs" Inherits="kayit" %>

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
            width: 1003px;
            height: 180px;
        }
        .style3
        {
            width: 707px;
            background-color: #FF99FF;
        }
        .style4
        {
            width: 181px;
        }
        .style5
        {
            width: 105px;
        }
        .style6
        {
            width: 707px;
        }
    </style>
</head>
<body style="background-color: #CC0099">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" border=1>
            <tr>
                <td class="style6">
                    <img alt="" class="style2" src="evrenotomotiv.jpg" /></td>
            </tr>
            <tr>
                <td class="style3">
                    <br />
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="~/App_Data/Otomobil.mdb" 
                        SelectCommand="SELECT * FROM [oto]">
                    </asp:AccessDataSource>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                        CellPadding="2" DataKeyNames="id" 
                        DataSourceID="AccessDataSource1" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
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
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="76px" 
                                        ImageUrl='<%# "resim/"+Eval("resim") %>' Width="249px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                            HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                        DataFile="~/App_Data/Otomobil.mdb" 
                        DeleteCommand="DELETE FROM [oto] WHERE [id] = ?" 
                        InsertCommand="INSERT INTO oto(otoadi, otomodel, otoyil, km, ozellikler, resim) VALUES (?, ?, ?, ?, ?, ?)" 
                        SelectCommand="SELECT * FROM [oto]" 
                        
                        UpdateCommand="UPDATE [oto] SET [otoadi] = ?, [otomodel] = ?, [otoyil] = ?, [km] = ?, [ozellikler] = ?, [resim] = ? WHERE [id] = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="otoadi" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="otomodel" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox3" Name="otoyil" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox4" Name="km" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox5" Name="ozellikler" 
                                PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox6" Name="resim" PropertyName="Text" 
                                Type="String" />
                        </InsertParameters>
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
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Anasayfa</asp:HyperLink>
                    <br />
                    <table class="style1" border=1>
                        <tr>
                            <td>
                                Otomobil Adı:</td>
                            <td>
                                Otomobil Modeli:</td>
                            <td>
                                Otomobil Yılı:</td>
                            <td>
                                Km:</td>
                            <td class="style4">
                                Özellikler:</td>
                            <td class="style5">
                                Resim:</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                            <td class="style4">
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                            <td class="style5">
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Kaydet" />
                    <br />
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
