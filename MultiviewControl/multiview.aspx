<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="multiview.aspx.cs" Inherits="MultiviewControl.multiview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tutorial 03</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <div class="col-md-8 col-md-offset-2">
                    <table class="table" style="margin-top: 2em; border-style: solid; border-color: red;">
                        <tr>
                            <th>Full Name</th>
                            <td>
                                <asp:TextBox runat="server" ID="txtfname" CssClass="form-control"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <th>Enrollment No</th>
                            <td>
                                <asp:TextBox runat="server" ID="txtenrollmentno" CssClass="form-control"></asp:TextBox></td>
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
                            <th>Degree</th>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                    <asp:ListItem>B.Tech</asp:ListItem>
                                    <asp:ListItem>M.Tech</asp:ListItem>
                                    <asp:ListItem>BCA</asp:ListItem>
                                    <asp:ListItem>MCA</asp:ListItem>
                                    <asp:ListItem>BBA</asp:ListItem>
                                    <asp:ListItem>MBA</asp:ListItem>
                                    <asp:ListItem>MBBS</asp:ListItem>
                                    <asp:ListItem>BDS</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                    </table>
                    <div class="col text-center">
                        <asp:Button runat="server" ID="btnnext1" Text="Next" CssClass="btn btn-primary" Width="100px" OnClick="btnnext1_Click"></asp:Button>
                        <br />
                    </div>
                </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <div class="col-md-8 col-md-offset-2">
                    <table class="table" style="margin-top: 2em; border-style: solid; border-color: green;">
                        <tr>
                            <th>Email</th>
                            <td>
                                <asp:TextBox runat="server" ID="txtemail" CssClass="form-control"></asp:TextBox></td>
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
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                                    <asp:ListItem>Student</asp:ListItem>
                                    <asp:ListItem>Teacher</asp:ListItem>
                                    <asp:ListItem>Staff</asp:ListItem>
                                    <asp:ListItem>Professor</asp:ListItem>
                                    <asp:ListItem>Dean</asp:ListItem>
                                    <asp:ListItem>Director</asp:ListItem>
                                </asp:DropDownList></td>
                        </tr>
                    </table>
                    <div class="col text-center">
                        <asp:Button runat="server" ID="btnpre2" Text="Previous" Style="margin: 10px" CssClass="btn btn-warning" Width="100px" OnClick="btnpre2_Click"></asp:Button>
                        <asp:Button runat="server" ID="btnnext2" Text="Next" Style="margin: 10px" CssClass="btn btn-primary" Width="100px" OnClick="btnnext2_Click"></asp:Button>
                        <br />
                    </div>
                </div>
            </asp:View>
            </asp:View><asp:View ID="View3" runat="server">
                <div class="col-md-8 col-md-offset-2">
                    <table class="table" style="margin-top: 2em; border-style: solid; border-color: blue;">
                        <tr>
                            <th>First Name</th>
                            <td>
                                <asp:Label runat="server" ID="lblfname" CssClass="form-control"></asp:Label></td>
                        </tr>
                        <tr>
                            <th>Enrollment No</th>
                            <td>
                                <asp:Label runat="server" ID="lblenrollment" CssClass="form-control"></asp:Label></td>
                        </tr>
                        <tr>
                            <th>Gender</th>
                            <td>
                                <asp:Label runat="server" ID="lblgender" CssClass="form-control"></asp:Label></td>
                        </tr>
                        <tr>
                            <th>Degree</th>
                            <td>
                                <asp:Label runat="server" ID="lbldegree" CssClass="form-control"></asp:Label></td>
                        </tr>
                        <tr>
                            <th>Email</th>
                            <td>
                                <asp:Label runat="server" ID="lblemail" CssClass="form-control"></asp:Label></td>
                        </tr>
                        <tr>
                            <th>Contact No</th>
                            <td>
                                <asp:Label runat="server" ID="lblcontactno" CssClass="form-control"></asp:Label></td>
                        </tr>
                        <tr>
                            <th>Address</th>
                            <td>
                                <asp:Label runat="server" ID="lbladdress" CssClass="form-control"></asp:Label></td>
                        </tr>
                        <tr>
                            <th>Designation</th>
                            <td>
                                <asp:Label runat="server" ID="lbldesignation" CssClass="form-control"></asp:Label></td>
                        </tr>
                    </table>
                    <div class="col text-center">
                        <asp:Button runat="server" ID="btnback" Text="Previous" Style="margin: 10px" CssClass="btn btn-danger" Width="100px" OnClick="btnback_Click"></asp:Button>
                        <asp:Button runat="server" ID="btnfetch" Text="Fetch" Style="margin: 10px" CssClass="btn btn-primary" Width="100px" OnClick="btnfetch_Click"></asp:Button>
                        <asp:Button runat="server" ID="btnsave" Text="Save" Style="margin: 10px" CssClass="btn btn-warning" Width="100px" OnClick="btnsave_Click"></asp:Button>
                        <br />
                    </div>
                </div>
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>
