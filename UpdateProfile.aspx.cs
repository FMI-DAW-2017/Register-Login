using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            TextBox t;
            RadioButtonList r;

            t = LVProfile.FindControl("FirstNameTB") as TextBox;
            if (t != null)
                t.Text = Profile.FirstName;

            t = LVProfile.FindControl("LastNameTB") as TextBox;
            if (t != null)
                t.Text = Profile.LastName;

            t = LVProfile.FindControl("BirthdateTB") as TextBox;
            if (t != null)
                t.Text = Profile.Birthdate;

            r = LVProfile.FindControl("GenderRadio") as RadioButtonList;
            if (r != null)
                r.SelectedValue = Profile.Gender.ToString();


        }
    }

    protected void SaveButton_Click(object sender, EventArgs e)
    {
        TextBox t;
        RadioButtonList r;
        Literal l;

        l = LVProfile.FindControl("LMessage") as Literal;
        try
        {
            t = LVProfile.FindControl("FirstNameTB") as TextBox;
            if (t != null)
                Profile.FirstName = t.Text;

            t = LVProfile.FindControl("LastNameTB") as TextBox;
            if (t != null)
                Profile.LastName = t.Text;

            t = LVProfile.FindControl("BirthdateTB") as TextBox;
            if (t != null)
                Profile.Birthdate = t.Text;

            r = LVProfile.FindControl("GenderRadio") as RadioButtonList;
            if (r != null)
                Profile.Gender = int.Parse(r.SelectedValue);

            if (l != null)
                l.Text = "Profile saved!";
        } catch (Exception ex)
        {
            if (l != null)
                l.Text = "Error saving profile:" + ex.Message;
        }


    }
}