<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClaimPolicy.aspx.cs" Inherits="PolicyClaimApp.Account.ClaimPolicy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
        function openEmailClient()
        {
            var strHref = 'mailto:' + 'Shubham@g.com' + '?cc=' + 'aabc@gmail.com' + '&bcc=' + 'cde@gmail.com';
            window.open(strHref);
            return false;

        }
</script>
    <div class="form-horizontal">
        <h4><b>Claim Your Policy</b></h4>
        <hr />
        <div class="row">
            <div class="col-md-4">
         <asp:Label ID="lblName" runat="server" Text="Name*" ></asp:Label>
                </div>
                <div class="col-md-4">
        <asp:Label ID="lblPolicy" runat="server" Text="Policy Number"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                      <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The Name field is required." />
                    </div>
                <div class="col-md-4">
        <asp:TextBox ID="txtPolicy" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
         <div style="margin: 10px;"></div><%--Spacing--%>
       
        <%-- Claim Input Details Section--%>
         <div style="margin: 10px;"></div><%--Spacing--%>
         
        <%-- Email Details Verification--%>
        <div class="row">
            <div class="col-md-4">
         <asp:Label ID="lblEmail" runat="server" Text="Email*" ></asp:Label>
                </div>
                <div class="col-md-4">
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The Email field is required." />
                    </div>
                <div class="col-md-4">
       <asp:Button runat="server" Text="Verify Email" CssClass="btn btn-primary" href="#" data-toggle="tooltip" title="To verify whether user is eligible for claim or not" />
                </div>
            </div>
             
             <%-- Details Verification--%>
            <div style="margin: 10px;"></div><%--Spacing--%>
              <div class="row">
            <div class="col-md-4">
         <asp:Label ID="lblLossDetails" runat="server" Text="Please provide comments:*" ></asp:Label>
                </div>
                <div class="col-md-4">
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                  <textarea class="form-control" rows="5" id="comment" ></textarea>
                     <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="comment"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The Details field is required." />--%>
                    </div>
                 </div>
        
         <%-- Upload Details --%>
         <div style="margin: 10px;"></div><%--Spacing--%>
        <div class="row">
            <div class="col-md-4">
         <asp:Label ID="Label1" runat="server" Text="Upload Document :*" ></asp:Label>
                </div>
                <div class="col-md-4">
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <asp:FileUpload id="FileUploadControl" runat="server" CssClass="form-control" />
        <%--<asp:TextBox ID="txtUpload" runat="server" CssClass="form-control" style="max-width:450px;"></asp:TextBox>--%>
                    </div>
                <div class="col-md-4">
       <asp:Button runat="server" Text="Upload" CssClass="btn btn-primary" style="margin-left:-28px; width:110px;"/>
                </div>
            </div>
              <%-- Claim Button Section--%> 
                <div style="margin: 50px;"></div><%--Spacing--%>
                <div class="row">
                <div class="col-md-2">
                <asp:Button id="btnClaimPolicy" runat="server" Text="Claim Policy" CssClass="btn btn-primary" OnClick="ClaimPolicy_Click"  />
                    </div>
                <div class="col-md-2">
                <asp:Button runat="server" Text="Cancel" CssClass="btn btn-primary" style="margin-left:-76px;" />
                </div>
            </div>

       
</asp:Content>
