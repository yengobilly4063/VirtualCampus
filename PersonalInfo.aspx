﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Interface.Master" AutoEventWireup="true" CodeBehind="PersonalInfo.aspx.cs" Inherits="VirtualCampus.PersonalInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="InterfacetitlePlaceHolder" runat="server">
 Student's Personal Information Search
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style14
    {
        font-size: 12px;
        color: #0099CC;
    }
    .style15
    {
        color: #FF0000;
    }
    .style16
    {
        color: #006600;
    }
        .style17
        {
            color: #0066FF;
        }
        .style18
        {
            color: #0000FF;
            font-weight: bold;
        }
        .style20
        {
            text-align: right;
            width: 447px;
        }
        .style21
        {
            text-align: left;
        }
        .style22
        {
            text-align: left;
            width: 132px;
        }
        .style23
        {
            font-weight: bold;
        }
        .style24
        {
            width: 345px;
        }
        .style25
        {
            margin-left: 0px;
        }
        .style26
        {
            color: #0000FF;
        }
        .style27
        {
            color: #FF00FF;
            background-color: #F0FFFF;
        }
        .style28
        {
            color: #FF0000;
            background-color: #FFFF66;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="style6">
    <tr>
        <td class="style12">
            <strong>
            <asp:Label ID="Label2" runat="server" CssClass="style14" 
                Text="Student Personal Information Search"></asp:Label>
            <br />
            </strong>
            <hr />
            <table class="style6">
                <tr>
                    <td class="style20">
                        <strong>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Enter Student_id :" 
                            CssClass="style17"></asp:Label>
                        </strong>
                    </td>
                    <td class="style22">
                        <strong>
                        <asp:TextBox ID="txtStudent_id" runat="server" BorderStyle="Ridge" 
                            CssClass="style18"></asp:TextBox>
                        </strong>
                    </td>
                    <td class="style21">
                        <strong>
                        <asp:Button ID="cmdDisplay" runat="server" Text="Display Information" 
                            CssClass="style23" onclick="cmdDisplay_Click" />
                        </strong>
                    </td>
                    <td>
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtStudent_id" CssClass="style15" 
                            ErrorMessage="Please Provide valid Student_id">Must Enter Student_id</asp:RequiredFieldValidator>
                        </strong>
                    </td>
                    <td>
                        <strong>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtStudent_id" CssClass="style16" 
                            ErrorMessage="Enter Only Numbers!" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                        </strong>
                    </td>
                </tr>
            </table>
            <table class="style6">
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="lblWhatHappened" runat="server" CssClass="style27"></asp:Label>
                        </strong>
                    </td>
                </tr>
            </table>
            <table class="style6">
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="lblHeader" runat="server" CssClass="style26"></asp:Label>
                        </strong>
                    </td>
                </tr>
            </table>
            <table class="style6">
                <tr>
                    <td class="style24">
                        <strong>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                            CssClass="style28" 
                            HeaderText="Errors List(Generated By Abraham's Intelligence Machine)" 
                            ShowMessageBox="True" />
                        </strong></td>
                    <td>
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                            CssClass="style25" DataKeyNames="Student_id" 
                            DataSourceID="SqlDataSource1" 
                            Height="26px" Width="417px">
                            <FieldHeaderStyle BorderStyle="Ridge" />
                            <Fields>
                                <asp:BoundField DataField="Student_id" HeaderText="Student_id" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="Student_id" />
                                <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                                    SortExpression="FirstName" />
                                <asp:BoundField DataField="FatherName" HeaderText="FatherName" 
                                    SortExpression="FatherName" />
                                <asp:BoundField DataField="MotherName" HeaderText="MotherName" 
                                    SortExpression="MotherName" />
                                <asp:BoundField DataField="GuardianName" HeaderText="GuardianName" 
                                    SortExpression="GuardianName" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" 
                                    SortExpression="Gender" />
                                <asp:BoundField DataField="BirthPlace" HeaderText="BirthPlace" 
                                    SortExpression="BirthPlace" />
                                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                                <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" 
                                    SortExpression="ContactNumber" />
                                <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" 
                                    SortExpression="MobileNumber" />
                                <asp:BoundField DataField="E-Mail" HeaderText="E-Mail" 
                                    SortExpression="E-Mail" />
                                <asp:BoundField DataField="PhoneHome" HeaderText="PhoneHome" 
                                    SortExpression="PhoneHome" />
                                <asp:BoundField DataField="Religion" HeaderText="Religion" 
                                    SortExpression="Religion" />
                                <asp:BoundField DataField="Category" HeaderText="Category" 
                                    SortExpression="Category" />
                                <asp:BoundField DataField="Caste" HeaderText="Caste" SortExpression="Caste" />
                                <asp:BoundField DataField="MotherTongue" HeaderText="MotherTongue" 
                                    SortExpression="MotherTongue" />
                            </Fields>
                            <FooterStyle BorderStyle="Ridge" />
                        </asp:DetailsView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" 
                            SelectCommand="SELECT [Student_id], [FirstName], [FatherName], [MotherName], [GuardianName], [Gender], [BirthPlace], [DOB], [ContactNumber], [MobileNumber], [E-Mail], [PhoneHome], [Religion], [Category], [Caste], [MotherTongue] FROM [StudentRegistrations] WHERE ([Student_id] = @Student_id)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtStudent_id" Name="Student_id" 
                                    PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
