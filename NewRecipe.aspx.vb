
Partial Class NewRecipe
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        newrecipeFormView.Focus()

    End Sub

    Protected Sub newrecipeFormView_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles newrecipeFormView.ItemInserted

        Response.Redirect("./Default.aspx")

    End Sub
End Class
