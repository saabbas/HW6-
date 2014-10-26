<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="NewRecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>New Recipe</title>
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
<br />

    <asp:SqlDataSource ID="sql_sabbas" runat="server" ConnectionString="<%$ ConnectionStrings:saabbas_HW6 %>" SelectCommand="SELECT * FROM [saabbas_HW6]"></asp:SqlDataSource>
    <asp:FormView ID="newrecipeFormView" runat="server" DataKeyNames="recipeID" DataSourceID="sql_sabbas" DefaultMode="Insert">
        <EditItemTemplate>
            
        </EditItemTemplate>
        <InsertItemTemplate>
            <table style="border:5px solid #FFFFFF; padding:0px; background-color:#FFFFFF">
                <tr>
                    <td style="color: #FFFFFF; background-color:#F08080; text-align:right;">
                        Recipe Name
                    </td>
                    <td style="background-color:#FFFF99; text-align:left;">
                         <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFF99" Text='<%# Bind("recipeName") %>' />
                    </td>
                </tr>
                 <tr>
                    <td style="color: #FFFFFF; background-color:#F08080; text-align:right;">
                        Submitted By
                    </td>
                    <td style="background-color:#FFFF99; text-align:left;">
                         <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFF99" Text='<%# Bind("submittedBy") %>' />
                    </td>
                </tr>
                 <tr>
                    <td style="color: #FFFFFF; background-color:#F08080; text-align:right;">
                        Ingredient #1
                    </td>
                    <td style="background-color:#FFFF99; text-align:left;">
                         <asp:TextBox ID="TextBox3" runat="server" BackColor="#FFFF99" Text='<%# Bind("Ingred1") %>' />
                    </td>
                </tr>
                 <tr>
                    <td style="color: #FFFFFF; background-color:#F08080; text-align:right;">
                        Ingredient #2
                    </td>
                    <td style="background-color:#FFFF99; text-align:left;">
                          <asp:TextBox ID="TextBox4" runat="server" BackColor="#FFFF99" Text='<%# Bind("Ingred2") %>' />
                    </td>
                </tr>
                 <tr>
                    <td style="color: #FFFFFF; background-color:#F08080; text-align:right;">
                        Ingredient #3
                    </td>
                   <td style="background-color:#FFFF99; text-align:left;">
                         <asp:TextBox ID="TextBox5" runat="server" BackColor="#FFFF99" Text='<%# Bind("Ingred3") %>' />
                    </td>
                </tr>
                 <tr>
                    <td style="color: #FFFFFF; background-color:#F08080; text-align:right;">
                        Ingredient #4
                    </td>
                    <td style="background-color:#FFFF99; text-align:left;">
                          <asp:TextBox ID="TextBox6" runat="server" BackColor="#FFFF99" Text='<%# Bind("Ingred4") %>' />
                    </td>
                </tr>
                 <tr>
                    <td style="color: #FFFFFF; background-color:#F08080; text-align:right;">
                        Ingredient #5
                    </td>
                    <td style="background-color:#FFFF99; text-align:left;">
                        <asp:TextBox ID="TextBox7" runat="server" BackColor="#FFFF99" Text='<%# Bind("Ingred5") %>' />
                    </td>
                </tr>
                 <tr>
                    <td style="color: #FFFFFF; background-color:#F08080; text-align:right;">
                        Preparation
                    </td>
                    <td style="background-color:#FFFF99; text-align:left;">
                         <asp:TextBox ID="TextBox8" runat="server" BackColor="#FFFF99" Text='<%# Bind("Prep") %>' />
                    </td>
                </tr>
                 <tr>
                    <td style="color: #FFFFFF; background-color:#F08080; text-align:right;">
                        Notes
                    </td>
                    <td style="background-color:#FFFF99; text-align:left;">
                        <asp:TextBox ID="TextBox9" runat="server" BackColor="#FFFF99" Text='<%# Bind("Notes") %>' />
                    </td>
                </tr>
                 <tr>
                    <td style="padding-top:5px; text-align:right;">
                        <asp:Button ID="btn_Insert" runat="server" CausesValidation="true" CommandName="Insert" Text="Insert" BackColor="#696969" />
                    </td>
                    <td style="padding-top:5px; text-align:left;">
                        <asp:Button ID="btn_cancelInsert" runat="server" CausesValidation="false" CommandName="Cancel" Text="Cancel" BackColor="#696969" /> 
                    </td>
                </tr>            
            </table>                 
        </InsertItemTemplate>
        <ItemTemplate>
           
        </ItemTemplate>
    </asp:FormView>
    <br />


    </form>
    <i class="footer">Copyright © 2014. Created by Sean Abbas.</i>
</body>
</html>
