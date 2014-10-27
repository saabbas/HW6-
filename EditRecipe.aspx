<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EditRecipe.aspx.vb" Inherits="EditRecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Recipe</title>
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipeID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                recipeID:
                <asp:Label ID="recipeIDLabel1" runat="server" Text='<%# Eval("recipeID") %>' />
                <br />
                recipeName:
                <asp:TextBox ID="recipeNameTextBox" runat="server" Text='<%# Bind("recipeName") %>' />
                <br />
                submittedBy:
                <asp:TextBox ID="submittedByTextBox" runat="server" Text='<%# Bind("submittedBy") %>' />
                <br />
                Ingred1:
                <asp:TextBox ID="Ingred1TextBox" runat="server" Text='<%# Bind("Ingred1") %>' />
                <br />
                Ingred2:
                <asp:TextBox ID="Ingred2TextBox" runat="server" Text='<%# Bind("Ingred2") %>' />
                <br />
                Ingred3:
                <asp:TextBox ID="Ingred3TextBox" runat="server" Text='<%# Bind("Ingred3") %>' />
                <br />
                Ingred4:
                <asp:TextBox ID="Ingred4TextBox" runat="server" Text='<%# Bind("Ingred4") %>' />
                <br />
                Ingred5:
                <asp:TextBox ID="Ingred5TextBox" runat="server" Text='<%# Bind("Ingred5") %>' />
                <br />
                Prep:
                <asp:TextBox ID="PrepTextBox" runat="server" Text='<%# Bind("Prep") %>' />
                <br />
                Notes:
                <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                recipeName:
                <asp:TextBox ID="recipeNameTextBox" runat="server" Text='<%# Bind("recipeName") %>' />
                <br />
                submittedBy:
                <asp:TextBox ID="submittedByTextBox" runat="server" Text='<%# Bind("submittedBy") %>' />
                <br />
                Ingred1:
                <asp:TextBox ID="Ingred1TextBox" runat="server" Text='<%# Bind("Ingred1") %>' />
                <br />
                Ingred2:
                <asp:TextBox ID="Ingred2TextBox" runat="server" Text='<%# Bind("Ingred2") %>' />
                <br />
                Ingred3:
                <asp:TextBox ID="Ingred3TextBox" runat="server" Text='<%# Bind("Ingred3") %>' />
                <br />
                Ingred4:
                <asp:TextBox ID="Ingred4TextBox" runat="server" Text='<%# Bind("Ingred4") %>' />
                <br />
                Ingred5:
                <asp:TextBox ID="Ingred5TextBox" runat="server" Text='<%# Bind("Ingred5") %>' />
                <br />
                Prep:
                <asp:TextBox ID="PrepTextBox" runat="server" Text='<%# Bind("Prep") %>' />
                <br />
                Notes:
                <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                recipeID:
                <asp:Label ID="recipeIDLabel" runat="server" Text='<%# Eval("recipeID") %>' />
                <br />
                recipeName:
                <asp:Label ID="recipeNameLabel" runat="server" Text='<%# Bind("recipeName") %>' />
                <br />
                submittedBy:
                <asp:Label ID="submittedByLabel" runat="server" Text='<%# Bind("submittedBy") %>' />
                <br />
                Ingred1:
                <asp:Label ID="Ingred1Label" runat="server" Text='<%# Bind("Ingred1") %>' />
                <br />
                Ingred2:
                <asp:Label ID="Ingred2Label" runat="server" Text='<%# Bind("Ingred2") %>' />
                <br />
                Ingred3:
                <asp:Label ID="Ingred3Label" runat="server" Text='<%# Bind("Ingred3") %>' />
                <br />
                Ingred4:
                <asp:Label ID="Ingred4Label" runat="server" Text='<%# Bind("Ingred4") %>' />
                <br />
                Ingred5:
                <asp:Label ID="Ingred5Label" runat="server" Text='<%# Bind("Ingred5") %>' />
                <br />
                Prep:
                <asp:Label ID="PrepLabel" runat="server" Text='<%# Bind("Prep") %>' />
                <br />
                Notes:
                <asp:Label ID="NotesLabel" runat="server" Text='<%# Bind("Notes") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
<br />
<span class="header">I could not figure out how to get the form view to populate with the detail view info.</span>




    </form>
    <i class="footer">Copyright © 2014. Created by Sean Abbas.</i>
</body>
</html>
