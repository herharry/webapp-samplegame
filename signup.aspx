<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="testing.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <div class="container wrapper pad" style="background-image:linear-gradient(#00ccff, #808080);height:100vh" >

    <form id="form1" runat="server">
        <ul class="nav nav-tabs nav-justified" style="background:white;border-radius:5px 5px 0px 0px ">
                    <li class="active"><a data-toggle="tab" href="#signup">Sign Up</a></li>

        </ul>


<div class="tab-content nav-justified" style="background:white;border-radius:0px 0px 5px 5px">        
        <div id="signup" class="tab-pane active fade in pad">
            <table>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="username" ></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server" TextMode="Email" autocomplete="off" class="form-control" aria-describedby="emailHelp" placeholder="Enter email" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="password"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" class="form-control" placeholder="Password"></asp:TextBox></td>
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
                    <td><asp:Label ID="Label6" runat="server" Text="OTP"></asp:Label></td>
                    <td><asp:TextBox ID="otp" runat="server" TextMode="Number"></asp:TextBox></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><asp:Label ID="signuptext" runat="server" Text="Incorrect" ForeColor="red"></asp:Label></td>
                </tr>
                                <tr>
                    <td></td>
                    <td><asp:Button ID="Button3" runat="server" Text="Verify" OnClick="val" /></td>
                </tr>
                <tr>
                    <td style="font-size:90%; text-align:center"  colspan="2"><a href="login.aspx">login</a></td>
                </tr>
                
            </table>
        
        </div>
        </div>
    </form>
        </div>
</body>
</html>
