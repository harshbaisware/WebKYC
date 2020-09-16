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
    public partial class IndividualKyc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                imguploadlbl.Visible = false;
                signuploadlbl.Visible = false;
                idprooflbl.Visible = false;
                addresslbl.Visible = false;
                relDoclbl.Visible = false;
                declration.Visible = false;
            }
        }

        protected void submit6_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            if (!CheckBox1.Checked)
            {
                declration.Visible = true;
                declration.Text = "Please Mark Declaration as Checked";
                declration.ForeColor = System.Drawing.Color.Red;
                submit6.Focus();
            }
            else
            {
                using (SqlConnection sqlCon = new SqlConnection(mainconn))
                {
                    string citizens = "";
                    if (RadioButton1.Checked)
                    {
                        citizens = "In-Indian";
                    }
                    else
                    {
                        citizens = "Other";
                    }
                    sqlCon.Open();
                    string sqlquery1 = "testkycsp1";
                    SqlCommand sqlcmd1 = new SqlCommand(sqlquery1, sqlCon);
                    sqlcmd1.CommandType = CommandType.StoredProcedure;
                    /*====Identity Details Insertion======*/

                    /*---Applicant Pan----*/
                    sqlcmd1.Parameters.AddWithValue("@PAN_Number", txtPAN.Text.ToUpper());

                    /*---Applicant name----*/
                    string ApplicantName = txt1ApplicantFirst.Text + " " + txt1ApplicantMiddle.Text + " " + txt1ApplicantLast.Text;
                    sqlcmd1.Parameters.AddWithValue("@Applicant_Name", ApplicantName);

                    /*---father name----*/
                    string FatherSpouseName = txt1FatherFirst.Text + " " + txt1FatherMiddle.Text + " " + txt1FatherLast.Text;
                    sqlcmd1.Parameters.AddWithValue("@Father_Spouse_Name", FatherSpouseName);

                    /*---mother name----*/
                    string MotherName = txt1MotherFirst.Text + " " + txt1MotherMiddle.Text + " " + txt1MotherLast.Text;
                    sqlcmd1.Parameters.AddWithValue("@Mother_Name", MotherName);

                    /*====gender insert======*/
                    sqlcmd1.Parameters.AddWithValue("@Gender", ddl1Gender.SelectedItem.Value);

                    /*====Marital Status====*/
                    sqlcmd1.Parameters.AddWithValue("@Marital_Status", ddl1Marital.SelectedItem.Value);

                    /*====citizen====*/
                    sqlcmd1.Parameters.AddWithValue("@Citizenship", citizens);

                    /*====resident====*/
                    sqlcmd1.Parameters.AddWithValue("@Resident", ddl1Resident.SelectedItem.Value);

                    /*====occupation====*/
                    sqlcmd1.Parameters.AddWithValue("@Occupation", ddl1Occupation.SelectedItem.Value);

                    /*dob*/
                    sqlcmd1.Parameters.AddWithValue("@DOB", txt1dob.Text);

                    /*Application_Type*/
                    string t = "Individual";
                    sqlcmd1.Parameters.AddWithValue("@Type", t);

                    /*image upload*/
                    if (imageFileUpload.PostedFile != null)
                    {
                        HttpPostedFile postedFile = imageFileUpload.PostedFile;
                        string imgFile = Path.GetFileName(imageFileUpload.PostedFile.FileName);
                        sqlcmd1.Parameters.AddWithValue("@Image", imgFile);
                        Stream stream = postedFile.InputStream;
                        BinaryReader binaryReader = new BinaryReader(stream);
                        byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
                        sqlcmd1.Parameters.AddWithValue("@Img", System.Data.SqlDbType.Binary).Value = bytes;

                    }
                    /*signature upload*/
                    if (signFileUpload.PostedFile != null)
                    {
                        HttpPostedFile postedFile1 = signFileUpload.PostedFile;
                        string signFile1 = Path.GetFileName(signFileUpload.PostedFile.FileName);
                        sqlcmd1.Parameters.AddWithValue("@Signature", signFile1);
                        Stream stream1 = postedFile1.InputStream;
                        BinaryReader binaryReader1 = new BinaryReader(stream1);
                        byte[] bytes1 = binaryReader1.ReadBytes((int)stream1.Length);
                        sqlcmd1.Parameters.AddWithValue("@Sgn", System.Data.SqlDbType.Binary).Value = bytes1;

                    }

                    sqlcmd1.ExecuteNonQuery();
                    sqlCon.Close();

                    ////////////////////////////
                    sqlCon.Open();
                    SqlCommand sqlcmd2 = new SqlCommand("SELECT ID FROM Person WHERE PAN_NO='" + txtPAN.Text + "'", sqlCon);
                    SqlDataReader reader = sqlcmd2.ExecuteReader();
                    reader.Read();
                    string idn = "";
                    idn = reader["ID"].ToString();
                    reader.Close();
                    sqlcmd2.ExecuteNonQuery();
                    sqlCon.Close();
                    ////////////////////////////
                    /*
                    string createfolder = Server.MapPath(string.Format("images/{0}/", idn));
                    if(!Directory.Exists(createfolder))
                    {
                        Directory.CreateDirectory(createfolder);

                    }
                    */
                    ////////////////////////////
                    /*====upload image and sign====*/
                    /*image upload*/
                    if (imageFileUpload.PostedFile != null)
                    {
                        HttpPostedFile postedFile = imageFileUpload.PostedFile;
                        string imgFile = Path.GetFileName(imageFileUpload.PostedFile.FileName);
                        //Stream stream = postedFile.InputStream;
                        //BinaryReader binaryReader = new BinaryReader(stream);
                        //byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
                        //imageFileUpload.SaveAs(Server.MapPath("images/"+idn+"/")+imgFile);
                        //sqlcmd1.Parameters.AddWithValue("@Photo", System.Data.SqlDbType.Binary).Value = bytes;
                        //sqlcmd1.Parameters.AddWithValue("@Photo_Name", "images/" + imgFile);

                    }
                    /*signature upload*/
                    if (signFileUpload.PostedFile != null)
                    {
                        HttpPostedFile postedFile1 = signFileUpload.PostedFile;
                        string signFile1 = Path.GetFileName(signFileUpload.PostedFile.FileName);
                        //Stream stream1 = postedFile1.InputStream;
                        //BinaryReader binaryReader1 = new BinaryReader(stream1);
                        //byte[] bytes1 = binaryReader1.ReadBytes((int)stream1.Length);
                        //signFileUpload.SaveAs(Server.MapPath("images/"+idn+"/")+signFile1);
                        //sqlcmd1.Parameters.AddWithValue("@Signature", System.Data.SqlDbType.Binary).Value = bytes1;
                        //sqlcmd1.Parameters.AddWithValue("@Signature_Name", "images/" + signFile1);

                    }
                    /*====Proof of ID====*/

                    sqlCon.Open();
                    string sqlquery = "testkycsp2";
                    SqlCommand sqlcmd = new SqlCommand(sqlquery, sqlCon);
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    /*id type*/
                    sqlcmd.Parameters.AddWithValue("@P_ID", Int32.Parse(idn));
                    sqlcmd.Parameters.AddWithValue("@DocumentType2", ddl2Document.SelectedItem.Value);

                    /*id number*/
                    sqlcmd.Parameters.AddWithValue("@DocumentNo2", txt2Document.Text);

                    /*id upload*/
                    if (doc_upload.PostedFile != null)
                    {
                        HttpPostedFile postedFile2 = doc_upload.PostedFile;
                        string doc_File2 = Path.GetFileName(doc_upload.PostedFile.FileName);
                        Stream stream2 = postedFile2.InputStream;
                        BinaryReader binaryReader2 = new BinaryReader(stream2);
                        byte[] bytes2 = binaryReader2.ReadBytes((int)stream2.Length);
                        //doc_upload.SaveAs(Server.MapPath("images/"+idn+"/")+doc_File2);
                        sqlcmd.Parameters.AddWithValue("@Idp", System.Data.SqlDbType.Binary).Value = bytes2;
                        sqlcmd.Parameters.AddWithValue("@ID_Document", doc_File2);
                    }
                    /*document expiry date*/
                    sqlcmd.Parameters.AddWithValue("@DocumentExp2", txt2Expiry.Text);

                    /*address proof type*/
                    sqlcmd.Parameters.AddWithValue("@AddressProofType3", ddl3Poi.SelectedItem.Value);

                    /*address doc upload*/
                    if (addrFileUpload.PostedFile != null)
                    {
                        HttpPostedFile postedFile3 = addrFileUpload.PostedFile;
                        string doc_addressFile3 = Path.GetFileName(addrFileUpload.PostedFile.FileName);
                        Stream stream3 = postedFile3.InputStream;
                        BinaryReader binaryReader3 = new BinaryReader(stream3);
                        byte[] bytes3 = binaryReader3.ReadBytes((int)stream3.Length);
                        //addrFileUpload.SaveAs(Server.MapPath("images/"+idn+"/")+doc_addressFile3);
                        sqlcmd.Parameters.AddWithValue("@Adp", System.Data.SqlDbType.Binary).Value = bytes3;
                        sqlcmd.Parameters.AddWithValue("@AD_Document", doc_addressFile3);
                    }
                    /*address */
                    sqlcmd.Parameters.AddWithValue("@PermanentAddress3", txt3Address.Text);
                    sqlcmd.Parameters.AddWithValue("@TemporaryAddress3", txt3Address.Text);

                    /*address details */
                    sqlcmd.Parameters.AddWithValue("@City3", txt3City.Text);
                    sqlcmd.Parameters.AddWithValue("@State3", txt3State.Text);
                    sqlcmd.Parameters.AddWithValue("@Postal3", txt3Postal.Text);

                    /*telefone off */
                    sqlcmd.Parameters.AddWithValue("@Telephone4", txt4Telephone.Text);
                    /*mobile no*/
                    sqlcmd.Parameters.AddWithValue("@Mobile4", txt4Mobile.Text);
                    /*mobile no*/
                    sqlcmd.Parameters.AddWithValue("@SecondaryMobile4", txt4SecondaryMobile.Text);
                    /*Email id */
                    sqlcmd.Parameters.AddWithValue("@Email4", txt4Email.Text);

                    /*related_person*/
                    string RelatedName = txt5RelFirst.Text + " " + txt5RelMiddle.Text + " " + txt5RelLast.Text;
                    sqlcmd.Parameters.AddWithValue("@RelType5", ddl5RelatedType.SelectedItem.Value);
                    sqlcmd.Parameters.AddWithValue("@RelKyc5", txt5KYC.Text);
                    sqlcmd.Parameters.AddWithValue("@RelPan5", txt5PAN.Text);
                    sqlcmd.Parameters.AddWithValue("@RelName5", RelatedName);
                    sqlcmd.Parameters.AddWithValue("@DocumentNo5", txt5RelDocNumber.Text);
                    sqlcmd.Parameters.AddWithValue("@DocumentType5", ddl5RelatedDocumentType.SelectedItem.Value);
                    sqlcmd.Parameters.AddWithValue("@DocumentExp5", txt5ProofExpiry.Text);

                    if (relFileUpload.PostedFile != null)
                    {
                        HttpPostedFile postedFile4 = relFileUpload.PostedFile;
                        string doc_File5 = Path.GetFileName(relFileUpload.PostedFile.FileName);
                        Stream stream4 = postedFile4.InputStream;
                        BinaryReader binaryReader4 = new BinaryReader(stream4);
                        byte[] bytes4 = binaryReader4.ReadBytes((int)stream4.Length);
                        //relFileUpload.SaveAs(Server.MapPath("images/" + idn + "/") + doc_File5);
                        sqlcmd.Parameters.AddWithValue("@Rdp", System.Data.SqlDbType.Binary).Value = bytes4;
                        sqlcmd.Parameters.AddWithValue("@Rel_Document", doc_File5);
                    }

                    /*place*/
                    sqlcmd.Parameters.AddWithValue("@Place5", txt5Place.Text);
                    /*declaration date */
                    sqlcmd.Parameters.AddWithValue("@DeclarationDate5", txt5DateOfDeclaration.Text);


                    sqlcmd.ExecuteNonQuery();
                    sqlCon.Close();

                    /*Upload Success Message*/
                    imguploadlbl.Visible = true;
                    imguploadlbl.Text = "File Uploaded Successfuly";
                    imguploadlbl.ForeColor = System.Drawing.Color.Green;

                    signuploadlbl.Visible = true;
                    signuploadlbl.Text = "File Uploaded Successfuly";
                    signuploadlbl.ForeColor = System.Drawing.Color.Green;

                    /*Upload Success Message*/
                    idprooflbl.Visible = true;
                    idprooflbl.Text = "File Uploaded Successfuly";
                    idprooflbl.ForeColor = System.Drawing.Color.Green;

                    /*Upload Success Message*/
                    addresslbl.Visible = true;
                    addresslbl.Text = "File Uploaded Successfuly";
                    addresslbl.ForeColor = System.Drawing.Color.Green;

                    /*Upload Success Message*/
                    relDoclbl.Visible = true;
                    relDoclbl.Text = "File Uploaded Successfuly";
                    relDoclbl.ForeColor = System.Drawing.Color.Green;

                    /*Upload Success Message*/
                    declration.Visible = true;
                    declration.Text = "KYC FORM FILLED SUCCESSFULLY !";
                    declration.ForeColor = System.Drawing.Color.Green;
                    submit6.Focus();

                }
            }
        }
    }
}