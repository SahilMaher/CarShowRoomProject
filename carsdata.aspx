<%@ Page Title="" Language="C#" MasterPageFile="~/clients.master" AutoEventWireup="true" CodeFile="carsdata.aspx.cs" Inherits="carsdata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">


.img
{
       border-style:solid;
  border-width:1px; 
   heigth:30px;
   width:70%; 
    }
    .tbl
    {
      heigth:20px;
   width:30%; 
   border:none;
        }
        .del
        {
            background-color:Red;
            color:White;
            border-radius:5px;
            width:60%;
          
            padding:5%;
            
            }
              .del:hover
        {
            background-color:white;
            color:red;
            }
                  .upt
        {
            background-color:Blue;
            color:White;
            border-radius:5px;
            width:30%;
          
            padding:3%;
            }
              .upt:hover
        {
            background-color:white;
            color:blue;
            }
                              .sell
        {
            background-color:#2f7335;
            color:White;
              border-radius:5px;
            width:30%;
            
            padding:3%;
      
            }
              .sell:hover
        {
            background-color:white;
            color:#2f7335;
            }
            .imgsep
            {
                width:70%;
                height:10%;
                align:center;
                }
        .bg
          {
         background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp')
              
              }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <section class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
 <div style="text-align:center;">
 <asp:Label ID="Label9" runat="server" Font-Size="20pt" ForeColor="Green"></asp:Label>
 </div>
 <div class="bg">
    

         <asp:Repeater ID="Repeater1" runat="server" 
             onitemcommand="Repeater1_ItemCommand" >
            
       <HeaderTemplate>  
               
                     
            </HeaderTemplate>  
            <ItemTemplate>  
                <asp:Label ID="Label8" runat="server" visible="false" Text=<%#DataBinder.Eval(Container,"DataItem.imgs")%> ></asp:Label>
             <table class="tbl" border="2" frame="box" align="center" height="50%" width="60%" >  
                <tr>  
                    <td  colspan="2" align="center" width="15%"> 
                        <asp:Label runat="server" Font-Size="15pt" ID="Label1" textcolor="white"  Text=<%#DataBinder.Eval(Container,"DataItem.id")%>  ></asp:Label>
                        <div class="imgs">
                        <asp:Image ID="Image1" cssclass="img" ImageUrl='<%#DataBinder.Eval(Container,"DataItem.imgs")%>' runat="server" />
                    </div>
                    </td>
                    </tr>
                    <tr>
                    <td>
                        <asp:Label ID="Label2" Font-Size="15pt" runat="server" Text=" Car Name"></asp:Label>
                   
                    </td>
                    <td>  
                <asp:TextBox ID="txtname1" Font-Size="15pt" runat="server" Text= <%#DataBinder.Eval(Container,"DataItem.name")%>></asp:TextBox>
                        </td> 
                    </tr>
                    <tr>
                    <td>
                    <asp:Label ID="Label3" Font-Size="15pt" runat="server" Text=" Model Name "></asp:Label>
                    
                    </td>  
                    <td>  
                        <asp:TextBox Font-Size="15pt" ID="txtmodel" runat="server"   Text=  <%#DataBinder.Eval(Container,"DataItem.model")%> ></asp:TextBox>
                     
                    </td>  
                    </tr>
                  <tr> 
                  <td>
                    <asp:Label ID="Label4" Font-Size="15pt" runat="server" Text="   Price "></asp:Label>
                
                  </td>
                       <td>  
                           <asp:TextBox Font-Size="15pt" ID="txtprc" runat="server" Text= <%#DataBinder.Eval(Container,"DataItem.prc")%> ></asp:TextBox>

                    </td> 
                    </tr>
                    <tr> 
                    <td>
                      <asp:Label ID="Label5" Font-Size="15pt" runat="server" Text="Color "></asp:Label>
                    
                    </td>  
                    <td>
                     <asp:TextBox Font-Size="15pt" ID="txtclr" runat="server" Text=  <%#DataBinder.Eval(Container,"DataItem.color")%> ></asp:TextBox>
                   
                    </td>
                    </tr>
                    <tr>  
                    <td>
                      <asp:Label ID="Label6" Font-Size="15pt" runat="server" Text=" Discription "></asp:Label>
                   
                    </td>  
                    <td>
                     <asp:TextBox Font-Size="15pt" ID="txtdisc" style="padding-bottom:100px;width:200px;" runat="server" Text=  <%#DataBinder.Eval(Container,"DataItem.disc")%> ></asp:TextBox>
                    
                    </td> 
                    </tr>

                    <tr>
                    <td>
                      <asp:Label ID="Label7" Font-Size="15pt" runat="server" Text="   Years "></asp:Label>
                  
                    </td>
                     <td>  
                      <asp:TextBox Font-Size="15pt"  ID="txtyrs" runat="server" Text= <%#DataBinder.Eval(Container,"DataItem.yrs")%>></asp:TextBox>
                   
                    </td> 

                       
                </tr>  
                <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="del" Text="Delete" CommandName="del" />
                </td>
                       <td align=right>
                    <asp:Button ID="Button2" CssClass="upt" runat="server" Text="Update" CommandName="upd"  />
                </td>
                </tr>
                <tr>
                      <td colspan="2" align=center>
                    <asp:Button ID="Button3" CssClass="sell" runat="server" Text="Sell" CommandName="sel1"  />
                </td>
                </tr>
                </table>
            </ItemTemplate>  
            <SeparatorTemplate>
            <div  align=center>
  <hr class="hr1">
                    </div>
            </SeparatorTemplate>
             
       
        </asp:Repeater>  
    
       
         
</div>
</section>
<div class="imgs">
<div>
</asp:Content>

