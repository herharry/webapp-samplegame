<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="License.aspx.cs" Inherits="testing.License" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous"/>    <style>
section.pricing {
  background: #007bff;
  height: 100vh;
  background: linear-gradient(#00ccff, #808080);
}

.pricing .card {
  border: none;
  border-radius: 1rem;
  transition: all 0.2s;
  box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
  width:70%
}

.pricing hr {
  margin: 1.5rem 0;
}

.pricing .card-title {
  margin: 0.5rem 0;
  font-size: 0.9rem;
  letter-spacing: .1rem;
  font-weight: bold;
}

.pricing .card-price {
  font-size: 3rem;
  margin: 0;
}

.pricing .card-price .period {
  font-size: 0.8rem;
}

.pricing ul li {
  margin-bottom: 1rem;
}

.pricing .text-muted {
  opacity: 0.7;
}

.pricing .btn {
  font-size: 80%;
  border-radius: 5rem;
  letter-spacing: .1rem;
  font-weight: bold;
  padding: 1rem;
  opacity: 0.7;
  transition: all 0.2s;
}

/* Hover Effects on Card */

@media (min-width: 992px) {
  .pricing .card:hover {
    margin-top: -.25rem;
    margin-bottom: .25rem;
    box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.3);
  }
  .pricing .card:hover .btn {
    opacity: 1;
  }
}


</style>
</head>
<body>
    <form id="form1" runat="server">
    <section class="pricing py-5">

    <div class="container d-flex justify-content-center">
        <h3 style="font-style:italic|oblique">Subcription</h3>
    </div>
    <div class="container-fluid pt-5">
        <div class="row pt-5">
        <div class="col-lg-3">
        </div>
        <!-- Free Tier -->
        <div class="col-lg-3">
            <div class="card mb-5 mb-lg-0">
            <div class="card-body">
                <h5 class="card-title text-muted text-uppercase text-center">Free</h5>
                <h6 class="card-price text-center">$0<span class="period">/month</span></h6>
                <hr>
                <ul class="fa-ul">
                  	<li><span class="fa-li"><i class="fas fa-check"></i></span>limited access</li>
              	    <li><span class="fa-li"><i class="fas fa-check"></i></span>30 days</li>
                </ul>
                <asp:Button class="btn btn-block btn-primary text-uppercase" ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"/>
            </div>
            </div>
        </div>
        
	    <!-- Plus Tier -->
        <div class="col-lg-3">
            <div class="card mb-5 mb-lg-0">
            <div class="card-body">
                <h5 class="card-title text-muted text-uppercase text-center">Premium</h5>
                <h6 class="card-price text-center">Paid<span class="period">/year</span></h6>
                <hr>
                <ul class="fa-ul">
                  	<li><span class="fa-li"><i class="fas fa-check"></i></span>per year access</li>
              	    <li><span class="fa-li"><i class="fas fa-check"></i></span>360 days</li>
                </ul>
                <a href="#" class="btn btn-block btn-primary text-uppercase">Button</a>
            </div>
            </div>
        </div>

        <div class="col-lg-3">
        </div>
    </div>
  </div>
</section>

</form>
</body>
</html>
