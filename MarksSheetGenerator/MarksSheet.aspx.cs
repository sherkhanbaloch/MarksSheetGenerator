using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MarksSheetGenerator
{
    public partial class MarksSheet : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dt = HttpContext.Current.Cache["table"] as DataTable;

                Image1.ImageUrl = dt.Rows[0]["Photo"].ToString();
                lblYear.Text = "HSC-II ANNUAL EXAMINATION " + dt.Rows[0]["Year"].ToString() + " HELD IN " + dt.Rows[0]["Month"].ToString();
                lblRollNo.Text = dt.Rows[0]["Roll No"].ToString();
                lblGroup.Text = dt.Rows[0]["Group"].ToString();
                lblName.Text = dt.Rows[0]["Name"].ToString();
                lblFname.Text = dt.Rows[0]["Father Name"].ToString();
                lblSurname.Text = dt.Rows[0]["Surname"].ToString();
                lblInstitute.Text = dt.Rows[0]["Institute"].ToString();
                lblDistrict.Text = dt.Rows[0]["District"].ToString();

                lblEnglish1.Text = dt.Rows[0]["English-I"].ToString();
                lblUrdu.Text = dt.Rows[0]["Urdu Salis"].ToString();
                lblIslamiat.Text = dt.Rows[0]["Islamiat"].ToString();
                lblPhysicsTH1.Text = dt.Rows[0]["Physics(TH)-I"].ToString();
                lblPhysicsPR1.Text = dt.Rows[0]["Physics(PR)-I"].ToString();
                lblChemistryTH1.Text = dt.Rows[0]["Chemistry(TH)-I"].ToString();
                lblChemistryPR1.Text = dt.Rows[0]["Chemistry(PR)-I"].ToString();
                lblMath1.Text = dt.Rows[0]["Mathematics-I"].ToString();

                lblEnglish2.Text = dt.Rows[0]["English-II"].ToString();
                lblSindhi.Text = dt.Rows[0]["Sindhi"].ToString();
                lblPakistan.Text = dt.Rows[0]["Pakistan Studies"].ToString();
                lblPhysicsTH2.Text = dt.Rows[0]["Physics(TH)-II"].ToString();
                lblPhysicsPR2.Text = dt.Rows[0]["Physics(PR)-II"].ToString();
                lblChemistryTH2.Text = dt.Rows[0]["Chemistry(TH)-II"].ToString();
                lblChemistryPR2.Text = dt.Rows[0]["Chemistry(PR)-II"].ToString();
                lblMath2.Text = dt.Rows[0]["Mathematics-II"].ToString();

                lblTotal.Text = dt.Rows[0]["Total Marks"].ToString();
                lblWords.Text = "OBTAINED MARKS (IN WORDS): " + dt.Rows[0]["Marks In Words"].ToString();
                lblResult.Text = dt.Rows[0]["Result"].ToString();
                lblPercentage.Text = dt.Rows[0]["Percentage"].ToString();
                lblGrade.Text = dt.Rows[0]["Grade"].ToString();
                lblIssueDate.Text = DateTime.Now.ToString("dd-MMM-yy");
            }
        }
    }
}