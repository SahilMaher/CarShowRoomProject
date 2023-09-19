<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="registeradmin.aspx.cs" Inherits="registeradmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.gradient-custom-3 {
/* fallback for old browsers */
background: #84fab0;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5))
}
.gradient-custom-4 {
/* fallback for old browsers */
background: #84fab0;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1))
}
    .bg
    {
        background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');
          height: 120%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
    background-attachment: fixed;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="bg">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
        <div style="Text-align:center;">
<asp:Label ID="Label1" runat="server" Font-Size="20pt" ForeColor="Green"></asp:Label>
        </div>
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Register Client</h2>

              <form>

                <div class="form-outline mb-4">
                        <label class="form-label" for="form3Example1cg"> Name</label>
                      <div> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                      ControlToValidate="form3Example1cg" ErrorMessage="Enter Name" ForeColor="Red" 
                      SetFocusOnError="True"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                      runat="server" 
                      ErrorMessage="Enter Valid Name" 
                      ControlToValidate="form3Example1cg" ForeColor="Red" 
                      ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
                      </div>
<asp:TextBox ID="form3Example1cg" class="form-control form-control-lg" runat="server"></asp:TextBox>
                 
          
                </div>

                <div class="form-outline mb-4">
                         <label class="form-label" for="form3Example3cg"> Mobile Number</label>
                  <div>  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                      ErrorMessage="Enter Number" ControlToValidate="form3Example3cg" ForeColor="Red" 
                      SetFocusOnError="True"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                      runat="server" ErrorMessage="Enter Valid Number" ControlToValidate="form3Example3cg" 
                      ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
              </div>
                <asp:TextBox  ID="form3Example3cg" class="form-control form-control-lg" runat="server"></asp:TextBox>
                 
         
                </div>

                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example4cg">Password</label>
                   <div> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                      ControlToValidate="form3Example4cdg" ErrorMessage="Enter Password" ForeColor="Red" 
                      SetFocusOnError="True"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                      runat="server" 
                      ErrorMessage="Enter Lower latter capital latter number and minimum 8 Character" 
                      ControlToValidate="form3Example4cg" ForeColor="Red" 
                      ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"></asp:RegularExpressionValidator>
                      </div>
                <asp:TextBox ID="form3Example4cg"  class="form-control form-control-lg" runat="server"></asp:TextBox>
                
              
                </div>

                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example4cdg">Address</label>
                  <div> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                      ControlToValidate="form3Example4cdg" ErrorMessage="Enter Address" ForeColor="Red" 
                      SetFocusOnError="True"></asp:RequiredFieldValidator>
                      </div>
                <asp:TextBox ID="form3Example4cdg" class="form-control form-control-lg" runat="server"></asp:TextBox>
                 
                
                </div>
                     <div class="form-outline mb-4">
                             <label class="form-label" for="form3Example4cdg">Age</label>
                   <div>  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                      ErrorMessage="Enter Age" ControlToValidate="age" ForeColor="Red" 
                      SetFocusOnError="True"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                      runat="server" ErrorMessage="Enter Valid Age" ControlToValidate="age" 
                      ForeColor="Red" ValidationExpression="[0-9]{2}"></asp:RegularExpressionValidator>
              </div>
                <asp:TextBox ID="age" class="form-control form-control-lg" runat="server"></asp:TextBox>
                 
          
                </div>
                    <div class="form-outline mb-4">
                      
                  <label class="form-label" for="form3Example4cdg">Gender</label>
                                     <div>  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                      ErrorMessage="Enter Gender" ControlToValidate="RadioButtonList1" ForeColor="Red" 
                      SetFocusOnError="True"></asp:RequiredFieldValidator>
                      </div>
                <asp:RadioButtonList ID="RadioButtonList1" class="form-control form-control-lg" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                        </asp:RadioButtonList>
               
                </div>
              

                <div class="d-flex justify-content-center">
                 <asp:Button ID="Button1"  
                        class="btn btn-success btn-block btn-lg gradient-custom-4 text-body" 
                        runat="server" Text="Register" onclick="Button1_Click"></asp:Button>
                </div>

                <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="login.aspx"
                    class="fw-bold text-body"><u>Login here</u></a></p>

              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
  
</section>
</asp:Content>

