<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hakkımızda.aspx.cs" Inherits="hakkımızda" %>

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
            width: 1281px;
            height: 242px;
        }
        .style4
        {
            height: 225px;
            background-color: #FF9966;
        }
        .style5
        {
            height: 249px;
        }
    </style>
</head>
<body style="background-color: #CC6600">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" border=1>
            <tr>
                <td class="style5">
                    <img alt="" class="style2" src="evrenotomotiv.jpg" /></td>
            </tr>
            <tr>
                <td class="style4">
                    Hakkımızda<br />
                    Bu firma iyi bir araba firmasıdır her fiyatına özelliğine uygun araba 
                    bulunmaktadır.Gelmenizi bekleriz.<br />
                    İletişim<br />
                    05068069347<br />
                    
                    Telif hakkı Orçun Türkokuloğlu"na aittir.<br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Anasayfa</asp:HyperLink>
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
