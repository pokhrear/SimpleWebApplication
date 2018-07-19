<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormAssignment3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
    body {
    background-color: lightblue;
}
    div{
    background-color: #ffcccc;
    margin: auto;
    width: 70%;
    padding: 10px;
    }

    #Button2,#Button1 {
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
    width:100%;
}
   
   #TextBox1,#TextBox2{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
}
   #Label1,#Label2{
       font-family:"Courier New", Courier, monospace;
   }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Text="Existing Customer"></asp:Label>
            <br />
          
            <br />
            <asp:TextBox ID="TextBox1" runat="server" placeholder="User Name" BorderColor="#339933"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" type="password" placeholder="password" BorderColor="#339933"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" Font-Bold="True" Width="190px" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Text="Wrong Email or Password!"></asp:Label>
            <br />
            <br />
            <hr />
            <hr />
            <asp:Label ID="Label1" runat="server" Text="New Customer"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;
            <br />
          
            <asp:Button ID="Button1" runat="server" Text="Register here" OnClick="Button1_Click" BorderColor="#339933" />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
