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
            <li><a data-toggle="tab" href="#signup">Sign Up</a></li>
        </ul>

        <div class="tab-content nav-justified" style="background:white;border-radius:0px 0px 5px 5px">
        <div id="signin" class="tab-pane fade in active pad">
            <table>
                

                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="username" ></asp:Label></td>
                    <td><asp:TextBox ID="txtusername" runat="server" TextMode="Email" autocomplete="off" requrired="true"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="password"></asp:Label></td>
                    <td><asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="Button1" runat="server" Text="login" OnClick="Login"  /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect" ForeColor="Red"></asp:Label></td>
                </tr>
            </table>
        </div>
        <div id="signup" class="tab-pane fade pad">
            <table>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="username"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server" TextMode="Email" autocomplete="off"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="password"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="type"></asp:Label></td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server" >  
                        <asp:ListItem Value="">Please Select</asp:ListItem>  
                        <asp:ListItem>Individual</asp:ListItem>  
                        <asp:ListItem>Institute</asp:ListItem>  
                        </asp:DropDownList>  
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="Button2" runat="server" Text="SignUp" OnClick="Button2_Click" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Label ID="signuptext" runat="server" Text="Incorrect" ForeColor="red"></asp:Label></td>
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