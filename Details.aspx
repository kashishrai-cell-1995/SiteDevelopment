<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="LINQ_DataDisplay.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title></title>
    <style type="text/css">
       #EmpDetails tr:nth-child(even){background-color:lavender;}
        #CountDetails tr:nth-child(even){background-color:lavender;}
        .fa{background-color:white; color:black;width:16px;margin-left:35px;
} 
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <%--<asp:Repeater ID="RepeaterBind" runat="server">
                <ItemTemplate>
                    <table class="table table-bordered">
                        <tr>
                            <td>
                                <table class="table">
                                    <tr>
                                        <td style="width: 50%;">ID:</td>
                                        <td><%#Eval("id")%></td>
                                    </tr>
                                    <tr>
                                        <td>Name:</td>
                                        <td><%#Eval("name")%></td>
                                    </tr>
                                    <tr>
                                        <td>Salary:</td>
                                        <td><%#Eval("salary")%></td>
                                    </tr>
                                    <tr>
                                        <td>Age:</td>
                                        <td><%#Eval("age")%></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 50%;">ID:</td>
                                        <td><%#Eval("id")%></td>
                                    </tr>
                                    <tr>
                                        <td>Name:</td>
                                        <td><%#Eval("DepartmentName")%></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>

            </asp:Repeater>
            <br /><br />--%>
             <asp:Repeater ID="RepeaterBind" runat="server">
                 <HeaderTemplate>
                    <table cellspacing="0" rules="all" border="1" id="EmpDetails">
                    <tr style="background-color:cornflowerblue; color:white;">
                      <th scope="col" style="width: 120px">
                      ID
                          <i class="fa fa-caret-down"></i>
                    </th>
                    <th scope="col" style="width: 120px">
                     Name
                        <i class="fa fa-caret-down"></i>
                    </th>
                   <th scope="col" style="width: 120px">
                    Salary
                       <i class="fa fa-caret-down"></i>
                  </th>
                   <th scope="col" style="width: 120px">
                    Age
                       <i class="fa fa-caret-down"></i>
                  </th>
                   <th scope="col" style="width: 145px">
                    Department
                       <i class="fa fa-caret-down"></i>
                  </th> 
                  </tr>
                        
                   </HeaderTemplate>
                         <ItemTemplate>                  
                                 <tr>
                                      <td>
                                          <asp:Label ID="lblCustomerId" runat="server" Text='<%# Eval("id") %>' />
                                     </td>
                                      <td>
                                          <asp:Label ID="name" runat="server" Text='<%# Eval("name") %>' />
                                     </td>
                                        <td>
                                          <asp:Label ID="salary" runat="server" Text='<%# Eval("salary") %>' />
                                     </td>
                                     <td>
                                          <asp:Label ID="age" runat="server" Text='<%# Eval("age") %>' />
                                     </td>
                                     <%--<td>
                                          <asp:Label ID="id" runat="server" Text='<%# Eval("id") %>' />
                                     </td>--%>
                                    <td>
                                          <asp:Label ID="DepartmentName" runat="server" Text='<%# Eval("DepartmentName") %>' />
                                     </td>                        
                                  
                              </tr>
                         
                </ItemTemplate>              
                <FooterTemplate>
                 </table>
               </FooterTemplate>
            </asp:Repeater>
            <br />
            <br />
            <br />
            <br />

             <asp:Repeater ID="RepeatersForCount" runat="server">
                  <HeaderTemplate>
                    <table cellspacing="0" rules="all" border="1" id="CountDetails">
                    <tr style="background-color:cornflowerblue; color:white;">
                      <th scope="col" style="width: 145px">
                      Department
                         
                    </th>
                    <th scope="col" style="width: 120px">
                     Count
                    </th>
                    </tr>
                  </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                           <td>
                              <asp:Label ID="Name" runat="server" Text='<%# Eval("Name") %>' />
                           </td>
                            <td>
                            <asp:Label ID="Count" runat="server" Text='<%# Eval("Count") %>' />
                           </td>

                          </tr>
                       
                </ItemTemplate>
               <FooterTemplate>
                    <tr>
                            <th scope="col" style="width: 120px">
                           Total Emp
                           </th>
                        <itemtemplate>
                           <td>
                              <asp:Label ID="total" runat="server" Text='<%# Eval("total") %>' />
                           </td>
                             </itemtemplate>
                           </tr>
                     
                 </table>
               </FooterTemplate>
            </asp:Repeater>

            <%--<asp:Repeater ID="RepearsForTotal" runat="server">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                              <asp:Label ID="id" runat="server" Text='<%# Eval("id") %>' />
                           </td>
                         </tr>
                                    
                    </table>
                </ItemTemplate>
            </asp:Repeater>--%>
        </div>
    </form>

   
</body>
</html>
