<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mzUsers.aspx.cs" Inherits="LINQ_DataDisplay.mzUsers1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <link href="assets/dataTables/jquery.dataTables.min.css?v=101" rel="stylesheet" />
    <link href="assets/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/RibbonStylesheet.css" rel="stylesheet" />
    <link href="css/colors/blue-dark.css" rel="stylesheet" />
    <link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />


  <%-- <script lang="javascript" type="text/javascript">
    function ValidateRegForm() {
        var email = document.getElementById("Email");
        var filter = /^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$/;
        if (!filter.test(email.value)) {
            alert('Please provide a valid email address');
            email.focus;
            return false;
        }
        var password = document.getElementById("Password");
        if (password.value.length > 6)
        {

        }
        else {
            alert('Please provide minimum 6 digit for password');
            password.focus;
        }
        return true;
    }
</script>--%>

    
</head>
<body>
  
    <div id="main-wrapper">
        <form id="MainPage">
            <script src="assets/jquery/jquery.min.js?v=101"></script>
            <script src="assets/bootstrap/js/popper.min.js?v=101"></script>
            <script src="assets/bootstrap/js/bootstrap.min.js?v=101"></script>
            <script src="js/jquery.slimscroll.js"></script>
            <script src="js/waves.js"></script>
            <script src="js/sidebarmenu.js"></script>
            <script src="assets/sticky-kit-master/dist/sticky-kit.min.js"></script>
            <script src="assets/sparkline/jquery.sparkline.min.js"></script>
            <script src="js/custom.min.js"></script>
            <script src="assets/styleswitcher/jQuery.style.switcher.js"></script>
            <div class="page-wrapper">
            <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-10 col-xs-12">
                    <div class="card card-inverse m-t-30">
                        <div class="card-header">Users</div>
                        <div class="card-body">
                            <div class="row form-group">
                                <label for="txtStart" class="control-label col-sm-4 col-xs-4">Email</label>
                                 <div class="col-sm-8 col-xs-8">
                                 <input id="Email" type='text' runat="server" class="form-control"/></div>
                                <label for="txtMessage" id="lbl_message"  ></label>
                            </div>
			                 <div class="row form-group">
                               <label for="FirstName" class="control-label col-sm-4 col-xs-4">First Name</label>
                                  <div class="col-sm-8 col-xs-8">
                                <input id="FirstName" type='text' runat="server" class="form-control"/>
                                      </div>
                            </div>
                            <div class="row form-group">
                                <label for="LastName" class="control-label col-sm-4 col-xs-4">Last Name</label>
                                 <div class="col-sm-8 col-xs-8">
                                <input id="LastName" type='text' runat="server" class="form-control"/>
                                     </div>
                             </div>
                            
                            <div class="row form-group">
                                <label for="Password" class="control-label col-sm-4 col-xs-4">Password</label>
                                <div class="col-sm-8 col-xs-8">
                                <input id="Password" type='text' runat="server" class="form-control"/>
                                    </div>
                            </div>
                            <div class="row form-group">
                                <%--<label for="RoleID" class="control-label col-sm-4 col-xs-4">RoleID</label>
                                <input id="RoleID" type='text' class="form-control"/>--%>
                                <label for="RoleID" class="control-label col-sm-4 col-xs-4">RoleID</label>
                                 <div class="col-sm-8 col-xs-8">
                                    <select id="RoleID" runat="server" class="form-control">
					                   <option>- Select -</option>
					                   <option>1</option>
					                   <option>2</option>
					                   <option>3</option>
                                       <option>4</option>
				                   </select>
                                </div>
                            </div>
                            <div class="row form-group">
				                  <div class="col-sm-3 col-xs-4"> &nbsp; </div>
                                <button id="Insert" runat="server" class="btn btn-primary"  onclick="" >Submit</button>  			                      
                                </div>                           
                                <label for="txtMessage" ID="lblMessage" Font-Bold="True" ForeColor="#CC0000"></label>
                            </div>
                        </div>
                    </div>
                </div>
          

                <br />
                <br />

             <div class="row">
                <div class="col-md-4 col-sm-10 col-xs-12">
                    <div class="card card-inverse m-t-30">
                        <div class="card-header">Users Detail</div>
                        <div class="card-body">
                            <div class="row form-group">
                                <label for="FatherName" class="control-label col-sm-4 col-xs-4">FatherName</label>
                                <div class="col-sm-8 col-xs-8">
                                <input id="FatherName" runat="server" type='text' class="form-control"/>
                                    </div>
                            </div>
			                 <div class="row form-group">
                                <label for="MotherName" class="control-label col-sm-4 col-xs-4">MotherName</label>
                                 <div class="col-sm-8 col-xs-8">
                                <input id="MotherName" runat="server" type='text' class="form-control"/>
                                     </div>
                            </div>
                            <div class="row form-group">
                                <label for="txtStart" class="control-label col-sm-4 col-xs-4">DOB</label>
                                <div class="col-sm-8 col-xs-8">
                                <input id="txtStart" runat="server" type='text' class="form-control"/>
                                    </div>
                            </div>
                            <div class="row form-group">
                                <label for="Correspondence" class="control-label col-sm-4 col-xs-4">Correspondence</label>
                                <div class="col-sm-8 col-xs-8">
                                <input id="Correspondence" runat="server" type='text' class="form-control"/>
                                    </div>
                            </div>
                            <div class="row form-group">
                                <label for="Permanent" class="control-label col-sm-4 col-xs-4">Permanent</label>
                                <div class="col-sm-8 col-xs-8">
                                <input id="Permanent" runat="server" type='text' class="form-control"/>
                                    </div>
                            </div>
                            <div class="row form-group">
                                <label for="ContactPersonal" class="control-label col-sm-4 col-xs-4">Contact Personal</label>
                                <div class="col-sm-8 col-xs-8">
                                <input id="ContactPersonal" runat="server" type='text' class="form-control"/>
                                    </div>
                            </div>
                            <div class="row form-group">
                                <label for="ContactResidential" class="control-label col-sm-4 col-xs-4">Contact Residential</label>
                                <div class="col-sm-8 col-xs-8">
                               <%-- <input id="ContactResidential" type='text' class="form-control"/>--%>
                                    <textarea id="ContactResidential" runat="server" rows="3" class="form-control"></textarea>
                                    </div>
                            </div>

                            <div class="row form-group">
                                <label for="Qualification" class="control-label col-sm-4 col-xs-4">Qualification</label>
                                <div class="col-sm-8 col-xs-8">
                                <input id="Qualification" runat="server" type='text' class="form-control"/>
                                    </div>
                            </div>

                            <div class="row form-group">
                                <label for="College" class="control-label col-sm-4 col-xs-4">College</label>
                                <div class="col-sm-8 col-xs-8">
                                <input id="College"  runat="server" type='text' class="form-control"/>
                                    </div>
                            </div>

                            <div class="row form-group">
                                <label for="txtEnd" class="control-label col-sm-4 col-xs-4">Joining</label>
                                <div class="col-sm-8 col-xs-8">
                                <input id="txtEnd" runat="server" type='text' class="form-control"/>
                                    </div>
                            </div>

                            <div class="row form-group">
                                <label for="Position" class="control-label col-sm-4 col-xs-4">Position</label>
                                <div class="col-sm-8 col-xs-8">
                                <input id="Position" runat="server" type='text' class="form-control"/>
                                    </div>
                            </div>

                            <div class="row form-group">
                                <label for="EmailOther" class="control-label col-sm-4 col-xs-4">EmailOther</label>
                                <div class="col-sm-8 col-xs-8">
                                <input id="EmailOther" runat="server" type='text' class="form-control"/>
                                    </div>
                            </div>
                            <div class="row form-group">
                                <label for="ImageURL" class="control-label col-sm-4 col-xs-4">ImageURL</label>
                                <div class="col-sm-8 col-xs-8">
                                <input id="ImageURL" runat="server" type='text' class="form-control"/>
                                    </div>
                            </div>



                            <div class="row form-group">
				                 <div class="col-sm-3 col-xs-4"> &nbsp; </div>
                                     <div class="col-sm-9 col-xs-8">
					                 <input type='button' runat="server" class="btn btn-primary" value="Save" style="width:94px"/>
					                 <input type='button' runat="server" class="btn btn-primary" value="Reset" style="width:94px"/>
                                </div>
                           
                                
                            </div>
                        </div>
                    </div>
                </div>
             </div>
           </div>
         </div>
        
   
  
                <footer class="footer">© 2019 <a href="http://www.mabzone.com" title="MABZONE">MABZONE</a></footer>
           

            <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
            <script src="assets/js/vendor/bootstrap.min.js"></script>
            <script src="assets/js/plugins.js"></script>
            <script src="assets/js/modernizr.js"></script>
            <script src="assets/js/main.js"></script>
            <script src="assets/moment/moment.js"></script>
            <script src="assets/js/jquery.dataTables.min.js"></script>
            <script src="assets/bootstrap-daterangepicker/daterangepicker.js"></script>
            <script src="https://cdn.datatables.net/plug-ins/1.10.19/sorting/datetime-moment.js"></script>
      </form>
    </div>

     <script type="text/javascript">
        var tabDt;
        $(document).ready(function () {
              $(".hours").attr({
                "max": 40,
                "min": 1
            });

             $("#txtEnd,#txtStart").daterangepicker({
               singleDatePicker: true,
               showDropdowns: true,
               minYear: 1901,
               maxYear: parseInt(moment().format('YYYY'),10)
             });
        });

    </script>

   
</body>
</html>
