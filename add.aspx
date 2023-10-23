<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="eventbrite.add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Add Event</title>

        <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        .container {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 20px auto;
            padding: 20px;
        }
        h1 {
            color: #333;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        .form-control {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .btn-primary {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>

</head>
<body>
	<form id="form1" runat="server">
    	<div>
        	<h1>Add Event</h1>
        	<div>
            	<label for="eventName">Event Name:</label>
            	<asp:TextBox ID="txtEventName" runat="server" CssClass="form-control" />
        	</div>
        	<div>
            	<label for="organizer">Organizer:</label>
            	<asp:TextBox ID="txtOrganizer" runat="server" CssClass="form-control" />
        	</div>
        	<div>
            	<label for="participants">Participants:</label>
            	<asp:TextBox ID="txtParticipants" runat="server" CssClass="form-control" />
        	</div>
        	<div>
            	<label for="eventType">Event Type:</label>
            	<asp:TextBox ID="txtEventType" runat="server" CssClass="form-control" />
        	</div>
        	<div>
            	<label for="eventKey">Event Key:</label>
            	<asp:TextBox ID="txtEventKey" runat="server" CssClass="form-control" />
        	</div>
        	<asp:Button ID="btnAddEvent" runat="server" Text="Add Event" OnClick="btnAddEvent_Click" CssClass="btn btn-primary" />
    	</div>
	</form>
</body>
</html>
