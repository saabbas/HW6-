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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:saabbas_HW6 %>" DeleteCommand="DELETE FROM [saabbas_HW6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [saabbas_HW6] ([recipeName], [submittedBy], [Ingred1], [Ingred2], [Ingred3], [Ingred4], [Ingred5], [Prep], [Notes]) VALUES (@recipeName, @submittedBy, @Ingred1, @Ingred2, @Ingred3, @Ingred4, @Ingred5, @Prep, @Notes)" SelectCommand="SELECT * FROM [saabbas_HW6]" UpdateCommand="UPDATE [saabbas_HW6] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [Ingred1] = @Ingred1, [Ingred2] = @Ingred2, [Ingred3] = @Ingred3, [Ingred4] = @Ingred4, [Ingred5] = @Ingred5, [Prep] = @Prep, [Notes] = @Notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="Ingred1" Type="String" />
                <asp:Parameter Name="Ingred2" Type="String" />
                <asp:Parameter Name="Ingred3" Type="String" />
                <asp:Parameter Name="Ingred4" Type="String" />
                <asp:Parameter Name="Ingred5" Type="String" />
                <asp:Parameter Name="Prep" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipeName" Type="String" />
                <asp:Parameter Name="submittedBy" Type="String" />
                <asp:Parameter Name="Ingred1" Type="String" />
                <asp:Parameter Name="Ingred2" Type="String" />
                <asp:Parameter Name="Ingred3" Type="String" />
                <asp:Parameter Name="Ingred4" Type="String" />
                <asp:Parameter Name="Ingred5" Type="String" />
                <asp:Parameter Name="Prep" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" DefaultMode="Insert" HorizontalAlign="Center">
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
                    <td>
                        <asp:RequiredFieldValidator ID="rfv_RecipeName" runat="server" ErrorMessage="Please add a recipe name" CssClass="validationError" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td style="color: #FFFFFF; background-color:#F08080; text-align:right;">
                        Submitted By
                    </td>
                    <td style="background-color:#FFFF99; text-align:left;">
                         <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFF99" Text='<%# Bind("submittedBy") %>' />
                    </td>
                     <td>
                         <asp:RequiredFieldValidator ID="rfv_SubmittedBy" runat="server" ErrorMessage="Please enter your name" CssClass="validationError" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                 <tr>
                    <td style="color: #FFFFFF; background-color:#F08080; text-align:right;">
                        Ingredient #1
                    </td>
                    <td style="background-color:#FFFF99; text-align:left;">
                         <asp:TextBox ID="TextBox3" runat="server" BackColor="#FFFF99" Text='<%# Bind("Ingred1") %>' />
                    </td>
                     <td>
                         <asp:RequiredFieldValidator ID="rfv_Ingredient1" runat="server" ErrorMessage="Please enter at least 1 ingredient" CssClass="validationError" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
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
                     <td>
                         <asp:RequiredFieldValidator ID="rfv_Preparation" runat="server" ErrorMessage="Please enter preparation details" CssClass="validationError" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
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
                    <td style="padding-top:5px; text-align:center;">
                        <asp:Button ID="btn_Insert" runat="server" CausesValidation="true" CommandName="Insert" Text="Save" BackColor="#696969" />
                    </td>
                </tr>            
            </table>                 
                <br />               
            </InsertItemTemplate>
            <ItemTemplate>
              
            </ItemTemplate>
        </asp:FormView>
<br />




</form>
    <i class="footer">Copyright © 2014. Created by Sean Abbas.</i>
</body>
</html>
