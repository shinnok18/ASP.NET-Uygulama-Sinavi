<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sdefteri.aspx.cs" Inherits="sdefteri" %>

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
<body style="background-color: #FFFF66">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" border=1>
            <tr>
                <td>
                    <img alt="" class="style2" src="evrenotomotiv.jpg" /></td>
            </tr>
            <tr>
                <td style="background-color: #CC6600">
                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                        DataFile="~/App_Data/Otomobil.mdb" 
                        SelectCommand="SELECT * FROM [ziyaretci] WHERE ([Onay] = ?)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox6" DefaultValue="true" Name="Onay" 
                                PropertyName="Text" Type="Boolean" />
                        </SelectParameters>
                    </asp:AccessDataSource>
                    <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
                    <br />
                    <br />
                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                        DataFile="~/App_Data/Otomobil.mdb" 
                        SelectCommand="SELECT * FROM [ziyaretci] WHERE ([Onay] = ?)" 
                        DeleteCommand="DELETE FROM [ziyaretci] WHERE [id] = ?" 
                        InsertCommand="INSERT INTO ziyaretci(adi, soyadi, dogumyili, icerik, Onay) VALUES (?, ?, ?, ?, ?)" 
                        UpdateCommand="UPDATE [ziyaretci] SET [adi] = ?, [soyadi] = ?, [dogumyili] = ?, [icerik] = ?, [Onay] = ? WHERE [id] = ?">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="adi" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="soyadi" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox3" Name="dogumyili" PropertyName="Text" 
                                Type="String" />
                            <asp:ControlParameter ControlID="TextBox4" Name="icerik" PropertyName="Text" 
                                Type="String" />
                            <asp:Parameter DefaultValue="false" Name="Onay" Type="Boolean" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox7" DefaultValue="false" Name="Onay" 
                                PropertyName="Text" Type="Boolean" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="adi" Type="String" />
                            <asp:Parameter Name="soyadi" Type="String" />
                            <asp:Parameter Name="dogumyili" Type="String" />
                            <asp:Parameter Name="icerik" Type="String" />
                            <asp:Parameter Name="Onay" Type="Boolean" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:AccessDataSource>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Anasayfa</asp:HyperLink>
                    <br />
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View1" runat="server">
                            <table border="1" class="style1">
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
                                        Doğum Yılı:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        İçerik:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Kaydet" />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server" Visible="False"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>

                        <br />
                        <asp:View ID="View2" runat="server">
                            Yazınız Editör Tarafından Onaylanacaktır.<br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                                CellPadding="3" CellSpacing="1" DataKeyNames="id" 
                                DataSourceID="AccessDataSource1" GridLines="None">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="id" Visible="False" />
                                    <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
                                    <asp:BoundField DataField="soyadi" HeaderText="soyadi" 
                                        SortExpression="soyadi" />
                                    <asp:BoundField DataField="dogumyili" HeaderText="dogumyili" 
                                        SortExpression="dogumyili" />
                                    <asp:TemplateField HeaderText="icerik" SortExpression="icerik">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("icerik") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("icerik") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CheckBoxField DataField="Onay" HeaderText="Onay" SortExpression="Onay" 
                                        Visible="False" />
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
                            <br />
                        </asp:View>

                    </asp:MultiView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
