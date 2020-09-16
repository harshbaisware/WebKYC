using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web.Services.Description;

namespace WebKYC
{
    public partial class NonIndividualKyc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lbl2Doc1.Visible = false;
                lbl2Doc2.Visible = false;
                lbl2Doc3.Visible = false;
                lbl2Doc4.Visible = false;
                lbl3Poa.Visible = false;
                lbl5Image.Visible = false;
                lbl5Sign.Visible = false;
                lbl6Stamp.Visible = false;
                lbl6Declar.Visible = false;
            }
        }

        protected void submit6_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

            if (!CheckBox1.Checked)
            {
                lbl6Declar.Visible = true;
                lbl6Declar.Text = "Please Mark Declaration as Checked";
                lbl6Declar.ForeColor = System.Drawing.Color.Red;
                submit6.Focus();
            }
            else
            {
                using (SqlConnection sqlCon = new SqlConnection(mainconn))
                {
                    string cb1 = "No";
                    if (cb1ResidenceOutside.Checked)
                    {
                        cb1 = "Yes";
                    }
                    string cb2 = "No";
                    if (cb5PoliticallyExposed.Checked || cb5PoliticallyRelated.Checked)
                    {
                        cb2 = "Yes";
                    }

                    //Connection Open
                    sqlCon.Open();
                    string sqlquery = "testkycsp3";
                    SqlCommand sqlcmd = new SqlCommand(sqlquery, sqlCon);
                    sqlcmd.CommandType = CommandType.StoredProcedure;

                    /*---application type---*/
                    string t = "Non-Individual";
                    sqlcmd.Parameters.AddWithValue("@Type", t);

                    /*---entity name----*/
                    sqlcmd.Parameters.AddWithValue("@Entity_Name", txt1EntityName.Text);

                    /*---formation date----*/
                    sqlcmd.Parameters.AddWithValue("@Formation_Date", txt1FormationDate.Text);

                    /*---formation place----*/
                    sqlcmd.Parameters.AddWithValue("@Formation_Place", txt1FormationPlace.Text);

                    /*---commecement date----*/
                    sqlcmd.Parameters.AddWithValue("@Commecement_Date", txt1CommencementDate.Text);

                    /*---entity type----*/
                    sqlcmd.Parameters.AddWithValue("@Entity_Type", ddl1EntityType.SelectedValue + txt1EntityOther.Text);

                    /*---residence outside----*/
                    sqlcmd.Parameters.AddWithValue("@Residence_Outside", cb1);

                    /*---Iso Entity----*/
                    sqlcmd.Parameters.AddWithValue("@Entity_Iso", txt1Iso.Text.ToUpper());

                    /*---tin----*/
                    sqlcmd.Parameters.AddWithValue("@Tin", txt1Tin.Text);

                    /*---Persons outside----*/
                    sqlcmd.Parameters.AddWithValue("@Persons_Outside", txt1PersonOutside.Text);

                    sqlcmd.ExecuteNonQuery();
                    sqlCon.Close();

                    ////////////////////////////
                    sqlCon.Open();
                    SqlCommand sqlcmd2 = new SqlCommand("SELECT ID FROM Person WHERE FULL_NAME='" + txt1EntityName.Text + "' and Commencement_Date='" + txt1CommencementDate.Text + "'", sqlCon);
                    SqlDataReader reader = sqlcmd2.ExecuteReader();
                    reader.Read();
                    string idn = "";
                    idn = reader["ID"].ToString();
                    reader.Close();
                    sqlcmd2.ExecuteNonQuery();
                    sqlCon.Close();
                    ////////////////////////////

                    //Connection Open
                    sqlCon.Open();
                    string sqlquery1 = "testkycsp4";
                    SqlCommand sqlcmd1 = new SqlCommand(sqlquery1, sqlCon);
                    sqlcmd1.CommandType = CommandType.StoredProcedure;

                    /*---P_Id----*/
                    sqlcmd1.Parameters.AddWithValue("@P_Id", idn);

                    /*---identity proof type----*/
                    sqlcmd1.Parameters.AddWithValue("@Identity_Proof_Type", ddl2PoiType.SelectedValue);

                    /*---identity proof number----*/
                    sqlcmd1.Parameters.AddWithValue("@Identity_Proof_Number", txt2PoiNumber.Text);

                    /*---poa type----*/
                    sqlcmd1.Parameters.AddWithValue("@Address_Type", ddl3Poa.SelectedValue);

                    /*---address1----*/
                    sqlcmd1.Parameters.AddWithValue("@Address1", txt3Address1.Text);

                    /*---city1----*/
                    sqlcmd1.Parameters.AddWithValue("@City1", txt3City1.Text);

                    /*---state1----*/
                    sqlcmd1.Parameters.AddWithValue("@State1", txt3State1.Text);

                    /*---pin1----*/
                    sqlcmd1.Parameters.AddWithValue("@Pin1", txt3Pin1.Text);

                    /*---address2----*/
                    sqlcmd1.Parameters.AddWithValue("@Address2", txt3Address2.Text);

                    /*---city2----*/
                    sqlcmd1.Parameters.AddWithValue("@City2", txt3City2.Text);

                    /*---state2----*/
                    sqlcmd1.Parameters.AddWithValue("@State2", txt3State2.Text);

                    /*---pin2----*/
                    sqlcmd1.Parameters.AddWithValue("@Pin2", txt3Pin2.Text);

                    /*---address3----*/
                    sqlcmd1.Parameters.AddWithValue("@Address3", txt3Address3.Text);

                    /*---city3----*/
                    sqlcmd1.Parameters.AddWithValue("@City3", txt3City3.Text);

                    /*---state3----*/
                    sqlcmd1.Parameters.AddWithValue("@State3", txt3State3.Text);

                    /*---pin3----*/
                    sqlcmd1.Parameters.AddWithValue("@Pin3", txt3Pin3.Text);

                    /*---telephone----*/
                    sqlcmd1.Parameters.AddWithValue("@Telephone", txt4Telephone.Text);

                    /*---mobile----*/
                    sqlcmd1.Parameters.AddWithValue("@Mobile", txt4Mobile.Text);

                    /*---fax----*/
                    sqlcmd1.Parameters.AddWithValue("@Fax", txt4Fax.Text);

                    /*---email----*/
                    sqlcmd1.Parameters.AddWithValue("@Email", txt4Email.Text);

                    /*---related type----*/
                    sqlcmd1.Parameters.AddWithValue("@Related_Type", ddl5RelatedType.SelectedValue);

                    /*---related kyc----*/
                    sqlcmd1.Parameters.AddWithValue("@Related_Kyc", txt5KYC.Text);

                    /*---related name----*/
                    string related = txt5RelFirst.Text + " " + txt5RelMiddle.Text + " " + txt5RelLast.Text;
                    sqlcmd1.Parameters.AddWithValue("@Related_Name", related);

                    /*---related pan----*/
                    sqlcmd1.Parameters.AddWithValue("@Related_Pan", txt5Pan.Text);

                    /*---related uid----*/
                    sqlcmd1.Parameters.AddWithValue("@Related_Uid", txt5Uid.Text);

                    /*---related din----*/
                    sqlcmd1.Parameters.AddWithValue("@Related_Din", txt5Din.Text);

                    /*---related politically exposed----*/
                    sqlcmd1.Parameters.AddWithValue("@Related_Politically_Exposed", cb2);

                    /*---related address----*/
                    sqlcmd1.Parameters.AddWithValue("@Related_Address", txt5Address.Text);

                    /*---related city----*/
                    sqlcmd1.Parameters.AddWithValue("@Related_City", txt5City.Text);

                    /*---related state----*/
                    sqlcmd1.Parameters.AddWithValue("@Related_State", txt5State.Text);

                    /*---related pin----*/
                    sqlcmd1.Parameters.AddWithValue("@Related_Pin", txt5Pin.Text);

                    /*---related country----*/
                    sqlcmd1.Parameters.AddWithValue("@Related_Country", txt5Country.Text);

                    /*---declaration date----*/
                    sqlcmd1.Parameters.AddWithValue("@Declaration_Date", txt6DeclarationDate.Text);

                    /*---declaration place----*/
                    sqlcmd1.Parameters.AddWithValue("@Declaration_Place", txt6DeclarationPlace.Text);

                    /*--- poi document1----*/
                    if (file2Doc1.PostedFile != null)
                    {
                        HttpPostedFile postedFile1 = file2Doc1.PostedFile;
                        string doc_File1 = Path.GetFileName(file2Doc1.PostedFile.FileName);
                        Stream stream1 = postedFile1.InputStream;
                        BinaryReader binaryReader1 = new BinaryReader(stream1);
                        byte[] bytes1 = binaryReader1.ReadBytes((int)stream1.Length);
                        //file2Doc1.SaveAs(Server.MapPath("images/" + idn + "/") + doc_File5);
                        sqlcmd1.Parameters.AddWithValue("@File2_Doc1", System.Data.SqlDbType.Binary).Value = bytes1;
                        sqlcmd1.Parameters.AddWithValue("@File2_Doc1_Path", doc_File1);
                    }

                    /*---poi document2----*/
                    if (file2Doc2.PostedFile != null)
                    {
                        HttpPostedFile postedFile2 = file2Doc2.PostedFile;
                        string doc_File2 = Path.GetFileName(file2Doc2.PostedFile.FileName);
                        Stream stream2 = postedFile2.InputStream;
                        BinaryReader binaryReader2 = new BinaryReader(stream2);
                        byte[] bytes2 = binaryReader2.ReadBytes((int)stream2.Length);
                        //file2Doc2.SaveAs(Server.MapPath("images/" + idn + "/") + doc_File5);
                        sqlcmd1.Parameters.AddWithValue("@File2_Doc2", System.Data.SqlDbType.Binary).Value = bytes2;
                        sqlcmd1.Parameters.AddWithValue("@File2_Doc2_Path", doc_File2);
                    }

                    /*---poi document3----*/
                    if (file2Doc3.PostedFile != null)
                    {
                        HttpPostedFile postedFile3 = file2Doc3.PostedFile;
                        string doc_File3 = Path.GetFileName(file2Doc3.PostedFile.FileName);
                        Stream stream3 = postedFile3.InputStream;
                        BinaryReader binaryReader3 = new BinaryReader(stream3);
                        byte[] bytes3 = binaryReader3.ReadBytes((int)stream3.Length);
                        //file2Doc3.SaveAs(Server.MapPath("images/" + idn + "/") + doc_File5);
                        sqlcmd1.Parameters.AddWithValue("@File2_Doc3", System.Data.SqlDbType.Binary).Value = bytes3;
                        sqlcmd1.Parameters.AddWithValue("@File2_Doc3_Path", doc_File3);
                    }

                    /*---poi document4----*/
                    if (file2Doc4.PostedFile != null)
                    {
                        HttpPostedFile postedFile4 = file2Doc4.PostedFile;
                        string doc_File4 = Path.GetFileName(file2Doc4.PostedFile.FileName);
                        Stream stream4 = postedFile4.InputStream;
                        BinaryReader binaryReader4 = new BinaryReader(stream4);
                        byte[] bytes4 = binaryReader4.ReadBytes((int)stream4.Length);
                        //file2Doc4.SaveAs(Server.MapPath("images/" + idn + "/") + doc_File5);
                        sqlcmd1.Parameters.AddWithValue("@File2_Doc4", System.Data.SqlDbType.Binary).Value = bytes4;
                        sqlcmd1.Parameters.AddWithValue("@File2_Doc4_Path", doc_File4);
                    }

                    /*---declaration place----*/
                    if (file3Poa.PostedFile != null)
                    {
                        HttpPostedFile postedFile5 = file3Poa.PostedFile;
                        string doc_File5 = Path.GetFileName(file3Poa.PostedFile.FileName);
                        Stream stream5 = postedFile5.InputStream;
                        BinaryReader binaryReader5 = new BinaryReader(stream5);
                        byte[] bytes5 = binaryReader5.ReadBytes((int)stream5.Length);
                        //file3Poa.SaveAs(Server.MapPath("images/" + idn + "/") + doc_File5);
                        sqlcmd1.Parameters.AddWithValue("@File3_Poa", System.Data.SqlDbType.Binary).Value = bytes5;
                        sqlcmd1.Parameters.AddWithValue("@File3_Poa_Path", doc_File5);
                    }

                    /*---declaration place----*/
                    if (file5Image.PostedFile != null)
                    {
                        HttpPostedFile postedFile6 = file5Image.PostedFile;
                        string doc_File6 = Path.GetFileName(file5Image.PostedFile.FileName);
                        Stream stream6 = postedFile6.InputStream;
                        BinaryReader binaryReader6 = new BinaryReader(stream6);
                        byte[] bytes6 = binaryReader6.ReadBytes((int)stream6.Length);
                        //file5Image.SaveAs(Server.MapPath("images/" + idn + "/") + doc_File5);
                        sqlcmd1.Parameters.AddWithValue("@File5_Image", System.Data.SqlDbType.Binary).Value = bytes6;
                        sqlcmd1.Parameters.AddWithValue("@File5_Image_Path", doc_File6);
                    }

                    /*---declaration place----*/
                    if (file5Signature.PostedFile != null)
                    {
                        HttpPostedFile postedFile7 = file5Signature.PostedFile;
                        string doc_File7 = Path.GetFileName(file5Signature.PostedFile.FileName);
                        Stream stream7 = postedFile7.InputStream;
                        BinaryReader binaryReader7 = new BinaryReader(stream7);
                        byte[] bytes7 = binaryReader7.ReadBytes((int)stream7.Length);
                        //file5Sign.SaveAs(Server.MapPath("images/" + idn + "/") + doc_File5);
                        sqlcmd1.Parameters.AddWithValue("@File5_Sign", System.Data.SqlDbType.Binary).Value = bytes7;
                        sqlcmd1.Parameters.AddWithValue("@File5_Sign_Path", doc_File7);
                    }

                    /*---declaration place----*/
                    if (file6Stamp.PostedFile != null)
                    {
                        HttpPostedFile postedFile8 = file6Stamp.PostedFile;
                        string doc_File8 = Path.GetFileName(file6Stamp.PostedFile.FileName);
                        Stream stream8 = postedFile8.InputStream;
                        BinaryReader binaryReader8 = new BinaryReader(stream8);
                        byte[] bytes8 = binaryReader8.ReadBytes((int)stream8.Length);
                        //file6Stamp.SaveAs(Server.MapPath("images/" + idn + "/") + doc_File5);
                        sqlcmd1.Parameters.AddWithValue("@File6_Stamp", System.Data.SqlDbType.Binary).Value = bytes8;
                        sqlcmd1.Parameters.AddWithValue("@File6_Stamp_Path", doc_File8);
                    }


                    sqlcmd1.ExecuteNonQuery();
                    sqlCon.Close();

                    /*Upload Success Message*/
                    lbl2Doc1.Visible = true;
                    lbl2Doc1.Text = "File Uploaded Successfuly";
                    lbl2Doc1.ForeColor = System.Drawing.Color.Green;

                    lbl2Doc2.Visible = true;
                    lbl2Doc2.Text = "File Uploaded Successfuly";
                    lbl2Doc2.ForeColor = System.Drawing.Color.Green;

                    /*Upload Success Message*/
                    lbl2Doc3.Visible = true;
                    lbl2Doc3.Text = "File Uploaded Successfuly";
                    lbl2Doc3.ForeColor = System.Drawing.Color.Green;

                    /*Upload Success Message*/
                    lbl2Doc4.Visible = true;
                    lbl2Doc4.Text = "File Uploaded Successfuly";
                    lbl2Doc4.ForeColor = System.Drawing.Color.Green;

                    /*Upload Success Message*/
                    lbl3Poa.Visible = true;
                    lbl3Poa.Text = "File Uploaded Successfuly";
                    lbl3Poa.ForeColor = System.Drawing.Color.Green;

                    /*Upload Success Message*/
                    lbl5Image.Visible = true;
                    lbl5Image.Text = "File Uploaded Successfuly";
                    lbl5Image.ForeColor = System.Drawing.Color.Green;

                    /*Upload Success Message*/
                    lbl5Sign.Visible = true;
                    lbl5Sign.Text = "File Uploaded Successfuly";
                    lbl5Sign.ForeColor = System.Drawing.Color.Green;

                    /*Upload Success Message*/
                    lbl6Stamp.Visible = true;
                    lbl6Stamp.Text = "File Uploaded Successfuly";
                    lbl6Stamp.ForeColor = System.Drawing.Color.Green;

                    /*Upload Success Message*/
                    lbl6Declar.Visible = true;
                    lbl6Declar.Text = "KYC FORM FILLED SUCCESSFULLY !";
                    lbl6Declar.ForeColor = System.Drawing.Color.Green;
                    submit6.Focus();
                }
            }
        }
    }
}