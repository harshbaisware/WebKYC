<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NonIndividualKyc.aspx.cs" Inherits="WebKYC.NonIndividualKyc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <title>Non-Individual KYC</title>
</head>
<body>
    <br />
    <br />
    <div class="card" style="width:100%;">
        <form id="form_kycsystem" runat="server">
            <div class="card-header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-11">
                            <div id="heading">
                                <h2 style="text-align: left;">KYC (Know Your Customer)</h2>
                                <h2 style="text-align: left;">Non-Individual Application Form</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div><br />

            <div class="container">
                <!--Entity Details-->
                <div class="row">
                    <div class="col-md-12">
                        <div id="sub-head">
                            <h3>1. Entity Details</h3>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-1">
                        <br />
                        <label>Name:</label>
                    </div>
                    <div class="col-md-5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt1EntityName" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt1EntityName" class="form-control"  placeholder="Entity Name" runat="server"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-3">
                        <br />
                        <label>Date of Incorporation or Formation</label>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt1FormationDate" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt1FormationDate" class="form-control" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date" placeholder="YYYY-MM-DD" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <br />
                        <label>Date of Commencement of Business</label>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt1CommencementDate" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt1CommencementDate" class="form-control" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date" placeholder="YYYY-MM-DD" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <br />
                        <label>Place of Incorporation or Formation</label>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt1FormationPlace" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt1FormationPlace" class="form-control"  placeholder="Place" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <br />
                        <label>Entity / Constitution Type:</label>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="ddl1EntityType" ForeColor="Red" SetFocusOnError="True" InitialValue="Choose..."></asp:RequiredFieldValidator>
                        <br />
                        <asp:DropDownList ID="ddl1EntityType" runat="server" class="form-control">
                            <asp:ListItem  Value="Choose...">Choose...</asp:ListItem>
                            <asp:ListItem Value="Sole Proprietorship">Sole Proprietorship</asp:ListItem>
                            <asp:ListItem Value="Private Limited Co.">Private Limited Co.</asp:ListItem>
                            <asp:ListItem Value="Association">Association</asp:ListItem>
                            <asp:ListItem Value="Public Limited Co.">Public Limited Co.</asp:ListItem>
                            <asp:ListItem Value="HUF">HUF</asp:ListItem>
                            <asp:ListItem Value="Society">Society</asp:ListItem>
                            <asp:ListItem Value="Partnership">Partnership</asp:ListItem>
                            <asp:ListItem Value="LLP">LLP</asp:ListItem>
                            <asp:ListItem Value="Foundation">Foundation</asp:ListItem>
                            <asp:ListItem Value="Trust">Trust</asp:ListItem>
                            <asp:ListItem Value="Liquidator">Liquidator</asp:ListItem>
                            <asp:ListItem Value="Financial Institution">Financial Institution</asp:ListItem>
                            <asp:ListItem Value="FPI Category 1">FPI Category 1</asp:ListItem>
                            <asp:ListItem Value="FPI Category 2">FPI Category 2</asp:ListItem>
                            <asp:ListItem Value="FPI Category 3">FPI Category 3</asp:ListItem>
                            <asp:ListItem Value="Other ">Other</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-3">
                        <br />
                        <asp:TextBox ID="txt1EntityOther" class="form-control"  placeholder="if Other (Please Specify)" runat="server"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-12">
                        <label>Residence for Tax purposes outside India or No Residence for Tax purposes    </label>
                        <asp:CheckBox ID="cb1ResidenceOutside" runat="server" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <br />
                        <label>ISO-3166 Country Code of Jurisdiction of Residence</label>
                    </div>
                    <div class="col-md-3">
                        <br />
                        <asp:TextBox ID="txt1Iso" placeholder="Ex:  IN" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <br />
                        <label>Tax Identification Number or equivalent ( If issued by Jurisdiction )</label>
                    </div>
                    <div class="col-md-3">
                        <br />
                        <asp:TextBox ID="txt1Tin" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <br />
                        <label>Number of controlling person(s) resident outside India for tax purposes</label>
                    </div>
                    <div class="col-md-3">
                        <br />
                        <asp:TextBox ID="txt1PersonOutside" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />

                <!--Proof of Identity-->
                <div class="row">
                    <div class="col-md-12">
                        <div id="sub-head">
                            <h3>2. Proof Of Identity</h3>
                        </div>
                    </div>
                </div><br />

                <div class="row">
                    <div class="col-md-4">
                        <label>Select any Document:</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="ddl2PoiType" ForeColor="Red" SetFocusOnError="True" InitialValue="Choose..."></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddl2PoiType" class="form-control" runat="server">
                            <asp:ListItem Value="Choose...">Choose...</asp:ListItem>
                            <asp:ListItem Value="PAN">PAN</asp:ListItem>
                            <asp:ListItem Value="TAN">TAN</asp:ListItem>
                            <asp:ListItem Value="CIN">CIN</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <label>Document Number:</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt2PoiNumber" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt2PoiNumber" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                   <div class="col-md-6">
                        <label>Certification of Incorporation or Formation / Registration Certificate :</label>
                        <asp:FileUpload ID="file2Doc1" class="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="file2Doc1" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:Label ID="lbl2Doc1" runat="server" Text="Label"></asp:Label>
                   </div>
                   <div class="col-md-6">
                        <label>Memorandum & Articles of Association/ Partnership Deed/ Trust deed :</label>
                        <asp:FileUpload ID="file2Doc2" class="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="file2Doc2" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:Label ID="lbl2Doc2" runat="server" Text="Label"></asp:Label>
                   </div>
                </div><br />
                <div class="row">
                   <div class="col-md-6">
                        <label>Resolution of Board / Managing Committee :</label>
                        <asp:FileUpload ID="file2Doc3" class="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="file2Doc3" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:Label ID="lbl2Doc3" runat="server" Text="Label"></asp:Label>
                   </div>
                   <div class="col-md-6">
                        <label>OVD in respect of person authorized to transact :</label>
                        <asp:FileUpload ID="file2Doc4" class="form-control" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="file2Doc4" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:Label ID="lbl2Doc4" runat="server" Text="Label"></asp:Label>
                   </div>
                </div><br /><br />

                <!--Proof of Address-->
                <div class="row">
                    <div class="col-md-12">
                        <div id="sub-head">
                            <h3>3. Proof Of Address</h3>
                        </div>
                    </div>
                </div><br />

                <div class="row">
                    <div class="col-md-4">
                        <label>Select Document:</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="ddl3Poa" ForeColor="Red" SetFocusOnError="True" InitialValue="Choose..."></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddl3Poa" class="form-control" runat="server">
                            <asp:ListItem  Value="Choose...">Choose...</asp:ListItem>
                            <asp:ListItem Value="Certification of Incorporation">Certification of Incorporation or Formation</asp:ListItem>
                            <asp:ListItem Value="Registration Certificate">Registration Certificate</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <label>Upload Document:</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="file3Poa" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:FileUpload ID="file3Poa" class="form-control" runat="server" />
                        <asp:Label ID="lbl3Poa" runat="server" Text="Label"></asp:Label>
                    </div>
                </div><br />

                <div class="row">
                    <div class="col-md-12">
                        <div id="address-head31">
                            <p><u>CURRENT / PERMANENT / OVERSEAS ADDRESS DETAILS :</u></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <label>Address :</label>
                        <asp:TextBox ID="txt3Address1" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>City/Town :</label>
                        <asp:TextBox ID="txt3City1" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>State/U.T :</label>
                        <asp:TextBox ID="txt3State1" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-4">
                        <label>Pin/Postal Code :</label>
                        <asp:TextBox ID="txt3Pin1" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />

                <div class="row">
                    <div class="col-md-12">
                        <div id="address-head31">
                            <p><u>CORRESPONDENCE / LOCAL ADDRESS DETAILS :</u></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <label>Address :</label>
                        <asp:TextBox ID="txt3Address2" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>City/Town :</label>
                        <asp:TextBox ID="txt3City2" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>State/U.T :</label>
                        <asp:TextBox ID="txt3State2" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-4">
                        <label>Pin/Postal Code :</label>
                        <asp:TextBox ID="txt3Pin2" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />

                <div class="row">
                    <div class="col-md-12">
                        <div id="address-head31">
                            <p><u>ADDRESS IN THE JURISDICTION DETAILS WHERE ENTITY IS RESIDENT :</u></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <label>Address :</label>
                        <asp:TextBox ID="txt3Address3" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>City/Town :</label>
                        <asp:TextBox ID="txt3City3" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>State/U.T :</label>
                        <asp:TextBox ID="txt3State3" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-4">
                        <label>Pin/Postal Code :</label>
                        <asp:TextBox ID="txt3Pin3" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br /><br />

                <!--Contact Details-->
                <div class="row">
                    <div class="col-md-12">
                        <div id="sub-head">
                            <h3>4. Contact Details</h3>
                        </div>
                        <span>(All the Communication will be done via provided mobile no. /Email Id) </span>
                    </div>
                </div><br />

                <div class="row">
                    <div class="col-md-4">
                        <label>Telephone Office:</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt4Telephone" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt4Telephone" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txt4Telephone" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>Mobile No :</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt4Mobile" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt4Mobile" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txt4Mobile" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>FAX :</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt4Fax" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt4Fax" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-4">
                        <label>Email ID :</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt4Email" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt4Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txt4Email" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br /><br />

                <!--Details of Related Person-->
                <div class="row">
                    <div class="col-md-12">
                        <div id="sub-head">
                            <h3>5. Details of Related Person</h3>
                        </div>
                    </div>
                </div><br />

                <div class="row">
                    <div class="col-md-4">
                        <label>Related Person Type:</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="ddl5RelatedType" ForeColor="Red" InitialValue="Choose..."></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="ddl5RelatedType" class="form-control" runat="server">
                            <asp:ListItem Value="Choose...">Choose...</asp:ListItem>
                                <asp:ListItem Value="Director">Director</asp:ListItem>
                                <asp:ListItem Value="Promoter">Promoter</asp:ListItem>
                                <asp:ListItem Value="Karta">Karta</asp:ListItem>
                                <asp:ListItem Value="Trustee">Trustee</asp:ListItem>
                                <asp:ListItem Value="Partner">Partner</asp:ListItem>
                                <asp:ListItem Value="Authorized Signatory">Authorized Signatory</asp:ListItem>
                                <asp:ListItem Value="Court Appointed Official">Court Appointed Official</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <label>KYC Number:(if available)</label>
                        <asp:TextBox ID="txt5KYC" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <br />
                        <label>Related Person Name:</label>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt5RelFirst" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt5RelFirst" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt5RelMiddle" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt5RelMiddle" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt5RelLast" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:TextBox ID="txt5RelLast" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-4">
                        <label>PAN Number:(if available)</label>
                        <asp:TextBox ID="txt5Pan" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>UID Number:(if available)</label>
                        <asp:TextBox ID="txt5Uid" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>DIN Number:(if available)</label>
                        <asp:TextBox ID="txt5Din" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-4">
                        <asp:CheckBox ID="cb5PoliticallyExposed" runat="server" Text="Politically Exposed Person" />
                    </div>
                    <div class="col-md-4">
                        <asp:CheckBox ID="cb5PoliticallyRelated" runat="server" Text="Related to Politically Exposed Person" />
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-12">
                        <div id="address-head31">
                            <p><u>Related Person Address Details :</u></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <label>Address :</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt5Address" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt5Address" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>City/Town :</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt5City" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt5City" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>State/U.T :</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt5State" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txt5State" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-4">
                        <label>Pin/Postal Code :</label>
                        <asp:TextBox ID="txt5Pin" class="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label>Country :</label>
                        <asp:TextBox ID="txt5Country" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-12">
                        <div id="address-head31">
                            <p><u>Related Person Image and Signature :</u></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-4">
                        <label>Upload Image :</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="file5Image" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:FileUpload ID="file5Image" accept="image/*" onchange="preview_image(event)" runat="server" />
                        <img id="img5Image" width="200" height="200"/>
                        <br />
                        <asp:Label ID="lbl5Image" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-4">
                        <label>Upload Signature :</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="file5Signature" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:FileUpload ID="file5Signature" accept="image/*" onchange="preview_sign(event)" runat="server" />
                        <img id="img5Sign" width="200" height="100"/>
                        <br />
                        <asp:Label ID="lbl5Sign" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="col-md-1">
                    </div>
                </div><br /><br />

                <!--Details of Related Person-->
                <div class="row">
                    <div class="col-md-12">
                        <div id="sub-head">
                            <h3>6. Applicant Declaration</h3>
                        </div>
                    </div>
                </div><br />

                <div class="row">
                    <div class="col-md-8">
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
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <br />
                                <br />
                                <label>Place :</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt6DeclarationPlace" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txt6DeclarationPlace" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <br />
                                <br />
                                <label>Date of Declaration :</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="txt6DeclarationDate" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txt6DeclarationDate" class="form-control" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date"  placeholder="YYYY-MM-DD" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <label><u>Upload Signature or Stamp of Applicant :</u></label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ErrorMessage="(Invalid Data)" ControlToValidate="file6Stamp" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:FileUpload ID="file6Stamp" accept="image/*" onchange="preview_stamp(event)" runat="server" />
                        <img id="img6Stamp" width="200" height="200"/>
                        <br />
                        <asp:Label ID="lbl6Stamp" runat="server" Text="Label"></asp:Label>
                    </div>
                </div><br /><br />
                <div class="row">
                    <div class="col-md-12">
                        <div id="declar" class="text-center">
                            <asp:Label ID="lbl6Declar" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div><br />
                <div class="row">
                    <div class="col-md-12">
                        <div id="submit" class="text-center">
                            <asp:Button ID="submit6" Class=" btn btn-primary" runat="server" Text="SUBMIT" OnClick="submit6_Click" />
                        </div>
                    </div>
                </div><br />
            </div>
        </form>
    </div>

    <script>

        function preview_image(event) {
            var reader = new FileReader();
            reader.onload = function() {
                var output = document.getElementById('img5Image');
                output.src = reader.result;
            }
            reader.readAsDataURL(event.target.files[0]);
        }

        function preview_sign(event) {
            var reader = new FileReader();
            reader.onload = function() {
                var output = document.getElementById('img5Sign');
                output.src = reader.result;
            }
            reader.readAsDataURL(event.target.files[0]);
        }

        function preview_stamp(event) {
            var reader = new FileReader();
            reader.onload = function () {
                var output = document.getElementById('img6Stamp');
                output.src = reader.result;
            }
            reader.readAsDataURL(event.target.files[0]);
        }
    </script>
</body>
</html>
