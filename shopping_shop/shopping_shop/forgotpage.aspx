<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpage.aspx.cs" Inherits="shopping_shop.forgotpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
       
             }
        .btn {
            background-color: none;
             font-family:'Geneva';
             border : 2px solid  #383cf2;
     border-radius:12px 28px;
     box-shadow : 0 8px 16px 0 rgba (0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
     color: #383cf2;
     padding: 4px 10px;
     text-align: center;
     text-decoration:none;
     display: inline-block;
     font-size: 16px;
     font-weight:bold;
     margin: 4px 2px;
     cursor: pointer;
          }
        body{
            color:white;
            font-family:"Candara";
            font-weight: 700;
            font-weight:bold;
           background-image:url('file:///C:/Users/local%20pc/Documents/Visual%20Studio%202013/Projects/shopping_shop/shopping_shop/image/lineblue.jpg');
        }
        h1{
             color:white;
            font-family:"Copperplate";
            font-size:80px;
            font-weight: 700;
            font-weight:bold;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 class="auto-style1"> Shopper's Cart</h1>

    </div>
        <br />
        <br />
         <br />
        <br />

        <div>
      Enter your Email ID :   <asp:TextBox ID="TextBox1" runat="server" Width="183px"></asp:TextBox>
    </div>
            </form>
     <div style="position:relative;width:auto;text-align:right">
             
            Contact us: nnaavveennvv@gmail.com +919840347240. @CopyRights reserved by Naveen.
        </div>
</body>
</html>
