<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="testing.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
        .wrapper {
            display: flex;
            align-items: center;
            flex-direction: column; 
            justify-content: center;
            width: 100%;
            min-height: 100%;
            padding: 20px;
        }
        .pad{
            padding:50px
        }

        td{
            padding:5px  
        }

    </style>
</head>

<body>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.6/angular.min.js"></script>

    <div class="container wrapper pad" style="background-image:linear-gradient(#00ccff, #808080);height:100vh" >
    <form id="form1" runat="server">
        <ul class="nav nav-tabs nav-justified" style="background:white;border-radius:5px 5px 0px 0px ">
            <li class="active"><a data-toggle="tab" href="#signin">Sign in</a></li>
        </ul>

            <div class="tab-content nav-justified" style="background:white;border-radius:0px 0px 5px 5px">
        
            <div id="signin" class="tab-pane active fade in  pad">
            <table>
                <tr>
                    <td><label for="txtusername">E-mail</label></td>
                    <td><asp:TextBox class="form-control" aria-describedby="emailHelp" placeholder="Enter email" ID="txtusername" runat="server" TextMode="Email" autocomplete="off" requrired="true"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td><label for="txtusername">Password</label></td>
                    <td><asp:TextBox ID="txtpassword" runat="server" TextMode="Password" class="form-control" placeholder="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="Button1" Class="btn btn-primary my-1" runat="server" Text="login" OnClick="Login"  /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td style="font-size:90%; text-align:center"  colspan="2"><a href="signup.aspx">sign up</a></td>
                </tr>
            </table>
        </div>
    </div>        
  

    </form>
    </div>

        <script type="text/javascript">
            if (screen.width <= 699) {
            var url = "http://idyafactory.com/";    
                $(location).attr('href', url);
            }

</script>
</body>
</html>