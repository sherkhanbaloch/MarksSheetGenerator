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
    public partial class Default : System.Web.UI.Page
    {
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dt.Columns.Add("Photo");
                dt.Columns.Add("Year");
                dt.Columns.Add("Month");
                dt.Columns.Add("Roll No");
                dt.Columns.Add("Group");
                dt.Columns.Add("Name");
                dt.Columns.Add("Father Name");
                dt.Columns.Add("Surname");
                dt.Columns.Add("Institute");
                dt.Columns.Add("District");

                dt.Columns.Add("English-I");
                dt.Columns.Add("Urdu Salis");
                dt.Columns.Add("Islamiat");
                dt.Columns.Add("Physics(TH)-I");
                dt.Columns.Add("Physics(PR)-I");
                dt.Columns.Add("Chemistry(TH)-I");
                dt.Columns.Add("Chemistry(PR)-I");
                dt.Columns.Add("Mathematics-I");

                dt.Columns.Add("English-II");
                dt.Columns.Add("Sindhi");
                dt.Columns.Add("Pakistan Studies");
                dt.Columns.Add("Physics(TH)-II");
                dt.Columns.Add("Physics(PR)-II");
                dt.Columns.Add("Chemistry(TH)-II");
                dt.Columns.Add("Chemistry(PR)-II");
                dt.Columns.Add("Mathematics-II");

                dt.Columns.Add("Total Marks");
                dt.Columns.Add("Marks In Words");
                dt.Columns.Add("Result");
                dt.Columns.Add("Percentage");
                dt.Columns.Add("Grade");

                ViewState["table"] = dt;
            }
        }


        public static string NumberToWords(int number)
        {
            if (number == 0)
                return "zero";

            if (number < 0)
                return "minus " + NumberToWords(Math.Abs(number));

            string words = "";

            if ((number / 1000000) > 0)
            {
                words += NumberToWords(number / 1000000) + " million ";
                number %= 1000000;
            }

            if ((number / 1000) > 0)
            {
                words += NumberToWords(number / 1000) + " thousand ";
                number %= 1000;
            }

            if ((number / 100) > 0)
            {
                words += NumberToWords(number / 100) + " hundred ";
                number %= 100;
            }

            if (number > 0)
            {
                if (words != "")
                    words += "and ";

                var unitsMap = new[] { "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen" };
                var tensMap = new[] { "zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety" };

                if (number < 20)
                    words += unitsMap[number];
                else
                {
                    words += tensMap[number / 10];
                    if ((number % 10) > 0)
                        words += "-" + unitsMap[number % 10];
                }
            }

            return words;
        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            string result = string.Empty;
            string grade = string.Empty;

            int total = Convert.ToInt32(english1Txt.Text) + Convert.ToInt32(urduTxt.Text) + Convert.ToInt32(islamiatTxt.Text) + Convert.ToInt32(physicsTH1Txt.Text) + Convert.ToInt32(physicsPR1Txt.Text) + Convert.ToInt32(chemistryTH1Txt.Text) + Convert.ToInt32(chemistryPR1Txt.Text) + Convert.ToInt32(math1txt.Text) + Convert.ToInt32(english2Txt.Text) + Convert.ToInt32(sindhiTxt.Text) + Convert.ToInt32(pakistanTxt.Text) + Convert.ToInt32(physicsTH2Txt.Text) + Convert.ToInt32(physicsPR2Txt.Text) + Convert.ToInt32(chemistryTH2Txt.Text) + Convert.ToInt32(chemistryPR2Txt.Text) + Convert.ToInt32(math2txt.Text);

            string marksInWords = NumberToWords(total);

            // Percentage
            double percentage = Convert.ToDouble(total) / 1100 * 100;

            // Grade
            if (total >= 363)
            {
                result = "Pass";
            }
            else
            {
                result = "Fail";
            }

            // Grade
            if (total >= 880)
            {
                grade = "A-1";
            }
            else if (total >= 770)
            {
                grade = "A";
            }
            else if (total >= 660)
            {
                grade = "B";
            }
            else if (total >= 550)
            {
                grade = "C";
            }
            else if (total >= 440)
            {
                grade = "D";
            }
            else if (total >= 330)
            {
                grade = "E";
            }
            else
            {
                grade = "No Grade";
            }

            string filePath = Server.MapPath("Images/");
            string fileName = Path.GetFileName(FileUpload1.FileName);
            string extension = Path.GetExtension(fileName);

            FileUpload1.SaveAs(filePath + "001" + extension);
            string imagePath = "Images/" + "001" + extension;

            dt = ViewState["table"] as DataTable;

            dt.Rows.Add(imagePath, Convert.ToDateTime(yearTxt.Text).ToString("yyyy"), Convert.ToDateTime(yearTxt.Text).ToString("MMMM"), rollTxt.Text, groupDDL.Text, nameTxt.Text, fnameTxt.Text, surnameTxt.Text, instituteTxt.Text, districtTxt.Text, english1Txt.Text, urduTxt.Text, islamiatTxt.Text, physicsTH1Txt.Text, physicsPR1Txt.Text, chemistryTH1Txt.Text, chemistryPR1Txt.Text, math1txt.Text, english2Txt.Text, sindhiTxt.Text, pakistanTxt.Text, physicsTH2Txt.Text, physicsPR2Txt.Text, chemistryTH2Txt.Text, chemistryPR2Txt.Text, math2txt.Text, total.ToString(), marksInWords, result.ToString(), Math.Round(percentage, 2).ToString(), grade.ToString());

            HttpContext.Current.Cache.Insert("table", dt, null, DateTime.Now.AddMinutes(15), System.Web.Caching.Cache.NoSlidingExpiration);

            Response.Redirect("MarksSheet.aspx");
        }
    }
}