﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true" CodeFile="AddEmployee.aspx.cs" Inherits="Admin_AddEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
        <%--<div class="row">
            <div class="col s8 m6 l4 offset-s2 offset-m4 offset-l4">
                <asp:TextBox runat="server" ID="txtName" placeholder="Name" ToolTip="Name"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator SetFocusOnError="true" ErrorMessage="&nbsp;Required" ControlToValidate="txtName" CssClass="input-field btn grey lighten-4 teal-text " runat="server" />
        </div>
        <div class="row">
            <div class="col s8 m3 l2 offset-s2 offset-m4 offset-l4">
                <asp:TextBox runat="server" ID="txtDateOfBirth" placeholder="Date of Birth">
                </asp:TextBox>
            </div>
            <asp:RequiredFieldValidator SetFocusOnError="true" ErrorMessage="Required" ControlToValidate="txtDateOfBirth" CssClass="input-field btn grey lighten-4 teal-text" runat="server" />
            <asp:RegularExpressionValidator SetFocusOnError="true" runat="server" ControlToValidate="txtDateOfBirth" ErrorMessage="nbsp;DD/MM/YYYY Format" CssClass="input-field btn grey lighten-4 teal-text " ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$"></asp:RegularExpressionValidator>
            <div class="col s8 m3 l2 offset-s2">
                <asp:TextBox runat="server" ID="txtDateOfJoining" placeholder="Date of Joining"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator SetFocusOnError="true" ErrorMessage="Required" ControlToValidate="txtDateOfJoining" CssClass="input-field btn grey lighten-4 teal-text" runat="server" />
            <asp:RegularExpressionValidator SetFocusOnError="true" runat="server" ControlToValidate="txtDateOfJoining" ErrorMessage=" DD/MM/YYYY Format" CssClass="input-field btn grey lighten-4 teal-text" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$"></asp:RegularExpressionValidator>
        </div>
        <div class="row">
            <div class="col s8 m3 l2 offset-s2 offset-m4 offset-l4">
                <asp:DropDownList ID="ddlDepartment" runat="server" Visible="true" CssClass="input-field btn grey lighten-4 teal-text">
                </asp:DropDownList>
            </div>
            <div class="col s8 m3 l2 offset-s2">
                <asp:DropDownList ID="ddlRole" runat="server" Visible="true" CssClass="input-field btn grey lighten-4 teal-text">
                </asp:DropDownList>
            </div>
        </div>
        <div class="row">
            <div class="col s8 m8 l8 offset-s2 offset-m4 offset-l4" style="margin-top: 15px">
                <asp:RadioButton ID="rdrbtnFemale" GroupName="Gender" Text="Female" CssClass="with-gap" Checked="true" runat="server" />
                <asp:RadioButton ID="rdrbtnMale" GroupName="Gender" Text="Male" CssClass="with-gap" runat="server" />
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col s8 m6 l4 offset-s2 offset-m4 offset-l4">
                <asp:TextBox runat="server" ID="txtContactNumber" placeholder="Contact Number">
                </asp:TextBox>
            </div>
            <asp:RequiredFieldValidator SetFocusOnError="true" ErrorMessage=" Required" ControlToValidate="txtContactNumber" CssClass="input-field btn grey lighten-4 teal-text" runat="server" />
            <asp:RegularExpressionValidator SetFocusOnError="true" runat="server" ControlToValidate="txtContactNumber" ErrorMessage=" Invalid Mobile Number" CssClass="input-field btn grey lighten-4 teal-text" ValidationExpression="^([0-9]*){10}$"></asp:RegularExpressionValidator>
        </div>
        <div class="row">
            <div class="col s8 m6 l4 offset-s2 offset-m4 offset-l4">
                <asp:TextBox runat="server" ID="txtPassword" placeholder="Password" TextMode="Password">
                </asp:TextBox>
            </div>
            <asp:RequiredFieldValidator SetFocusOnError="true" ErrorMessage=" Required" ControlToValidate="txtPassword" CssClass="input-field btn grey lighten-4 teal-text" runat="server" />
        </div>
        <%-- <div class="col s8 m6 l4 offset-s2 offset-m4 offset-l4">
            <asp:FileUpload ID="fileUploadProfilePic" CssClass="file-path" runat="server" />
        </div>--%>
       <%-- <div class="row">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="upnlFileUpload" runat="server">
                <ContentTemplate>
                    <div class="col s8 m6 l4 offset-s2 offset-m4 offset-l4 file-field input-field">
                        <div class="btn grey lighten-4 teal-text">
                            Upload
                       <asp:FileUpload ID="fileUploadProfilePic" CssClass="file" runat="server" />
                        </div>
                        <div class="file-path-wrapper">
                            <asp:TextBox runat="server" ID="txtImage" placeholder="Upload Image">
                            </asp:TextBox>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="row">
            <div class="col s10 m10 l10 offset-s2 offset-m4 offset-l4">
                <asp:Button ID="btnSUbmit" runat="server" Text="Add Employee" OnClick="btnSUbmit_Click" CssClass="waves-effect waves-light btn" />
            </div>
        </div>--%>

    <div class="row">
        <div class="col s12">
            <div class="col s12 breadcrumb">
                <br />
                <a href="./ManageMasterEntries.aspx" class="grey-text">Home &nbsp;&nbsp;></a>
                <a href="./ViewEmployee.aspx" class="grey-text">Employees Details &nbsp;&nbsp;></a>
                <a href="#!" class="teal-text">&nbsp;&nbsp;Edit Employees &nbsp;&nbsp;</a>
            </div>
        </div>
        <br />
        <div class="col s8 m6 l4 offset-s2 offset-m4 offset-l4">
            <label for="txtName">Employee Id</label>
            <asp:TextBox runat="server" ID="txtEmployeeId" placeholder="Id" ToolTip="Id"></asp:TextBox>
            <asp:RequiredFieldValidator SetFocusOnError="true" ErrorMessage="&nbsp;Required" ControlToValidate="txtEmployeeId" CssClass="input-field btn grey lighten-4 teal-text " runat="server" />
        </div>
        <div class="col s8 m6 l4 offset-s2 offset-m4 offset-l4">
            <label for="txtName">Employee Name</label>
            <asp:TextBox runat="server" ID="txtName" placeholder="Name" ToolTip="Name"></asp:TextBox>
            <asp:RequiredFieldValidator SetFocusOnError="true" ErrorMessage="&nbsp;Required" ControlToValidate="txtName" CssClass="input-field btn grey lighten-4 teal-text " runat="server" />
        </div>
        <div class="row">
            <div class="col s8 m3 l2 offset-s2 offset-m4 offset-l4">
                 <label for="txtDateOfJoining" class="text-black text-darken-4">Date Of Joining</label>
                <asp:TextBox runat="server" ID="txtDateOfJoining" placeholder="Date of Joining"></asp:TextBox>
            </div>
            <div class="col s8 m3 l2 offset-s2">
                <label class="text-darken-4">Weekly Off Day</label>
                <asp:DropDownList ID="ddlDays" runat="server" Visible="true" CssClass="input-field btn grey lighten-4 teal-text">
                    <asp:ListItem Text="Monday" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Tuesday" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Wednesday" Value="3"></asp:ListItem>
                    <asp:ListItem Text="Thursday" Value="4"></asp:ListItem>
                    <asp:ListItem Text="Friday" Value="5"></asp:ListItem>
                    <asp:ListItem Text="Saturday" Value="6"></asp:ListItem>
                    <asp:ListItem Text="Sunday" Value="0"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <asp:RequiredFieldValidator SetFocusOnError="true" ErrorMessage="Required" ControlToValidate="txtDateOfJoining" CssClass="input-field btn grey lighten-4 teal-text" runat="server" />
            <asp:RegularExpressionValidator SetFocusOnError="true" runat="server" ControlToValidate="txtDateOfJoining" ErrorMessage=" DD/MM/YYYY Format" CssClass="input-field btn grey lighten-4 teal-text" ValidationExpression="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$"></asp:RegularExpressionValidator>
        </div>
        <div class="row">
            <div class="col s8 m3 l2 offset-s2 offset-m4 offset-l4">
                 <label for="ddlDepartments">Department</label>
                <asp:DropDownList ID="ddlDepartments" runat="server" Visible="true" CssClass="input-field btn grey lighten-4 teal-text">
                </asp:DropDownList>
            </div>
            <div class="col s8 m3 l2 offset-s2">
                <label for="ddlRoles">Role</label>
                <asp:DropDownList ID="ddlRoles" runat="server" Visible="true" CssClass="input-field btn grey lighten-4 teal-text">
                </asp:DropDownList>
            </div>
        </div>
        <br />
        <br />
        <div class="row">
            <div class="col s8 m3 l2 offset-s2 offset-m4 offset-l4">
                 <label for="txtContactNumber">Contact Number</label>
                <asp:TextBox runat="server" ID="txtContactNumber" placeholder="Contact Number">
                </asp:TextBox>
                <%--                <asp:RequiredFieldValidator SetFocusOnError="true" ErrorMessage=" Required" ControlToValidate="txtContactNumber" CssClass="input-field btn grey lighten-4 teal-text" runat="server" />--%>
                <%--                <asp:RegularExpressionValidator SetFocusOnError="true" runat="server" ControlToValidate="txtContactNumber" ErrorMessage=" Invalid Mobile Number" CssClass="input-field btn grey lighten-4 teal-text" ValidationExpression="^([0-9]*){10}$"></asp:RegularExpressionValidator>--%>
            </div>
            <div class="col s8 m3 l2 offset-s2">
                 <label for="ddlShifts">Shift</label>
                <asp:DropDownList ID="ddlShifts" runat="server" Visible="true" CssClass="input-field btn grey lighten-4 teal-text">
                </asp:DropDownList>
            </div>
        </div>

        <br />
        <center></center>
        <div class="col s8 m6 l4 offset-s2 offset-m4 offset-l4">
            <asp:RadioButton ID="rdrbtnFemale" GroupName="Gender" Text="Female" CssClass="with-gap" Checked="true" runat="server" />
            &nbsp;
                    <asp:RadioButton ID="rdrbtnMale" GroupName="Gender" Text="Male" CssClass="with-gap" runat="server" />
        </div>
        </center>
        <br />
        <br />
        <br />
        <br />
        <center>
                 <div class="col s8 m6 l4 offset-s2 offset-m4 offset-l4">
                        <asp:LinkButton ID="lnkUpdateEmployee" runat="server" CssClass="btn waves-teal" OnClick="btnSUbmit_Click">
                                Add Employee
                        </asp:LinkButton>
                 </div>
        </center>
    </div>
</asp:Content>

