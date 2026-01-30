<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminAfetrLogIn.aspx.cs" Inherits="Postbloodreq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 419px;
            color: #FFFFFF;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 165px;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 602px; background-repeat: repeat;">

        

        <table class="auto-style9" style="background-color: #000000; height: 557px; width: 100%;">
            <tr>
                <td class="auto-style6" style="background-color: #920001">
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style8" style="color: #FFFFFF">&nbsp;&nbsp; VIEW</td>
                            <td>&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>--SELECT--</asp:ListItem>
                                    <asp:ListItem>--DONOR--</asp:ListItem>
                                    <asp:ListItem>--HOSPITALS--</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="auto-style8" style="color: #FFFFFF">&nbsp;&nbsp; VIEW BY</td>
                            <td>&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                    <asp:ListItem>--STATE--</asp:ListItem>
                                    
                                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                                    <asp:ListItem>--CITY--</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        GG
                    </table>

                    <br />
                    <asp:Panel ID="Panel2" runat="server">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Blood_group" HeaderText="Blood_group" SortExpression="Blood_group" />
                                <asp:BoundField DataField="column1" HeaderText="column1" SortExpression="column1" />
                                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbcs %>" DeleteCommand="DELETE FROM [Donor_reg] WHERE [Email] = @original_Email AND [Name] = @original_Name AND [Blood_group] = @original_Blood_group AND [Mobile_no.] = @original_column1 AND [Age] = @original_Age AND [City] = @original_City AND [State] = @original_State" InsertCommand="INSERT INTO [Donor_reg] ([Name], [Blood_group], [Mobile_no.], [Age], [City], [State], [Email]) VALUES (@Name, @Blood_group, @column1, @Age, @City, @State, @Email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Name], [Blood_group], [Mobile_no.] AS column1, [Age], [City], [State], [Email] FROM [Donor_reg]" UpdateCommand="UPDATE [Donor_reg] SET [Name] = @Name, [Blood_group] = @Blood_group, [Mobile_no.] = @column1, [Age] = @Age, [City] = @City, [State] = @State WHERE [Email] = @original_Email AND [Name] = @original_Name AND [Blood_group] = @original_Blood_group AND [Mobile_no.] = @original_column1 AND [Age] = @original_Age AND [City] = @original_City AND [State] = @original_State">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Name" Type="String" />
                                <asp:Parameter Name="original_Blood_group" Type="String" />
                                <asp:Parameter Name="original_column1" Type="String" />
                                <asp:Parameter Name="original_Age" Type="String" />
                                <asp:Parameter Name="original_City" Type="String" />
                                <asp:Parameter Name="original_State" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Blood_group" Type="String" />
                                <asp:Parameter Name="column1" Type="String" />
                                <asp:Parameter Name="Age" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="State" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Blood_group" Type="String" />
                                <asp:Parameter Name="column1" Type="String" />
                                <asp:Parameter Name="Age" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="State" Type="String" />
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Name" Type="String" />
                                <asp:Parameter Name="original_Blood_group" Type="String" />
                                <asp:Parameter Name="original_column1" Type="String" />
                                <asp:Parameter Name="original_Age" Type="String" />
                                <asp:Parameter Name="original_City" Type="String" />
                                <asp:Parameter Name="original_State" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbcs %>" SelectCommand="SELECT [Name], [Blood_group], [Mobile_no.] AS column1, [Age], [State], [City] FROM [Donor_reg]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbcs %>" DeleteCommand="DELETE FROM [Donor_reg] WHERE [Email] = @original_Email AND [Name] = @original_Name AND [Blood_group] = @original_Blood_group AND [Mobile_no.] = @original_column1 AND [Age] = @original_Age AND [State] = @original_State AND [City] = @original_City" InsertCommand="INSERT INTO [Donor_reg] ([Name], [Blood_group], [Mobile_no.], [Age], [State], [City], [Email]) VALUES (@Name, @Blood_group, @column1, @Age, @State, @City, @Email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Name], [Blood_group], [Mobile_no.] AS column1, [Age], [State], [City], [Email] FROM [Donor_reg] WHERE (([State] = @State) AND ([City] = @City))" UpdateCommand="UPDATE [Donor_reg] SET [Name] = @Name, [Blood_group] = @Blood_group, [Mobile_no.] = @column1, [Age] = @Age, [State] = @State, [City] = @City WHERE [Email] = @original_Email AND [Name] = @original_Name AND [Blood_group] = @original_Blood_group AND [Mobile_no.] = @original_column1 AND [Age] = @original_Age AND [State] = @original_State AND [City] = @original_City">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Name" Type="String" />
                                <asp:Parameter Name="original_Blood_group" Type="String" />
                                <asp:Parameter Name="original_column1" Type="String" />
                                <asp:Parameter Name="original_Age" Type="String" />
                                <asp:Parameter Name="original_State" Type="String" />
                                <asp:Parameter Name="original_City" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Blood_group" Type="String" />
                                <asp:Parameter Name="column1" Type="String" />
                                <asp:Parameter Name="Age" Type="String" />
                                <asp:Parameter Name="State" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList2" Name="State" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList3" Name="City" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Blood_group" Type="String" />
                                <asp:Parameter Name="column1" Type="String" />
                                <asp:Parameter Name="Age" Type="String" />
                                <asp:Parameter Name="State" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Name" Type="String" />
                                <asp:Parameter Name="original_Blood_group" Type="String" />
                                <asp:Parameter Name="original_column1" Type="String" />
                                <asp:Parameter Name="original_Age" Type="String" />
                                <asp:Parameter Name="original_State" Type="String" />
                                <asp:Parameter Name="original_City" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </asp:Panel>
                    <asp:Panel ID="Panel3" runat="server">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Email" DataSourceID="SqlDataSource6">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" />
                                <asp:BoundField DataField="Hospital_name" HeaderText="Hospital_name" SortExpression="Hospital_name" />
                                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbcs %>" DeleteCommand="DELETE FROM [Hospital_reg] WHERE [Email] = @original_Email AND [Hospital_name] = @original_Hospital_name AND [State] = @original_State AND [City] = @original_City AND [Address] = @original_Address" InsertCommand="INSERT INTO [Hospital_reg] ([Hospital_name], [Email], [State], [City], [Address]) VALUES (@Hospital_name, @Email, @State, @City, @Address)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Hospital_name], [Email], [State], [City], [Address] FROM [Hospital_reg]" UpdateCommand="UPDATE [Hospital_reg] SET [Hospital_name] = @Hospital_name, [State] = @State, [City] = @City, [Address] = @Address WHERE [Email] = @original_Email AND [Hospital_name] = @original_Hospital_name AND [State] = @original_State AND [City] = @original_City AND [Address] = @original_Address">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Hospital_name" Type="String" />
                                <asp:Parameter Name="original_State" Type="String" />
                                <asp:Parameter Name="original_City" Type="String" />
                                <asp:Parameter Name="original_Address" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Hospital_name" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="State" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Address" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Hospital_name" Type="String" />
                                <asp:Parameter Name="State" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Address" Type="String" />
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Hospital_name" Type="String" />
                                <asp:Parameter Name="original_State" Type="String" />
                                <asp:Parameter Name="original_City" Type="String" />
                                <asp:Parameter Name="original_Address" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbcs %>" DeleteCommand="DELETE FROM [Hospital_reg] WHERE [Email] = @original_Email AND [Hospital_name] = @original_Hospital_name AND [State] = @original_State AND [City] = @original_City AND [Address] = @original_Address" InsertCommand="INSERT INTO [Hospital_reg] ([Hospital_name], [Email], [State], [City], [Address]) VALUES (@Hospital_name, @Email, @State, @City, @Address)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Hospital_name], [Email], [State], [City], [Address] FROM [Hospital_reg] WHERE ([State] = @State)" UpdateCommand="UPDATE [Hospital_reg] SET [Hospital_name] = @Hospital_name, [State] = @State, [City] = @City, [Address] = @Address WHERE [Email] = @original_Email AND [Hospital_name] = @original_Hospital_name AND [State] = @original_State AND [City] = @original_City AND [Address] = @original_Address">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Hospital_name" Type="String" />
                                <asp:Parameter Name="original_State" Type="String" />
                                <asp:Parameter Name="original_City" Type="String" />
                                <asp:Parameter Name="original_Address" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Hospital_name" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="State" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Address" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList2" Name="State" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Hospital_name" Type="String" />
                                <asp:Parameter Name="State" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Address" Type="String" />
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Hospital_name" Type="String" />
                                <asp:Parameter Name="original_State" Type="String" />
                                <asp:Parameter Name="original_City" Type="String" />
                                <asp:Parameter Name="original_Address" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbcs %>" DeleteCommand="DELETE FROM [Hospital_reg] WHERE [Email] = @original_Email AND [Hospital_name] = @original_Hospital_name AND [State] = @original_State AND [City] = @original_City AND [Address] = @original_Address" InsertCommand="INSERT INTO [Hospital_reg] ([Hospital_name], [Email], [State], [City], [Address]) VALUES (@Hospital_name, @Email, @State, @City, @Address)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Hospital_name], [Email], [State], [City], [Address] FROM [Hospital_reg] WHERE (([City] = @City) AND ([State] = @State))" UpdateCommand="UPDATE [Hospital_reg] SET [Hospital_name] = @Hospital_name, [State] = @State, [City] = @City, [Address] = @Address WHERE [Email] = @original_Email AND [Hospital_name] = @original_Hospital_name AND [State] = @original_State AND [City] = @original_City AND [Address] = @original_Address">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Hospital_name" Type="String" />
                                <asp:Parameter Name="original_State" Type="String" />
                                <asp:Parameter Name="original_City" Type="String" />
                                <asp:Parameter Name="original_Address" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Hospital_name" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="State" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Address" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList3" Name="City" PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList2" Name="State" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Hospital_name" Type="String" />
                                <asp:Parameter Name="State" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Address" Type="String" />
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Hospital_name" Type="String" />
                                <asp:Parameter Name="original_State" Type="String" />
                                <asp:Parameter Name="original_City" Type="String" />
                                <asp:Parameter Name="original_Address" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </asp:Panel>
                    <br />

                </td>
                <td style="background-color: #860000; background-repeat: no-repeat;" class="auto-style18">&nbsp;
                    <asp:Image ID="Image2" runat="server" Height="551px" ImageUrl="~/NewFolder1/blood-donation-drive-ibex-global-1.jpg" Width="793px" style="margin-right: 0px; margin-top: 0px" />
                    &nbsp;</td>
            </tr>
        </table>

        

    </div>
</asp:Content>

