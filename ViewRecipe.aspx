<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ViewRecipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recipe Viewer</title>
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
        <asp:SqlDataSource ID="sql_saabbas" runat="server" ConnectionString="<%$ ConnectionStrings:saabbas_HW6 %>" SelectCommand="SELECT * FROM [saabbas_HW6] WHERE ([recipeID] = @recipeID)" DeleteCommand="DELETE FROM [saabbas_HW6] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [saabbas_HW6] ([recipeName], [submittedBy], [Ingred1], [Ingred2], [Ingred3], [Ingred4], [Ingred5], [Prep], [Notes]) VALUES (@recipeName, @submittedBy, @Ingred1, @Ingred2, @Ingred3, @Ingred4, @Ingred5, @Prep, @Notes)" UpdateCommand="UPDATE [saabbas_HW6] SET [recipeName] = @recipeName, [submittedBy] = @submittedBy, [Ingred1] = @Ingred1, [Ingred2] = @Ingred2, [Ingred3] = @Ingred3, [Ingred4] = @Ingred4, [Ingred5] = @Ingred5, [Prep] = @Prep, [Notes] = @Notes WHERE [recipeID] = @recipeID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="recipeID" QueryStringField="recipeID" Type="Int32" />
            </SelectParameters>
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
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recipeID" DataSourceID="sql_saabbas" Height="50px" Width="125px" HorizontalAlign="Center">
            <Fields>
                <asp:BoundField DataField="recipeName" HeaderText="Recipe Name" SortExpression="recipeName" />
                <asp:BoundField DataField="submittedBy" HeaderText="Submitted By" SortExpression="submittedBy" />
                <asp:BoundField DataField="Ingred1" HeaderText="Ingredient #1" SortExpression="Ingred1" />
                <asp:BoundField DataField="Ingred2" HeaderText="Ingredient #2" SortExpression="Ingred2" />
                <asp:BoundField DataField="Ingred3" HeaderText="Ingredient #3" SortExpression="Ingred3" />
                <asp:BoundField DataField="Ingred4" HeaderText="Ingredient #4" SortExpression="Ingred4" />
                <asp:BoundField DataField="Ingred5" HeaderText="Ingredient #5" SortExpression="Ingred5" />
                <asp:BoundField DataField="Prep" HeaderText="Preparation" SortExpression="Prep" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" ReadOnly="True" SortExpression="Notes" />
            </Fields>
        </asp:DetailsView>
<br />
        <asp:Button ID="btn_Edit" runat="server" CausesValidation="False" CommandName="Update" Text="Edit" /> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:Button ID="btn_Delete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
<br />
<br />

    </form>
    <i class="footer">Copyright © 2014. Created by Sean Abbas.</i>
</body>
</html>
