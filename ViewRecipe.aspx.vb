
Partial Class Recipe
    Inherits System.Web.UI.Page

    Protected Sub btn_Delete_Click(sender As Object, e As EventArgs) Handles btn_Delete.Click

        Response.Redirect("./EditRecipe.aspx")

    End Sub

    Protected Sub btn_Edit_Click(sender As Object, e As EventArgs) Handles btn_Edit.Click

        Response.Redirect("./EditRecipe.aspx")
    End Sub
End Class
