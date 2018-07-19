<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebFormAssignment3.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #Button1 {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            width: 70%;
        }

            #TextBox1,#TextBox2,#TextBox3,#TextBox4,#TextBox5,#TextBox6,#TextBox7{
            width: 70%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
        }
            div{
            background-color: #ffcccc;
            margin: auto;
            width: 50%;
            padding: 10px;
       }
            #Label1,#Label2{
               font-family:"Courier New", Courier, monospace;
               font-weight: bold;
           }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Put your detail information"></asp:Label>
            <br />
            <hr />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Customer Name"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Address"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Postal Code"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Phone Number"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox5" runat="server" placeholder="E-mail"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox6" runat="server" placeholder="Retype email"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox7" runat="server" placeholder="Password" type="password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
