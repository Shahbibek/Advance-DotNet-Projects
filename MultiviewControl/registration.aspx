<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="MultiviewControl.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-md-8 col-md-offset-2">
            <div style="margin-top: 2em;">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Panel runat="server" BackColor="LightPink" BorderStyle="Double" BorderColor="DarkGreen" BorderWidth="5">
                                <center>
                                    <asp:Label ID="label11" runat="server" BackColor="ButtonShadow" BorderColor="Bisque" Font-Bold="true"></asp:Label>
                                    <asp:Timer runat="server"></asp:Timer>
                                </center>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            <div class="text-center" style="margin-top: 2em;">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="140px" Width="140px" />
            </div>
            <table class="table" style="margin-top: 2em; border-style: solid; border-color: blue;">
                <div class="text-center" style="margin-top: 2em;">
                    <asp:Literal ID="Literal1" runat="server" Text="&lt;B&gt;Registration Form&lt;/B&gt;"></asp:Literal>
                </div>
                <tr>
                    <th>Full Name</th>
                    <td>
                        <asp:TextBox runat="server" ID="txtfname" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>
                        <asp:TextBox runat="server" ID="txtemail" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Password</th>
                    <td>
                        <asp:TextBox runat="server" ID="txtpassword" TextMode="Password" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem style="margin: 5px" Value="male">Male</asp:ListItem>
                            <asp:ListItem style="margin: 5px" Value="female">Female</asp:ListItem>
                            <asp:ListItem style="margin: 5px" Value="others">Others</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <th>Contact No</th>
                    <td>
                        <asp:TextBox runat="server" ID="txtcontactno" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td>
                        <asp:TextBox runat="server" ID="txtaddress" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <th>Designation</th>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                            <asp:ListItem>Student</asp:ListItem>
                            <asp:ListItem>Teacher</asp:ListItem>
                            <asp:ListItem>Staff</asp:ListItem>
                            <asp:ListItem>Professor</asp:ListItem>
                            <asp:ListItem>Dean</asp:ListItem>
                            <asp:ListItem>Director</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <th>Date Of Register</th>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </td>
                </tr>
                <%--<tr>
                    <th>Registered At</th>
                    <td>                        
                        <asp:Timer ID="Timer1" runat="server"></asp:Timer></td>
                </tr>--%>
                
                <tr>
                    <th>Profile Picture Link</th>
                    <td>
                        <asp:TextBox runat="server" ID="txtprofilelink" placeholder="Only profile picture link is needed" CssClass="form-control" AutoPostBack="True"></asp:TextBox></td>
                </tr>
            </table>
            <div class="text-center">
                <asp:Button runat="server" ID="btnregister" Text="Register" CssClass="btn btn-primary" Style="margin: 10px" Width="100px" OnClick="btnregister_Click"></asp:Button>
                <asp:Button runat="server" ID="btnloadimage" Text="Load Image" CssClass="btn btn-warning" Style="margin: 10px" Width="100px" OnClick="btnloadimage_Click"></asp:Button>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
