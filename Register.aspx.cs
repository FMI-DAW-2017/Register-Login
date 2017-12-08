using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CreateUserWizard_CreateUser(object sender, EventArgs e)
    {
        if (!Roles.RoleExists("User"))
        {
            Roles.CreateRole("User");
        }
        Roles.AddUserToRole(CreateUser.UserName, "User");
    }

    protected void CreateUser_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        CreateUserWizard cuw = (CreateUserWizard)sender;
        ProfileCommon p = Profile.GetProfile(cuw.UserName);

        p.FirstName = FirstName.Text;
        p.LastName = LastName.Text;
        p.Birthdate = Birthdate.Text;
        p.Gender = int.Parse(Gender.SelectedValue);

        p.Save();
    }

    protected void CreateUserWizard_ContinueButtonClick(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}