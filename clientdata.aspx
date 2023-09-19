<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="clientdata.aspx.cs" Inherits="clientdata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
  .main
  {
      margin-top:10px;
      } 
    .tbl
    {
        color:black;
        font-size:15px;
        padding:20px;
        margin-top:10px;
        }
        .deletebtn
        {
            Background-color:Red;
            border-radius:10px;
                color:White;
            }
              .deletebtn:hover
        {
           color:Red;
            
                 Background-color:White;
            }
            .uptbtn
            {
                Background-color:blue;
                border-radius:10px;
                color:White;
                }
                .uptbtn:hover
            {
                color:blue;
                
                Background-color:White;
                }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <section class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div style="Text-align:center;">
  <asp:Label runat="server" ID="Label9" textcolor="white" Font-Size="20pt" 
          ForeColor="Green" ></asp:Label>
  </div>
 <div bgcolor="red">
    <div class="main">
    

         <asp:Repeater ID="Repeater1" runat="server" 
             onitemcommand="Repeater1_ItemCommand">
       <HeaderTemplate>  
                <table class="tbl" border="2" align="center" frame="box" Style="text-align:center;" height="50%" width="60%" >  
                   <tbody Style="color:White;">
                    <tr bgcolor="#548596">  
                          
                            <td>  
                              id
                            </td>  
                            <td>  
                           Name
                            </td>  
                            <td>  
                               Number 
                            </td>  
                              <td>  
                              Gender
                            </td>  
                            <td>  
                           Address
                            </td>  
                            <td>  
                               Type 
                            </td>  
                                <td>  
                          Age
                            </td>  
                                <td>  
                            Update
                            </td>  
                                <td>  
                        Delete
                            </td>  
                           
                    </tr> 
                    </tbody> 
            </HeaderTemplate>  
            <ItemTemplate>  
                <tr bgcolor="#143d4d" >  
                    <td bgcolor="#143d4d" style="color:White;padding-bottom:20px;">  
                        <asp:Label runat="server" ID="Label1" textcolor="white"  Text= <%#DataBinder.Eval(Container,"DataItem.id")%>  ></asp:Label>
                       
                    </td>  
                    <td>  
                        <asp:TextBox ID="txtname1" runat="server" Text= <%#DataBinder.Eval(Container,"DataItem.name")%>></asp:TextBox>
                       
                    </td>  
                    <td>  
                        <asp:TextBox ID="txtnum1" runat="server"   Text=  <%#DataBinder.Eval(Container,"DataItem.num")%> ></asp:TextBox>
                     
                    </td>  
                          <td>  
                           <asp:TextBox ID="txtgen1" runat="server" Text= <%#DataBinder.Eval(Container,"DataItem.gen")%> ></asp:TextBox>

                    </td>  
                    <td>  
                     <asp:TextBox ID="txtadd1" runat="server" Text=  <%#DataBinder.Eval(Container,"DataItem.adresh")%> ></asp:TextBox>
                   
                    </td>  
                    <td>  
                     <asp:TextBox ID="txttp1" runat="server" Text=  <%#DataBinder.Eval(Container,"DataItem.type")%> ></asp:TextBox>
                    
                    </td> 
                     <td>  
                      <asp:TextBox ID="txtage1" runat="server" Text= <%#DataBinder.Eval(Container,"DataItem.age")%>></asp:TextBox>
                   
                    </td> 
                       <td> 
                       <asp:Button ID="Button2" cssClass="uptbtn" runat="server" CommandName="up" 
             Text="Update" onclick="Button2_Click1" />
                            </td> 
                     <td>  
                      <asp:Button ID="Button1" runat="server"   CssClass="deletebtn" CommandName="delete" Text="Delete" onclick="Button1_Click" />
                      
                    </td> 
                </tr>  
            </ItemTemplate>  
             
       
        </asp:Repeater>  
    
       
         
</div>
</div>
</asp:Content>

