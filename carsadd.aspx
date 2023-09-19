<%@ Page Title="" Language="C#" MasterPageFile="~/clients.master" AutoEventWireup="true" CodeFile="carsadd.aspx.cs" Inherits="carsadd" %>

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
.rst
{
    margin-left:50px;
    }
        .bg
    {
        background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');
          height: 90%; 
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
  <div style="Text-align:center">
<asp:Label ID="Label1" runat="server" Font-Size="20pt" ForeColor="Green"></asp:Label>
  </div>
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Add Cars</h2>


                <div class="form-outline mb-4">
                 <label class="form-label" for="form3Example1cg"> company Name
                    </label>
                    <div> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                      ControlToValidate="TextBox1" ErrorMessage="Enter CarName" ForeColor="Red" 
                      SetFocusOnError="True"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                      runat="server" 
                      ErrorMessage="Enter Valid Name" 
                      ControlToValidate="TextBox1" ForeColor="Red" 
                      ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
                      </div>
                    <asp:TextBox ID="TextBox1" class="form-control form-control-lg" runat="server"></asp:TextBox>
                </div>

                <div class="form-outline mb-4">
                <label class="form-label" for="form3Example3cg"> Years</label>
            <div>  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                      ErrorMessage="Enter Years" ControlToValidate="TextBox2" ForeColor="Red" 
                      SetFocusOnError="True"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                      runat="server" ErrorMessage="Enter Valid Years" ControlToValidate="TextBox2" 
                      ForeColor="Red" ValidationExpression="[0-9]{4}"></asp:RegularExpressionValidator>
              </div>
                  <asp:TextBox ID="TextBox2" class="form-control form-control-lg" runat="server"></asp:TextBox>
                
                </div>

                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example4cg">Choose Color
                    </label>
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Choose Color" ControlToValidate="color1" ForeColor="Red"></asp:RequiredFieldValidator>
                           &nbsp;<asp:DropDownList ID="color1"  class="form-control form-control-lg" runat="server" Height="40px" 
                    Width="143px">
                        <asp:ListItem Selected="True">choose color</asp:ListItem>
                    <asp:ListItem>Black</asp:ListItem>
                    <asp:ListItem>White</asp:ListItem>
                    <asp:ListItem>Red</asp:ListItem>
                    <asp:ListItem>Yellow</asp:ListItem>
                    <asp:ListItem>Silver</asp:ListItem>
                    <asp:ListItem>Blue</asp:ListItem>
                </asp:DropDownList>
               
                </div>

                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example4cdg">Model Name</label>
                 <div>
                  <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Enter Model Name" ControlToValidate="model" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                 <asp:TextBox ID="model" class="form-control form-control-lg" runat="server" 
                       Width="585px"></asp:TextBox>
                
                </div>
                     <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example4cdg">Discription</label>
                 <asp:TextBox ID="disc" CssClass="disc" class="form-control form-control-lg" runat="server" Height="70px" 
                    Width="585px"></asp:TextBox>
                <div>
                  <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Enter Discription" ControlToValidate="disc" ForeColor="Red" 
                             SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
                </div>
                    <div class="form-outline mb-4">
                     <label class="form-label" for="form3Example4cdg">Price</label>
                         <div>  
                            <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="Enter Price" ControlToValidate="price" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                
                     
              </div>
                    
              <asp:TextBox ID="price" class="form-control form-control-lg" runat="server" Width="585px"></asp:TextBox>
                 
                 
                </div>
              
                <div class="d-flex justify-content-center">
                 <label class="form-label" for="form3Example4cdg">Add Image</label>
                  <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="Add Image" ControlToValidate="FileUpload1" ForeColor="Red" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="585px" />
                
                 
                </div>
                    <div class="d-flex justify-content-center">
                <asp:Button ID="Button2" runat="server" Font-Bold="False" Font-Size="10pt" 
                    ForeColor="#996633" Text="Insert" Width="81px" onclick="Button2_Click" />
                         <asp:Button ID="Button1" runat="server" Font-Size="10pt" ForeColor="Red" 
                    onclick="Button1_Click" Text="Reset" Width="84px"  cssclass="rst" />
                </div>
           

             

              
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
</section>
</asp:Content>

