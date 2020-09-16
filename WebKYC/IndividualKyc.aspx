<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndividualKyc.aspx.cs" Inherits="WebKYC.IndividualKyc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <script src="Scripts/bootstrap.min.js"></script>
    <title>Individual KYC</title>
</head>
<body>
     <br />
     <br />
    
     <div class="card" style="width: 100%; ">
         <form id="form_kycsystem" runat="server">
            <div class="card-header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-11">
                            <div id="heading">
                                <h2 style="text-align: left;">KYC (Know Your Customer)</h2>
                                <h2 style="text-align: left;">Individual Application Form</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
             
             <br/>

             <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="sub-head">
                            <h3>1. Identity Details *</h3>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <br />
                                <label>PAN Number :  </label>
                            </div>
                            <div class="col-md-3">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txtPan" ForeColor="Red" Font-Size="Small" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txtPAN" Font-Size="Small" ForeColor="Red" ValidationExpression="^([a-zA-Z]){5}([0-9]){4}([a-zA-Z]){1}?$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                                <br />
                                <asp:TextBox ID="txtPAN" runat="server" class="form-control" style="text-transform: uppercase;" placeholder="PAN Number" ></asp:TextBox>
                            </div>
                        </div><br/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        <br />
                        <label>Applicant Name :</label>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1ApplicantFirst" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt1ApplicantFirst" runat="server" class="form-control"  placeholder="First Name"  ></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1ApplicantMiddle" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt1ApplicantMiddle" runat="server" class="form-control"  placeholder="Middle Name" ></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1ApplicantLast" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt1ApplicantLast" runat="server" class="form-control"  placeholder="Last Name"  ></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        <br />
                        <label>Father/Spous Name :</label>
                    </div>
                    <div class="col-md-3">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1FatherFirst" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                       <br />
                       <asp:TextBox ID="txt1FatherFirst" runat="server" class="form-control"  placeholder="First Name"  ></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1FatherMiddle" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt1FatherMiddle" runat="server" class="form-control"  placeholder="Middle Name"  ></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1FatherLast" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt1FatherLast" runat="server" class="form-control"  placeholder="Last Name"  ></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        <br />
                        <label>Mother Name :</label>
                    </div>
                    <div class="col-md-3">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1MotherFirst" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                       <asp:TextBox ID="txt1MotherFirst" runat="server" class="form-control"  placeholder="First Name"  ></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1MotherMiddle" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt1MotherMiddle" runat="server" class="form-control"  placeholder="Middle Name"  ></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1MotherLast" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt1MotherLast" runat="server" class="form-control"  placeholder="Last Name"  ></asp:TextBox>
                    </div>
                </div><br/>

                 <!--date of birth-->
                <div class="row">
                    <div class="col-md-4">
                        <label>Date of Birth :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt1dob" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator><br />
                        <asp:TextBox ID="txt1dob" class="form-control" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date" placeholder="YYYY-MM-DD" runat="server"></asp:TextBox>
                    </div>
                    
                  <!--gender-->
                    <div class="col-md-4">
                        <label>Gender : </label><asp:RequiredFieldValidator ID="RequiredFieldValidator15" InitialValue="Choose..." runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="ddl1Gender" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                        <asp:DropDownList ID="ddl1Gender" runat="server" class="form-control">
                            <asp:ListItem  Value="Choose...">Choose...</asp:ListItem>
                            <asp:ListItem Value="Male">Male</asp:ListItem>
                            <asp:ListItem Value="Female">Female</asp:ListItem>
                            <asp:ListItem Value="Other">Other</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <!--marital status-->
                    <div class="col-md-4">
                        <label>Marital Status : </label><asp:RequiredFieldValidator ID="RequiredFieldValidator16" InitialValue="Choose..." runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="ddl1Marital" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddl1Marital" runat="server" class="form-control">
                            <asp:ListItem>Choose...</asp:ListItem>
                            <asp:ListItem Value="Married">Married</asp:ListItem>
                            <asp:ListItem Value="Unmaried">Unmarried</asp:ListItem>
                            <asp:ListItem Value="Other">Other</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div><br/>

                 <!--citizenship-->
                <div class="row">
                   <div class="col-md-4">
                    <label dir="ltr">Citizenship :</label>
                       <asp:RadioButton Checked="True" ID="RadioButton1" runat="server" Text="In-Indian" GroupName="citizen" />  
                       <asp:RadioButton ID="RadioButton2" runat="server" Text="Other" GroupName="citizen" /> 
                      </div>
                     <!--resident status-->
                      <div class="col-md-4">
                         <label>Resident :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator18" InitialValue="Choose..." runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ddl1Resident"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddl1Resident" runat="server" class="form-control">
                            <asp:ListItem >Choose...</asp:ListItem>
                            <asp:ListItem>Resident Indivisual</asp:ListItem>
                            <asp:ListItem>Non Resident India</asp:ListItem>
                            <asp:ListItem>Foreign National</asp:ListItem>
                            <asp:ListItem>Person Of Indian Origin</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                            <label>Occupation Type :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator19" InitialValue="Choose..." runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ddl1Occupation"></asp:RequiredFieldValidator>
                            <asp:DropDownList ID="ddl1Occupation" runat="server" class="form-control">
                                <asp:ListItem>Choose...</asp:ListItem>
                                <asp:ListItem>Service</asp:ListItem>
                                <asp:ListItem>Public Sector</asp:ListItem>
                                <asp:ListItem>Govt. Sector</asp:ListItem>
                                <asp:ListItem>Professional</asp:ListItem>
                                <asp:ListItem>Self Employed</asp:ListItem>
                                <asp:ListItem>Retired</asp:ListItem>
                                <asp:ListItem>Student</asp:ListItem>
                                <asp:ListItem>Housewife</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div><br />
                 <!--sign_photo-->
                <div class="row">
                    <div class="col-md-12">
                        <label>Upload Image and Signature :</label>
                    </div>
                <div class="row">
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-4 center ">
                                        <label>Upload Image :</label><br />
                                        <asp:FileUpload ID="imageFileUpload"  accept="image/*" onchange="preview_image(event)" runat="server" /><br />
                                        <img id="output_image" /><br />
                                        <asp:Label ID="imguploadlbl" runat="server" Text="Label"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="imageFileUpload" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-1"> 
                    </div>
                    <div class="col-md-1"> 
                    </div>
                    <div class="col-md-4">   
                                        <label>Upload Signature :</label><br />
                                        <asp:FileUpload ID="signFileUpload" accept="image/*" onchange="preview_sign(event)"  runat="server" /><br />
                                        <img id="output_sign" /><br />
                                        <asp:Label ID="signuploadlbl" runat="server" Text="Label"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="signFileUpload" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-md-1">
                    </div>
                </div>
            </div>
            <br />
             <!--==>>>>>>>>>   proof of identity   <<<<<<<=====-->
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="id-proof">
                            <h3>2. Proof Of Identity *</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div id="proof-head">
                            <p>(Certified copy of any of following Proof of Identity need to be Submitted.)</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <label>Select any Document :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator20" InitialValue="Choose..." runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ddl2Document"></asp:RequiredFieldValidator>

                        <asp:DropDownList ID="ddl2Document" runat="server" class="form-control">
                                <asp:ListItem>Choose...</asp:ListItem>
                                <asp:ListItem>Passport</asp:ListItem>
                                <asp:ListItem>Voter ID Card</asp:ListItem>
                                <asp:ListItem>Driving Licence</asp:ListItem>
                                <asp:ListItem>NREGA Job Card</asp:ListItem>
                                <asp:ListItem>Others (any document notified by central govt)</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="col-md-4">
                        <!--document number-->
                        <label>Enter Document Number :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt2Document"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt2Document" class="form-control" placeholder="enter card number" runat="server"></asp:TextBox><br />
                    </div>
                    <div class="col-md-4">
                        <label>Expiry of Proof : </label> <i>(if Applicable)</i>
                        <asp:TextBox ID="txt2Expiry" class="form-control" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date"  placeholder="YYYY-MM-DD" runat="server" ></asp:TextBox>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">                
                        <!--document upload-->
                        <label>Upload Document :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="doc_upload" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:FileUpload ID="doc_upload" class="form-control" runat="server" />
                        <asp:Label ID="idprooflbl" runat="server" Text="Label"></asp:Label>
                    </div>
                  </div><br />
            </div>
             <!--proof of Address-->
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="address-proof">
                            <h3>3. Proof Of Address *</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div id="address-head">
                            <p>(Certified copy of any of following Proof of Address need to be Submitted.)</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <label>Proof of Address :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator22" InitialValue="Choose..." runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ddl3Poi"></asp:RequiredFieldValidator>
                         <asp:DropDownList ID="ddl3Poi" runat="server" class="form-control">
                                <asp:ListItem>Choose...</asp:ListItem>
                                <asp:ListItem>Passport</asp:ListItem>
                                <asp:ListItem>Voter ID Card</asp:ListItem>
                                <asp:ListItem>Driving Licence</asp:ListItem>
                                <asp:ListItem>NREGA Job Card</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <!--address proof upload-->
                    <div class="col-md-4">
                        <label>Upload Address Proof :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="addrFileUpload" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                         <asp:FileUpload ID="addrFileUpload" class="form-control" runat="server" />
                        <asp:Label ID="addresslbl" runat="server" Text="Label"></asp:Label>
                    </div>
                    <!--address-->
                    <div class="col-md-4">
                        <label>Address :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt3Address"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt3Address" class="form-control" runat="server" TextMode="MultiLine" ></asp:TextBox>
                        <br />
                    </div>
                </div>
                <!--address details-->
                <div class="row">
                    <div class="col-md-4">
                         <label>City/Town :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt3City" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt3City" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                         <label>State :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt3State" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt3State" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                         <label>Postal Code :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt3Postal" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt3Postal" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txt3Postal" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />
            </div>

              <!--==============Contact Details--===============-->
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="contact-details">
                            <h3>4. Contact Details * </h3>
                        </div>
                        <span>(All the Communication will be done via provided mobile no. /Email Id) </span>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-4">
                        <label>Telephone No(if available) :</label><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt4Telephone" Font-Size="Small" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txt4Telephone" class="form-control" runat="server"></asp:TextBox>
                       
                    </div>
                    <div class="col-md-4">
                        <label>Mobile No :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt4Mobile"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt4Mobile" Font-Size="Small" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txt4Mobile" class="form-control" runat="server"></asp:TextBox>
                        
                    </div>
                    <div class="col-md-4">
                        <label>Secondary Mobile No(if available) :</label><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt4SecondaryMobile" Font-Size="Small" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txt4SecondaryMobile" class="form-control" runat="server"></asp:TextBox>
                        
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-4">
                        <label>Email ID :</label><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt4Email"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txt4Email"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt4Email" class="form-control" runat="server"></asp:TextBox>
                        <br />
                    </div>
                  <div class="col-md-8"></div>
                </div>
                <div class="row text-center">
                    <div class="col-md-12">
                    </div>
                </div><br />
            </div>
              <!--related person-->
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="contact-details">
                            <h3>5. Details of Related Person*</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <label>Related Person Type :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator32" InitialValue="Choose..." runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ddl5RelatedType"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddl5RelatedType" runat="server" class="form-control">
                                <asp:ListItem>Choose...</asp:ListItem>
                                <asp:ListItem>Gardion of Minor</asp:ListItem>
                                <asp:ListItem>Assignee</asp:ListItem>
                                <asp:ListItem>Authorized Representative</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </div>
                    <div class="col-md-4">
                         <label>KYC Number(if applicable) :</label>
                        <asp:TextBox ID="txt5KYC" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>PAN Number(if available) :</label>
                        <asp:TextBox ID="txt5PAN" runat="server" class="form-control" ></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                    </div>
                    <div class="col-md-3">
                        
                    </div>
                    <div class="col-md-3">
                        
                    </div>
                    <div class="col-md-3">
                        
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-2">
                        <br />
                        <label>Related Person Name :</label>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt5RelFirst" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt5RelFirst" class="form-control"  placeholder="First Name" runat="server"></asp:TextBox>
                     </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt5RelMiddle" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt5RelMiddle" class="form-control"  placeholder="Middle Name" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt5RelLast" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt5RelLast" class="form-control" placeholder="Last Name"  runat="server"></asp:TextBox>
                        <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <label>Proof of Identity of Related Person :</label>
                    </div>
                </div>
                <div class="row">
                    <!--<label>Proof of Identity of Related Person</label>-->
                    <div class="col-md-4">
                        <label>Select any Document :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator31" InitialValue="Choose..." runat="server" ErrorMessage=" (Invalid Data)" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ddl5RelatedDocumentType"></asp:RequiredFieldValidator>

                        <asp:DropDownList ID="ddl5RelatedDocumentType" runat="server" class="form-control">
                                <asp:ListItem>Choose...</asp:ListItem>
                                <asp:ListItem>Passport</asp:ListItem>
                                <asp:ListItem>Voter ID Card</asp:ListItem>
                                <asp:ListItem>Driving Licence</asp:ListItem>
                                <asp:ListItem>NREGA Job Card</asp:ListItem>
                                <asp:ListItem>Others (any document notified by central govt)</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <label>Enter Document Number :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt5RelDocNumber" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt5RelDocNumber" class="form-control" placeholder="enter card number" runat="server"></asp:TextBox>
                        
                    </div>
                    <div class="col-md-4">
                       <label>Upload Document :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="relFileUpload" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                           <asp:FileUpload ID="relFileUpload" class="form-control" runat="server" />
                           <asp:Label ID="relDoclbl" runat="server" Text="Label"></asp:Label>
                      </div>
                  </div><br />
                <div class="row text-left">
                    <div class="col-md-4">
                        <label>Expiry of Proof(if selected) :</label>
                        <asp:TextBox ID="txt5ProofExpiry" class="form-control" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date"  placeholder="YYYY-MM-DD" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-4">
                    </div>
                </div><br />
            </div>
              <!--applicant declration-->
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="contact-details">
                            <h3>6. Applicant Declration *</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked="true" />
                                <asp:Label ID="Label" runat="server" Text="Label">
                                     I hereby declare that the details furnished above are true and correct 
                                    to the best of my knowledge and belief and I undertake to inform you of 
                                    any changes therein, immediately. In case any of the above information is found 
                                    to be false or untrue or misleading or misrepresenting, I am aware that I may 
                                    be held liable for it. I hereby declare that I am not making this application for 
                                    the purpose of contravention of any Act, Rules, Regulations or any statute of 
                                    legislation or any notifications/directions issued by any governmental or statutory 
                                    authority from time to time.
                                </asp:Label>
                       </div>
                       
                    </div><br />
                <div class="row">
                    <div class="col-md-4">
                        <label>Place :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt5Place" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt5Place" class="form-control" runat="server"></asp:TextBox>
                       
                    </div>
                    <div class="col-md-4">
                        <label>Date of Declaration :</label><asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ErrorMessage=" (Invalid Data)" ControlToValidate="txt5DateOfDeclaration" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt5DateOfDeclaration" class="form-control" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date"  placeholder="YYYY-MM-DD" runat="server"></asp:TextBox>
                        
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-12">
                         <div id="declration-sig" class="text-center">
                             <asp:Label ID="declration" runat="server" Text="Label" BackColor="White" Font-Bold="True" ForeColor="Blue" align="center"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
                <br />
            <!--submit-->
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="submit" class="text-center">
                            <asp:Button ID="submit6" Class=" btn btn-primary" runat="server" Text="SUBMIT" OnClick="submit6_Click" />
                            <br/><br/>
                        </div>
                    </div>
                </div>
           </div>
    </form>
    </div>
    
    <script>
        
        function preview_image(event) {
            var reader = new FileReader();
            reader.onload = function() {
                var output = document.getElementById('output_image');
                output.src = reader.result;
            }
            reader.readAsDataURL(event.target.files[0]);
        }

        function preview_sign(event) {
            var reader = new FileReader();
            reader.onload = function() {
                var output = document.getElementById('output_sign');
                output.src = reader.result;
            }
            reader.readAsDataURL(event.target.files[0]);
        }
    </script>
</body>
</html>
