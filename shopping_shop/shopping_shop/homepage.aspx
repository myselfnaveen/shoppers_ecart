<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="shopping_shop.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage</title>
  
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        #index{
            border:5px solid black;
            padding:4px 7px 2px 4px;
            width:auto;
        }
        .auto-style2 {
            text-decoration: underline;
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
    <div id="container-1">
        <h1 class="auto-style1">Shopping Shop</h1>
     </div>
    <div id="index" > 
        <p style="margin-left: 80px">
            hi&nbsp;
            <asp:Label ID="usernamelbl" runat="server"></asp:Label>
            <asp:Button ID="logoutbtn" runat="server" Text="Log Out" align="right" OnClick="logoutbtn_Click"  Class="btn"/>
           
        </p>
        <p style="margin-left: 80px">
            &nbsp;</p>
        <p style="margin-left: 80px">
            <span class="auto-style2"><strong>Search</strong></span>&nbsp;&nbsp; 
            <asp:TextBox ID="TextBox1" runat="server" Width="523px" OnTextChanged="TextBox1_TextChanged">saree</asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="hsearchbtn" runat="server" Text="Search" OnClick="hsearchbtn_Click" class="btn"/>
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="cartbtn" runat="server" Text="Cart Items" OnClick="cartbtn_Click" class="btn" />
            &nbsp;</p>
        <div id="productbox" style="margin-left: 40px">
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="product_id" DataSourceID="productlist" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="636px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" SortExpression="product_id" />
                    <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                    <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
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
            <asp:SqlDataSource ID="productlist" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingshopConnectionString %>" SelectCommand="SELECT * FROM [productdb]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="searchitem" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingshopConnectionString %>" SelectCommand="SELECT * FROM [productdb] WHERE ([product_name] = @product_name)">
                <SelectParameters>
                    <asp:SessionParameter Name="product_name" SessionField="searchs" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="searchitem" Width="645px">
                <Columns>
                    <asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" SortExpression="product_id" />
                    <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                    <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <br />
            <p style="margin-left: 40px">
            Enter the product ID to add cart:&nbsp;
                     <asp:TextBox ID="addcarttxtbx" runat="server" Width="158px"></asp:TextBox>
&nbsp;Enter the quantity:&nbsp;
                <asp:TextBox ID="quantitytxtbx" runat="server" Width="158px"></asp:TextBox>
            </p>
            <p style="margin-left: 40px; text-align: center;">
            <br />
                <asp:Button ID="addcartbtn" runat="server" Text="Add Cart" OnClick="addcartbtn_Click1" class="btn"/>
            <br />
            <br />


            </p>


        </div>
    </div>

    </form>
     <div style="position:relative;width:auto;text-align:right">
             
            Contact us: nnaavveennvv@gmail.com +919840347240. @CopyRights reserved by Naveen.
        </div>
</html>
