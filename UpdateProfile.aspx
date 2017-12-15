<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="UpdateProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LoginVIew ID="LVProfile" runat="server">
        <AnonymousTemplate>
            This page has restriced access.
            <br/>
            Return to <asp:HyperLink ID="linkToHome"
                 NavigateUrl="~/Home.aspx"
                 runat="server">Home</asp:HyperLink> or sign in.
        </AnonymousTemplate>
        <LoggedInTemplate>
            <div>
                <asp:Label ID="firstNameLbl" runat="server" Text="FirstName"></asp:Label>
                <Asp:TextBox ID="FirstNameTB" runat="server"></Asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredField1" 
                    ControlToValidate="FirstNameTB"
                    runat="server"
                    ErrorMessage="First Name is required"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label ID="Label1" runat="server" Text="LastName"></asp:Label>
                <Asp:TextBox ID="LastNameTB" runat="server"></Asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                    ControlToValidate="LastNameTB"
                    runat="server"
                    ErrorMessage="Last Name is required"></asp:RequiredFieldValidator>
            </div>
<div>
                <asp:Label ID="Label2" runat="server" Text="Birthdate"></asp:Label>
                <Asp:TextBox ID="BirthdateTB" runat="server"></Asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                    ControlToValidate="BirthdateTB"
                    runat="server"
                    ErrorMessage="Birthdate is required"></asp:RequiredFieldValidator>
                         
</div>
<div>
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
                <asp:RadioButtonList ID="GenderRadio" runat="server">
                    <asp:ListItem Text="Female" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                    ControlToValidate="GenderRadio"
                    runat="server"
                    ErrorMessage="Gender is required"></asp:RequiredFieldValidator>
         
</div>
            <div>
                <asp:Button runat="server" Text="Save Profile" OnClick="SaveButton_Click" />
                <br/>
                <asp:Literal ID="LMessage" runat="server"></asp:Literal>
            </div>

        </LoggedInTemplate>
    </asp:LoginVIew>
</asp:Content>

