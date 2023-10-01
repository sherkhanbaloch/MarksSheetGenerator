<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MarksSheetGenerator.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Marks Sheet Generator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="my-3 text-center">BISE Marks Sheet Generator</h1>

            <hr />

            <div class="row">
                <div class="col-md-2 my-2">
                    <asp:Label ID="Label25" CssClass="col-form-label" runat="server" Text="Photo"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                </div>
                <div class="col-md-2 my-2">
                    <asp:Label ID="Label1" CssClass="col-form-label" runat="server" Text="Exam Year/Month"></asp:Label>
                    <asp:TextBox ID="yearTxt" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-2 my-2">
                    <asp:Label ID="Label2" CssClass="col-form-label" runat="server" Text="Roll No"></asp:Label>
                    <asp:TextBox ID="rollTxt" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3 my-2">
                    <asp:Label ID="Label3" CssClass="col-form-label" runat="server" Text="Group"></asp:Label>
                    <asp:DropDownList ID="groupDDL" CssClass="form-control" runat="server">
                        <asp:ListItem>Pre-Engineering</asp:ListItem>
                        <asp:ListItem>Pre-Medical</asp:ListItem>
                        <asp:ListItem>Pre-Computer Science</asp:ListItem>
                        <asp:ListItem>Pre-Commerce</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-3 my-2">
                    <asp:Label ID="Label4" CssClass="col-form-label" runat="server" Text="District"></asp:Label>
                    <asp:TextBox ID="districtTxt" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 my-2">
                    <asp:Label ID="Label5" CssClass="col-form-label" runat="server" Text="Name"></asp:Label>
                    <asp:TextBox ID="nameTxt" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3 my-2">
                    <asp:Label ID="Label6" CssClass="col-form-label" runat="server" Text="Father Name"></asp:Label>
                    <asp:TextBox ID="fnameTxt" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3 my-2">
                    <asp:Label ID="Label7" CssClass="col-form-label" runat="server" Text="Surname"></asp:Label>
                    <asp:TextBox ID="surnameTxt" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-3 my-2">
                    <asp:Label ID="Label8" CssClass="col-form-label" runat="server" Text="Institute"></asp:Label>
                    <asp:TextBox ID="instituteTxt" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <hr />

            <div class="row">
                <div class="col-md-6 border">
                    <h5 class="my-2">HSC-I Marks</h5>
                    <div class="row">
                        <div class="col-md-3 my-2">
                            <asp:Label ID="Label9" CssClass="col-form-label" runat="server" Text="English-I"></asp:Label>
                            <asp:TextBox ID="english1Txt" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3 my-2">
                            <asp:Label ID="Label10" CssClass="col-form-label" runat="server" Text="Urdu Salis"></asp:Label>
                            <asp:TextBox ID="urduTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3 my-2">
                            <asp:Label ID="Label11" CssClass="col-form-label" runat="server" Text="Islamiat"></asp:Label>
                            <asp:TextBox ID="islamiatTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3 my-2">
                            <asp:Label ID="Label12" CssClass="col-form-label" runat="server" Text="Physics(TH)-I"></asp:Label>
                            <asp:TextBox ID="physicsTH1Txt" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 my-2">
                            <asp:Label ID="Label13" CssClass="col-form-label" runat="server" Text="Physics(PR)-I"></asp:Label>
                            <asp:TextBox ID="physicsPR1Txt" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3 my-2">
                            <asp:Label ID="Label14" CssClass="col-form-label" runat="server" Text="Chemistry(Th)-I"></asp:Label>
                            <asp:TextBox ID="chemistryTH1Txt" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3 my-2">
                            <asp:Label ID="Label15" CssClass="col-form-label" runat="server" Text="Chemistry(PR)-I"></asp:Label>
                            <asp:TextBox ID="chemistryPR1Txt" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3 my-2">
                            <asp:Label ID="Label16" CssClass="col-form-label" runat="server" Text="Mathematics-I"></asp:Label>
                            <asp:TextBox ID="math1txt" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 border">
                    <h5 class="my-2">HSC-II Marks</h5>
                    <div class="row">
                        <div class="col-md-3 my-2">
                            <asp:Label ID="Label17" CssClass="col-form-label" runat="server" Text="English-II"></asp:Label>
                            <asp:TextBox ID="english2Txt" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3 my-2">
                            <asp:Label ID="Label18" CssClass="col-form-label" runat="server" Text="Sindhi"></asp:Label>
                            <asp:TextBox ID="sindhiTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3 my-2">
                            <asp:Label ID="Label19" CssClass="col-form-label" runat="server" Text="Pakistan Studies"></asp:Label>
                            <asp:TextBox ID="pakistanTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3 my-2">
                            <asp:Label ID="Label20" CssClass="col-form-label" runat="server" Text="Physics(TH)-II"></asp:Label>
                            <asp:TextBox ID="physicsTH2Txt" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 my-2">
                            <asp:Label ID="Label21" CssClass="col-form-label" runat="server" Text="Physics(PR)-II"></asp:Label>
                            <asp:TextBox ID="physicsPR2Txt" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3 my-2">
                            <asp:Label ID="Label22" CssClass="col-form-label" runat="server" Text="Chemistry(Th)-II"></asp:Label>
                            <asp:TextBox ID="chemistryTH2Txt" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3 my-2">
                            <asp:Label ID="Label23" CssClass="col-form-label" runat="server" Text="Chemistry(PR)-II"></asp:Label>
                            <asp:TextBox ID="chemistryPR2Txt" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-3 my-2">
                            <asp:Label ID="Label24" CssClass="col-form-label" runat="server" Text="Mathematics-II"></asp:Label>
                            <asp:TextBox ID="math2txt" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>

            <hr />

            <div class="row">
                <div class="col-md-3">
                    <asp:Button ID="btnPrint" CssClass="btn btn-success container-fluid" runat="server" Text="Print Marks Sheet" OnClick="btnPrint_Click" />
                </div>
                <div class="col-md-3">
                    <asp:Button ID="btnClear" CssClass="btn btn-danger container-fluid" runat="server" Text="Clear Data" />
                </div>
            </div>

        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>
