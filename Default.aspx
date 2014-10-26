<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recipes</title>
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
        <asp:SqlDataSource ID="sql_sabbas" runat="server" ConnectionString="<%$ ConnectionStrings:saabbas_HW6 %>" DeleteCommand="DELETE FROM [saabbas_HW6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [saabbas_HW6] ([recipeName], [submittedBy], [Ingred1], [Ingred2], [Ingred3], [Ingred4], [Ingred5], [Prep], [Notes]) VALUES (@recipeName, @submittedBy, @Ingred1, @Ingred2, @Ingred3, @Ingred4, @Ingred5, @Prep, @Notes)" SelectCommand="SELECT * FROM [saabbas_HW6]" UpdateCommand="UPDATE [saabbas_HW6] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [Ingred1] = @Ingred1, [Ingred2] = @Ingred2, [Ingred3] = @Ingred3, [Ingred4] = @Ingred4, [Ingred5] = @Ingred5, [Prep] = @Prep, [Notes] = @Notes WHERE [recipeID] = @recipeID">
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
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="sql_sabbas" PageSize="5">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="recipeName" HeaderText="RecipeName" SortExpression="recipeName" />
                <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                <asp:BoundField DataField="Ingred1" HeaderText="Ingredient 1" SortExpression="Ingred1" />
                <asp:BoundField DataField="Ingred2" HeaderText="Ingredient 2" SortExpression="Ingred2" />
                <asp:BoundField DataField="Ingred3" HeaderText="Ingredient 3" SortExpression="Ingred3" />
                <asp:BoundField DataField="Ingred4" HeaderText="Ingredient 4" SortExpression="Ingred4" />
                <asp:BoundField DataField="Ingred5" HeaderText="Ingredient 5" SortExpression="Ingred5" />
                <asp:BoundField DataField="Prep" HeaderText="Prep" SortExpression="Prep" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            </Columns>
        </asp:GridView>
        <br />
            <i class="footer">Copyright © 2014. Created by Sean Abbas.</i>
    </form>
    </body>
</html>
