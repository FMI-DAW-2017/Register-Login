<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:CreateUserWizard ID="CreateUser" runat="server"
        OnCreatedUser="CreateUserWizard_CreateUser"
        OnFinishButtonClick="CreateUser_FinishButtonClick"
        OnContinueButtonClick="CreateUserWizard_ContinueButtonClick">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserStep1"
                runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td colspan="2">Sign Up</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="UserNameLbl"
                                    runat="server"
                                    AssociatedControlID="UserName">User Name:</asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>                           
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="PasswordLbl"
                                    runat="server"
                                    AssociatedControlID="Password">Password:</asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox>                           
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="ConfirmPasswordLbl"
                                    runat="server"
                                    AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" TextMode="Password" runat="server"></asp:TextBox>                           
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="EmailLbl"
                                    runat="server"
                                    AssociatedControlID="Email">Email:</asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>                           
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="QuestionLbl"
                                    runat="server"
                                    AssociatedControlID="Question">Secret Question:</asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="Question" runat="server"></asp:TextBox>                           
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="AnswerLbl"
                                    runat="server"
                                    AssociatedControlID="Answer">Secret Answer:</asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>                           
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:WizardStep runat="server" 
                Title="Complete Profile"
                AllowReturn="false">
                <div>
                    <asp:Label ID="FistNameLbl" Text="FirstName" AssociatedControlID="FirstName" runat="server"></asp:Label>
                    <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="LastNameLbl" Text="LastName" AssociatedControlID="LastName" runat="server"></asp:Label>
                    <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="BirthDateLbl" Text="Birthdate" AssociatedControlID="Birthdate" runat="server"></asp:Label>
                    <asp:TextBox ID="Birthdate" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="GenderLbl" Text="Gender" AssociatedControlID="Gender" runat="server"></asp:Label>
                    <asp:RadioButtonList ID="Gender" runat="server">
                        <asp:ListItem Text="Female" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </asp:WizardStep>
            <asp:CompleteWizardStep runat="server"></asp:CompleteWizardStep> 
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>

