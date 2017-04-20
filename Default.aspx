<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <style>
        body {
            font: 11px verdana;
        }
    </style>

    <script src='https://www.google.com/recaptcha/api.js'></script>
    <meta charset="utf-8">

		<title>Polynt Composites USA Inc Safety Data Sheets Portal</title>
		<meta name="description" content="Polynt">

		<link rel="stylesheet" href="css/StyleSheet.css">

		<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
         <script src='https://www.google.com/recaptcha/api.js'></script>


		<link rel="apple-touch-icon" sizes="57x57" href="images/apple-icon-57x57.png">
		<link rel="apple-touch-icon" sizes="60x60" href="images/apple-icon-60x60.png">
		<link rel="apple-touch-icon" sizes="72x72" href="images/apple-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="76x76" href="images/apple-icon-76x76.png">
		<link rel="apple-touch-icon" sizes="114x114" href="images/apple-icon-114x114.png">
		<link rel="apple-touch-icon" sizes="120x120" href="images/apple-icon-120x120.png">
		<link rel="apple-touch-icon" sizes="144x144" href="images/apple-icon-144x144.png">
		<link rel="apple-touch-icon" sizes="152x152" href="images/apple-icon-152x152.png">
		<link rel="apple-touch-icon" sizes="180x180" href="images/apple-icon-180x180.png">
		<link rel="icon" type="image/png" sizes="192x192"  href="images/android-icon-192x192.png">
		<link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="96x96" href="images/favicon-96x96.png">
		<link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
		<link rel="manifest" href="images/manifest.json">
		<meta name="msapplication-TileColor" content="#ffffff">
		<meta name="msapplication-TileImage" content="images/ms-icon-144x144.png">
		<meta name="theme-color" content="#005682">		
   
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-wrapper">
			<a href="http://cart.polyntusa.info"><img class="logo" src="http://cart.polyntusa.info/images/polynt-logo.png" alt="PolyNT Logo" /></a>
			<h4>Polynt Composities USA Inc.</h4>
			<h2>Safety Data Sheets Portal</h2>
			<p>Sign in or register to access the Polynt USA Safety Datasheet Portal</p>
			<asp:Literal ID="litMessage" runat="server" Visible="false" />
			<div class="buttons small">
				<a href="http://cart.polyntusa.info/PublishCart/">sign in</a>
				<a id="register-button" href="#">register</a>
			</div>
            <div id="registration-panel">
			<p>Fill in the following required fields and a representative will review your 
			information and contact you via email within 2-3 business days 
			with your log in credentials.</p>
                
                <asp:ValidationSummary ID="valSummary" DisplayMode="BulletList" HeaderText="The following error(s) have occurred: " runat="server" CssClass="validationErrors" /><br />
                 <br/> <label for="txFirstName">first name *</label>
            <asp:TextBox ID="txtFirstName" runat="server" /><asp:RequiredFieldValidator ControlToValidate="txtFirstName" runat="server" Display="None" ErrorMessage="First Name is required." />
    
                <label for="txtLastName">last name *</label>
            <asp:TextBox ID="txtLastName" runat="server" /><asp:RequiredFieldValidator ControlToValidate="txtLastName" runat="server" Display="None" ErrorMessage="Last Name is required." />

              			<label for="txtCompany">company *</label>
            <asp:TextBox ID="txtCompany" runat="server" /><asp:RequiredFieldValidator ControlToValidate="txtCompany" runat="server" Display="None" ErrorMessage="Company is required." />
                
                <label for="txtEmail">email *</label>
            <asp:TextBox ID="txtEmail" runat="server" /><asp:RequiredFieldValidator ControlToValidate="txtEmail" runat="server" Display="None" ErrorMessage="Email is required." />
                
                <label for="txtWorkPhone">work phone *</label>
            <asp:TextBox ID="txtWorkPhone" runat="server" /><asp:RequiredFieldValidator ControlToValidate="txtWorkPhone" runat="server" Display="None" ErrorMessage="Work Phone is required." />  
                
         <label for="rblType">Type</label>
            <asp:RadioButtonList ID="rblType" runat="server" RepeatDirection="Horizontal" CssClass="regType">
                <asp:ListItem Text="New Registration" Value="New" Selected="True" />
                <asp:ListItem Text="Reset Credentials" Value="Reset" />
            </asp:RadioButtonList>

                 <div class="g-recaptcha" data-sitekey="6Ld00BwUAAAAAOjT3egcGLKpO2QKm0u1YEAsIlbg" data-size="invisible"></div>
                <div class="buttons small">
                 <asp:Button OnClick="btnRegister_Click" Text="Submit Registration" ID="btnRegister" runat="server" CssClass="submit-registration-button" />
                <p class="small"><i>This information will be used by Polynt USA Composites 
				only and will not be shared.
			</i></p>

          
        
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.3/jquery.min.js"></script>
	  	<script src="js/script.js"></script>      
            </div>     
    </form>
</body>
</html>
