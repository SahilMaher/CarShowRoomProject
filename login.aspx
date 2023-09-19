<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="source/bootstrap-3.3.6-dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="source/font-awesome-4.5.0/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="style/slider.css">
	<link rel="stylesheet" type="text/css" href="style/mystyle.css">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        .gradient-custom {
/* fallback for old browsers */
background: #6a11cb;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1))
}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
 <section class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
              <p class="text-white-50 mb-5"></p>

              <div class="form-outline form-white mb-4">
                       <label class="form-label" for="typeEmailX">Phone Nuber</label>

              <div style="text-align:left;">  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                      ErrorMessage="Enter Number" ControlToValidate="TextBox1" ForeColor="Red" 
                      SetFocusOnError="True"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                      runat="server" ErrorMessage="Enter Valid Number" ControlToValidate="TextBox1" 
                      ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
              </div>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-lg"></asp:TextBox>
         </div>

              <div class="form-outline form-white mb-4">
                    <label class="form-label" for="typePasswordX">Password</label>
                 <div style="text-align:left;"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                      ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red" 
                      SetFocusOnError="True"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                      runat="server" 
                      ErrorMessage="Enter Lower latter capital latter number and minimum 8 Character" 
                      ControlToValidate="TextBox2" ForeColor="Red" 
                      ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"></asp:RegularExpressionValidator>
                      </div>
              <asp:TextBox ID="TextBox2" runat="server" class="form-control form-control-lg"></asp:TextBox>    
          
              </div>

               <asp:Button ID="Button1" runat="server" Text="Login" 
                    class="btn btn-outline-light btn-lg px-5" onclick="Button1_Click"></asp:Button>
              

            </div>

            <div>
              
              </p>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>

    
    </div>
    </form> 
    </section>
</asp:Content>

