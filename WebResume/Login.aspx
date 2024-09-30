<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebResume.Login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <title></title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
    }

    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .card {
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }

    .card-header {
        text-align: center;
        background-color: #343a40; /* Dark color */
        color: #fff;
        font-size: 18px;
        padding: 10px;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
    }

    .card-body {
        padding: 20px;
    }

    .label {
        display: block;
        text-align: center;
        margin: 5px;
        color: red;
    }

    input {
        width: 100%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 5px;
        margin-bottom: 10px; /* Add some margin to separate inputs */
    }

    .btn-primary {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        display: block; /* Make button a block element to center it */
        margin: 0 auto; /* Center the button */
        width: 100%; /* Set width for consistency */
    }

    .btn-primary:hover {
        background-color: #0056b3;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="card mx-auto" style="width: 400px;">
                <div class="card-header bg-dark text-white text-center">Resume</div>
                <div class="card-body">
                    <div id="form-username">
                        <asp:Label ID="LbUsername" runat="server" Text="Username :"></asp:Label>     
                        <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="user" runat="server" ControlToValidate="username" ErrorMessage="Please enter a user name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div id="form-password" style="padding-top:10px">
                        <asp:Label ID="LbPassword" runat="server" Text="Password :" ></asp:Label>    
                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="pass" runat="server" ControlToValidate="password" ErrorMessage="Please enter a password"  ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" CssClass="btn-primary"/>
                    <asp:Label ID="LbNotification" runat="server" Text="Invalid username or password.Please try again." CssClass ="label" Visible ="false"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
