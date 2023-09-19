<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="soldcar.aspx.cs" Inherits="soldcar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">

  .img
{
       border-style:solid;
  border-width:1px; 
   heigth:30px;
   width:70%; 
   margin-top:10px; }
    
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
          align:center;
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
 
<div class="bg">

         <asp:Repeater ID="Repeater1" runat="server" 
             onitemcommand="Repeater1_ItemCommand">
       <HeaderTemplate>  
               
                     
            </HeaderTemplate>  
            <ItemTemplate>  

             <table class="tbl" border="2" frame="box" align="center" height="50%" width="60%" >  
                <tr>  
                    <td  colspan="2" align="center"> 
                        <asp:Label runat="server" Font-Size="15pt" ID="Label1" textcolor="white"  Text=<%#DataBinder.Eval(Container,"DataItem.id")%>  ></asp:Label>
                        
                        <asp:Image ID="Image1" cssclass="img" ImageUrl='<%#DataBinder.Eval(Container,"DataItem.img")%>' runat="server" />
                    </td>
                    </tr>
                    <tr>
                    <td>
                        <asp:Label ID="Label2" Font-Size="15pt" runat="server" Text=" Car Name"></asp:Label>
                   
                    </td>
                    <td>  
                <asp:TextBox ID="txtname1" Font-Size="15pt" ReadOnly runat="server" Text= <%#DataBinder.Eval(Container,"DataItem.name")%>></asp:TextBox>
                        </td> 
                    </tr>
                    <tr>
                    <td>
                    <asp:Label ID="Label3" Font-Size="15pt" runat="server" Text=" Model Name "></asp:Label>
                    
                    </td>  
                    <td>  
                        <asp:TextBox Font-Size="15pt" ID="txtmodel" runat="server" ReadOnly   Text=  <%#DataBinder.Eval(Container,"DataItem.model")%> ></asp:TextBox>
                     
                    </td>  
                    </tr>
                  <tr> 
                  <td>
                    <asp:Label ID="Label4" Font-Size="15pt" runat="server" ReadOnly Text="   Price "></asp:Label>
                
                  </td>
                       <td>  
                           <asp:TextBox Font-Size="15pt" ID="txtprc" ReadOnly runat="server" Text= <%#DataBinder.Eval(Container,"DataItem.prc")%> ></asp:TextBox>

                    </td> 
                    </tr>
                    <tr> 
                    <td>
                      <asp:Label ID="Label5" Font-Size="15pt" runat="server" Text="Color "></asp:Label>
                    
                    </td>  
                    <td>
                     <asp:TextBox Font-Size="15pt" ID="txtclr" ReadOnly runat="server" Text=  <%#DataBinder.Eval(Container,"DataItem.color")%> ></asp:TextBox>
                   
                    </td>
                    </tr>
                    <tr>  
                    <td>
                      <asp:Label ID="Label6" Font-Size="15pt" runat="server" Text=" Discription "></asp:Label>
                   
                    </td>  
                    <td>
                     <asp:TextBox Font-Size="15pt" ID="txtdisc" ReadOnly style="padding-bottom:100px;width:200px;" runat="server" Text=  <%#DataBinder.Eval(Container,"DataItem.disc")%> ></asp:TextBox>
                    
                    </td> 
                    </tr>

                    <tr>
                    <td>
                      <asp:Label ID="Label7" Font-Size="15pt" runat="server" Text="   Years "></asp:Label>
                  
                    </td>
                     <td>  
                      <asp:TextBox Font-Size="15pt"  ID="txtyrs" ReadOnly runat="server" Text= <%#DataBinder.Eval(Container,"DataItem.year")%>></asp:TextBox>
                   
                    </td> 

                       
                </tr>  
                <tr>
                <td align=center>
                    <asp:Button ID="Button1" runat="server" CssClass="del" Text="Delete" CommandName="del" />
                </td>
                    
                </tr>
                </table>
            </ItemTemplate>  
            <SeparatorTemplate>
            <div  align=center>
           <hr>
                    </div>
            </SeparatorTemplate>
             
       
        </asp:Repeater>  
    
       
</div>
</section>
</asp:Content>

