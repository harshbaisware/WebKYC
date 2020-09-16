<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KycHomePage.aspx.cs" Inherits="WebKYC.KycHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <script src="Scripts/bootstrap.min.js"></script>
    <title>KYC Home Page</title>
</head>
<body  class="bg-white">
    <form id="home" runat="server">
        <div class="card-header bg-primary text-white">
             <div class="container">
                    <div class="row">
                        <div class="col-md-11">
                            <div id="heading">
                                <h1 style="text-align: left;">KYC (Know Your Customer)</h1>
                                <h3 style="text-align: left;">Select Method of KYC</h3>
                            </div>
                        </div>
                    </div>
              </div>
        </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="jumbotron bg-info ml-2 mr-0 my-2"">
                    <br />
                    <h2 class="text-white">Individual KYC Form</h2>
                    <br />
                    <asp:Button ID="Button1" runat="server" class="btn btn-primary font-weight-bold" Text="Fill Form" OnClick="Button1_Click" />
                    <br />
                </div>
            </div>  
            <div class="col-md-6">
                <div class="jumbotron bg-info mx-2 ml-0 my-2"  style="align-items:center;">
                    <br />
                    <h2 class="text-white">Non-Individual KYC Form</h2>
                    <br />
                    <asp:Button ID="Button2" runat="server" class="btn btn-primary font-weight-bold" Text="Fill Form" OnClick="Button2_Click" />
                    <br />
                </div>
            </div>
        </div>
     </div>
    </form>
</body>
</html>
