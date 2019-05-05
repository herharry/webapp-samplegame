<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="testing.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">game</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">menu<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      
    </ul>
    <span class="navbar-text">
    <span class="glyphicon glyphicon-log-out"></span>

     interactive game with leap motion
    </span>
  </div>
</nav>
    <form id="form1" runat="server">
      
        <div>
            Hii all
            

        </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>


        </p>
        <p>
        <asp:Button ID="Button1" runat="server" Text="log out" class="btn btn-default btn-sm" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Text="game" class="btn btn-default btn-sm" OnClick="Button2_Click"/>

        </p>
    </form>
</body>
</html>
