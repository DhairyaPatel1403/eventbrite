
<!DOCTYPE html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="eventbrite.main" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="style1.css" />

	<title></title>
</head>
<body>



	<form id="form1" runat="server">
    	<asp:Button ID="btnAddEvent" runat="server" Text="Add Event" OnClick="btnAddEvent_Click" />
    	<div>

        	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="event_id" DataSourceID="EntityDataSource1">
            	<Columns>
                	<asp:BoundField DataField="event_id" HeaderText="event_id" ReadOnly="True" SortExpression="event_id"></asp:BoundField>
                	<asp:BoundField DataField="event_name" HeaderText="event_name" SortExpression="event_name"></asp:BoundField>
                	<asp:BoundField DataField="username" HeaderText="username" SortExpression="username"></asp:BoundField>
                	<asp:BoundField DataField="participants" HeaderText="participants" SortExpression="participants"></asp:BoundField>
                	<asp:BoundField DataField="event_type" HeaderText="event_type" SortExpression="event_type"></asp:BoundField>


                	<asp:TemplateField HeaderText="Enter event_key">
                    	<ItemTemplate>
                        	<asp:TextBox ID="txtEventKey" runat="server"></asp:TextBox>
                    	</ItemTemplate>
                	</asp:TemplateField>


                	<asp:TemplateField HeaderText="Increment Count">
                    	<ItemTemplate>
                        	<asp:Button ID="btnIncrement" runat="server" Text="Join Event" OnClick="btnIncrement_Click" CommandArgument='<%# Eval("event_id") %>' />
                    	</ItemTemplate>
                	</asp:TemplateField>
            	</Columns>
        	</asp:GridView>



        	<asp:EntityDataSource ID="EntityDataSource1" runat="server" DefaultContainerName="EventDbContext" ConnectionString="name=EventDbContext" EnableFlattening="False" EntitySetName="events"></asp:EntityDataSource>
    	</div>
	</form>
</body>
</html>
