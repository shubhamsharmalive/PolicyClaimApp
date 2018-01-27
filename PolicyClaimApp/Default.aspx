<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PolicyClaimApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <script type="text/javascript">
       function profiel()
       {
           window.location.href = "Account/Login"
           return false;

       }
 </script>
    <div class="jumbotron" style="background-image:url(../images/HomeImg2.jpg)" >
        <h1 style="margin-bottom:120px;"></h1>
        <%--<p class="lead">Happy Life Insurance Company provides protection to your life by providing various Policies.</p>--%>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Submit your Claim</h2>
            <p>
                <h3>We're Here To Help You.</h3>
                Filing a claim can be an emotional time. Happy Life Insurance is here to help you every step of the way, making your claims experience as simple and convenient as possible.
                 With our team of claims, we'll work to help you get back to normal quickly. You can file your claim online quickly and easily by logging in to My Account.
                 Once you're logged in, you can start your claim and track its progress.
            </p>
            <p>
                <asp:Button runat="server" Text="File A Claim >>" CssClass="btn btn-primary" OnClientClick="return profiel();"/>
            </p>
        </div>
        <div class="col-md-4">
            <h2>﻿Track A Claim </h2>
            <p>
                <h3>Claims service you can count on.</h3>
                Quickly and easily check the status of your claim and get step-by-step help with the claims process. With Allstate's 24/7 claims support, you can get answers to your claims questions day or night. 
                Check on the progress of your claim. 
                Depending on your situation, there's a different process for tracking your claim with Allstate. Choose the description below that best fits you for the quickest way to find your claim. 
            </p>
            <p>
                <asp:Button runat="server" Text="Track Claim >>" CssClass="btn btn-primary" OnClientClick="return profiel();"/>
            </p>
        </div>
        <div class="col-md-4">
            <h2>﻿Fight Fraud </h2>
            <p>
                <h3>Take A Stand Against Insurance Fraud.</h3>
                Insurance fraud is a crime that occurs when someone knowingly lies to an insurer in order to receive payments. These crimes can drive up insurance premiums for everyone. Allstate works to fight against insurance fraud to help protect you from these increases. You can learn how to identify and report fraud so that you lower your chances of becoming a victim of a scam.
                Woman on phone. 
            </p>
            <p>
                 <asp:Button runat="server" Text="Complain >>" CssClass="btn btn-primary" OnClientClick="return profiel();"  />
            </p>
        </div>
    </div>

</asp:Content>
