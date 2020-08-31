<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cartpage.aspx.cs" Inherits="shopping_shop.cartpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        #cartdisplay {
            margin-left: 80px;
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
            color:#05143d;
            font-family:"Candara";
            font-weight: 700;
            font-weight:bold;
           background-image:url('file:///C:/Users/local%20pc/Documents/Visual%20Studio%202013/Projects/shopping_shop/shopping_shop/image/lightblue.jpg');
        }
        h1{
             color:white;
            font-family:"Copperplate";
            font-size:40px;
            font-weight: 700;
            font-weight:bold;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 class="auto-style1">Shopper's Cart</h1>
    </div>

        <div id="btns">

            &nbsp;
            <asp:Button ID="homebtn" runat="server" Text="Home" OnClick="homebtn_Click" Class="btn" />
            <asp:Label ID="namelabel" runat="server"></asp:Label>
            <asp:Button ID="logoutbtn" runat="server" Text="Log Out" OnClick="logoutbtn_Click" align="right" CssClass="btn" />
        &nbsp;&nbsp;&nbsp;
            <br />
        </div>
        <div>
            




            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="sqlitem" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="product_id" HeaderText="product_id" SortExpression="product_id" />
                    <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                    <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="sqlitem" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingshopConnectionString %>" SelectCommand="SELECT * FROM [cartdb] WHERE ([username] = @username)">
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="name" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            Enter ID to remove product:<asp:TextBox ID="removetxtbx" runat="server" Style="margin-left:09px" Width="157px"></asp:TextBox>
            <asp:Button ID="removebtn" runat="server" Text="Remove" Style="margin-left:50px" OnClick="removebtn_Click" CssClass="btn" />
            <br />
            <br />
            <asp:Button ID="placeorderbtn" runat="server" style="margin-left:250px" Text="Place Order" OnClick="placeorderbtn_Click" CssClass="btn" />
            <br />
            <br />




        </div>
    </form>
      <div style="position:relative;width:auto;text-align:right">
             
            Contact us: nnaavveennvv@gmail.com +919840347240. @CopyRights reserved by Naveen.
        </div>

</body>
</html>
