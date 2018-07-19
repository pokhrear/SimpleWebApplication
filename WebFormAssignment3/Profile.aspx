<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebFormAssignment3.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body {
             background-color: lightblue;
        }
        #Button1, #Button2 {
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
            width: 60%;
        }
        #TextBox1,#TextBox2,#TextBox3,#TextBox4,#TextBox5,#TextBox6,#TextBox7{
            width: 60%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
        }

        #ListBox1{
            width: 5%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
        }
            .ap{
            background-color: #ffcccc;
            margin: auto;
            width: 100%;
            padding: 10px;
       }

            .jp{
            background-color: #d9d9d9;
            margin: auto;
            width: 100%;
            padding: 10px;
      }
            #Label9 {
               font-family:"Courier New", Courier, monospace;
      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="ap">
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Your detail information!" Font-Bold="True" Font-Italic="True" Font-Names="Arial Narrow" Font-Size="Medium" Font-Underline="True" ForeColor="#CC3300"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
        </div>
            <hr />
            <hr />
        <div class="jp">
            <asp:Label ID="Label9" runat="server" Text="We are happy to serve you! Fill the form now to place your order!!" BackColor="#CCFFFF" Font-Bold="True" Font-Italic="True" Font-Names="Arial Narrow" Font-Size="Larger" ForeColor="#993300"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Brand"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Model"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Year"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Color"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox5" runat="server" placeholder="Price"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Order" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="View Order" OnClick="Button2_Click" />
            <br />
            <asp:ListBox ID="ListBox1" runat="server" style="margin-left: 0px" Width="516px"></asp:ListBox>
            <br />
        </div>
    </form>
</body>
</html>
