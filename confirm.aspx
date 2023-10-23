<!DOCTYPE html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirm.aspx.cs" Inherits="eventbrite.confirm" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="style2.css" />

	<title>Confirmation Page</title>
</head>
<body>
	<form id="form1" runat="server">
    	<div>
        	<h1>Confirmation Page</h1>
        	<p class="text-center"><strong><% =EventId %></strong></p>
        	<p class="text-center">Here's the link to join - https://apps.google.com/meet/</p>
    	</div>
	</form>
</body>
</html>
