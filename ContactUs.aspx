﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
<div>
        <span class="header">Austin&#39s Recipe Website</span>
</div>

<div id="nav">
        <ul>
        <li><a href="Default.aspx">Home</a></li>
        <li><a href="NewRecipe.aspx">New Recipe</a></li>
        <li><a href="AboutUs.aspx">About Us</a></li>
        <li><a href="ContactUs.aspx">Contact</a></li>
        </ul>    
</div>
<hr />

  <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>
    </form>
    <i class="footer">Copyright © 2014. Created by Sean Abbas.</i>
</body>
</html>
