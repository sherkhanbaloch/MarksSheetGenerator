<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MarksSheet.aspx.cs" Inherits="MarksSheetGenerator.MarksSheet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Marks Sheet Generator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <style>
        table, th, td {
            border: solid;
            text-align: center;
        }

        .heading-color {
            background-color: rgb(226, 239, 218);
            color: black;
        }
    </style>

</head>
<body onload="printdiv('div_print');">
    <form id="form1" runat="server">
        <div class="container">
            <asp:Panel ID="Panel1" runat="server">
                <div id="div_print">
                    <h5 class="text-center fw-bold">BOARD OF INTERMEDIATE & SECONDARY EDUCATION, LARKANA</h5>
                    <h5 class="text-center">MARKS CERTIFICATE</h5>

                    <div class="row">
                        <div class="col-3 d-flex">
                            <asp:Image ID="Image1" CssClass="border mx-auto" Width="40%" runat="server" />
                        </div>
                        <div class="col-1">
                        </div>
                        <div class="col-4 d-flex">
                            <asp:Image ID="Image2" ImageUrl="~/Images/board-logo.jpg" CssClass="mx-auto" Width="35%" runat="server" />
                        </div>
                        <div class="col-4">
                            <div class="row">
                                <div class="col-5">
                                    <asp:Label ID="Label1" runat="server" Text="ROLL No:"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Text="Group"></asp:Label>
                                </div>
                                <div class="col-7">
                                    <asp:Label ID="lblRollNo" runat="server"></asp:Label>
                                    <br />
                                    <asp:Label ID="lblGroup" runat="server"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row heading-color text-center my-3 fw-bold">
                        <div class="col-12">
                            <asp:Label ID="lblYear" CssClass="text-uppercase" runat="server" Text="HSC-II ANNUAL EXAMINATION 2022 HELD IN JUNE"></asp:Label>
                        </div>
                    </div>

                    <div class="row fw-bold">
                        <div class="col-3">
                            <asp:Label ID="Label6" runat="server" Text="NAME:"></asp:Label>
                            <br />
                            <asp:Label ID="Label7" runat="server" Text="FATHER'S NAME:"></asp:Label>
                            <br />
                            <asp:Label ID="Label10" runat="server" Text="SURNAME:"></asp:Label>
                            <br />
                            <asp:Label ID="Label11" runat="server" Text="INSTITUTE:"></asp:Label>
                            <br />
                            <asp:Label ID="Label12" runat="server" Text="DISTRICT:"></asp:Label>
                        </div>
                        <div class="col-9">
                            <asp:Label ID="lblName" runat="server"></asp:Label>
                            <br />
                            <asp:Label ID="lblFname" runat="server"></asp:Label>
                            <br />
                            <asp:Label ID="lblSurname" runat="server"></asp:Label>
                            <br />
                            <asp:Label ID="lblInstitute" runat="server"></asp:Label>
                            <br />
                            <asp:Label ID="lblDistrict" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="row mt-4">
                        <div class="col-12">
                            <table class="w-100">
                                <thead>
                                    <tr>
                                        <th>SUBJECTS</th>
                                        <th>MAX MARKS</th>
                                        <th>MIN MARKS</th>
                                        <th>OBT. MARKS</th>
                                        <th>REMARKS</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>ENGLISH-I</td>
                                        <td>100</td>
                                        <td>33</td>
                                        <td>
                                            <asp:Label ID="lblEnglish1" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>URDU SALIS</td>
                                        <td>100</td>
                                        <td>33</td>
                                        <td>
                                            <asp:Label ID="lblUrdu" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>ISLAMIAT</td>
                                        <td>50</td>
                                        <td>17</td>
                                        <td>
                                            <asp:Label ID="lblIslamiat" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>PHYSICS(TH)-I</td>
                                        <td>85</td>
                                        <td>28</td>
                                        <td>
                                            <asp:Label ID="lblPhysicsTH1" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>PHYSICS(PR)-I</td>
                                        <td>15</td>
                                        <td>5</td>
                                        <td>
                                            <asp:Label ID="lblPhysicsPR1" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>CHEMISTRY(TH)-I</td>
                                        <td>85</td>
                                        <td>28</td>
                                        <td>
                                            <asp:Label ID="lblChemistryTH1" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>CHEMISTRY(PR)-I</td>
                                        <td>15</td>
                                        <td>5</td>
                                        <td>
                                            <asp:Label ID="lblChemistryPR1" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>MATHEMATICS-I</td>
                                        <td>100</td>
                                        <td>33</td>
                                        <td>
                                            <asp:Label ID="lblMath1" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>ENGLISH-II</td>
                                        <td>100</td>
                                        <td>33</td>
                                        <td>
                                            <asp:Label ID="lblEnglish2" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>SINDHI</td>
                                        <td>100</td>
                                        <td>33</td>
                                        <td>
                                            <asp:Label ID="lblSindhi" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>PAKISTAN STUDIES</td>
                                        <td>50</td>
                                        <td>17</td>
                                        <td>
                                            <asp:Label ID="lblPakistan" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>PHYSICS(TH)-II</td>
                                        <td>85</td>
                                        <td>28</td>
                                        <td>
                                            <asp:Label ID="lblPhysicsTH2" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>PHYSICS(PR)-II</td>
                                        <td>15</td>
                                        <td>5</td>
                                        <td>
                                            <asp:Label ID="lblPhysicsPR2" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>CHEMISTRY(TH)-II</td>
                                        <td>85</td>
                                        <td>28</td>
                                        <td>
                                            <asp:Label ID="lblChemistryTH2" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>CHEMISTRY(PR)-II</td>
                                        <td>15</td>
                                        <td>5</td>
                                        <td>
                                            <asp:Label ID="lblChemistryPR2" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>MATHEMATICS-II</td>
                                        <td>100</td>
                                        <td>33</td>
                                        <td>
                                            <asp:Label ID="lblMath2" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>1100</td>
                                        <td></td>
                                        <td>
                                            <asp:Label ID="lblTotal" CssClass="fw-bold" runat="server"></asp:Label>
                                        </td>
                                        <td></td>
                                    </tr>
                                </tbody>

                                <tfoot>
                                    <tr>
                                        <td class="text-start" colspan="5">
                                            <asp:Label ID="lblWords" CssClass="fw-bold text-uppercase" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                        <div class="row mt-4">
                            <div class="col-4 fw-bold">
                                <asp:Label ID="Label33" runat="server" Text="RESULTS:"></asp:Label>
                                <br />
                                <asp:Label ID="Label34" runat="server" Text="PERCENTAGE"></asp:Label>
                                <br />
                                <asp:Label ID="Label35" runat="server" Text="GRADE:"></asp:Label>
                                <br />
                                <asp:Label ID="Label36" runat="server" Text="DATE OF ISSUEANCE:"></asp:Label>
                            </div>
                            <div class="col-8">
                                <asp:Label ID="lblResult" runat="server"></asp:Label>
                                <br />
                                <asp:Label ID="lblPercentage" runat="server"></asp:Label>
                                <br />
                                <asp:Label ID="lblGrade" runat="server"></asp:Label>
                                <br />
                                <asp:Label ID="lblIssueDate" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

    <script language="javascript">
        function printdiv(printpage) {
            var headstr = "<html><head><title></title></head><body>";
            var footstr = "</body>";
            var newstr = document.all.item(printpage).innerHTML;
            var oldstr = document.body.innerHTML;
            document.body.innerHTML = headstr + newstr + footstr;
            window.print();
            document.body.innerHTML = oldstr;
            return false;
        }
    </script>
</body>
</html>
