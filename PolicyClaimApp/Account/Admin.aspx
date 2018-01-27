<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="PolicyClaimApp.Account.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="form-horizontal">
     <h4><b>Admin Page </b></h4>  
         <%-- Search policy Detail By policyNumber--%>
        <div class="row">
            <div class="col-md-4">
         <asp:Label ID="lblPolicy" runat="server" Text="Policy Number" ></asp:Label>
                </div>
                <div class="col-md-4">
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
        <asp:TextBox ID="txtPolicy" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                <div class="col-md-4">
                      
       <asp:Button runat="server" Text="Search Detail" CssClass="btn btn-primary" href="#" data-toggle="tooltip" title="Hooray!" Style="margin-left:-100px;" />
                </div>
                    </div>
          <div style="margin: 10px;"></div><%--Spacing--%>

          <%-- Search All policy Detail --%>
                <div class="row">
                    <div class="col-md-4">
        <asp:Button runat="server" Id="AllPolicies" Text="All Policies" CssClass="btn btn-primary" OnClick="AllPolicies_Click" href="#" data-toggle="tooltip" title="Hooray!" />
                    </div>
                    
                </div>
        <%-- Table Detail --%>

          <div class="container">   
                <asp:GridView ID="gvBookStoreRecords" AutoGenerateEditButton="False" 
                 runat="server" CellPadding="4" ForeColor="#333333" GridLines="Both"
                AutoGenerateColumns="False" >
                <EditRowStyle BackColor="#999999" />   
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />   
                <HeaderStyle BackColor="#428bca" Font-Bold="True" ForeColor="White" />   
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />   
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />   
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />   
                <SortedAscendingCellStyle BackColor="#E9E7E2" />   
                <SortedAscendingHeaderStyle BackColor="#506C8C" />   
                <SortedDescendingCellStyle BackColor="#FFFDF8" />   
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                <Columns>
                <asp:BoundField HeaderText="Name" 
                DataField="Name" 
                SortExpression="Name">
                <ItemStyle Width="140px"></ItemStyle>
                </asp:BoundField>

                <asp:BoundField HeaderText="Policy" 
                DataField="Policy" 
                SortExpression="Policy">
                <ItemStyle Width="140px"></ItemStyle>
                </asp:BoundField>

                <asp:BoundField HeaderText="Email" 
                DataField="Email" 
                SortExpression="Email">
                <ItemStyle Width="140px"></ItemStyle>
                </asp:BoundField>

                </Columns> 
            </asp:GridView>   
        </div>   
          
          <%-- User Detail By Name--%>
        <div class="row">
            <div class="col-md-4">
         <asp:Label ID="UserName" runat="server" Text="User Name" ></asp:Label>
                </div>
                <div class="col-md-4">
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
        <asp:TextBox ID="txtUser" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                <div class="col-md-4">
                      
       <asp:Button runat="server" Text="Search User" CssClass="btn btn-primary" href="#" data-toggle="tooltip" title="Hooray!" Style="margin-left:-100px;" />
                </div>
                    </div>
          <div style="margin: 10px;"></div><%--Spacing--%>
          <%-- Search All policy Detail --%>
                <div class="row">
                    <div class="col-md-4">
        <asp:Button runat="server" Id="AllUser" Text="All Policies" CssClass="btn btn-primary" OnClick="AllUser_Click" href="#" data-toggle="tooltip" title="Hooray!" />
                    </div>
                    
                </div>
        <%-- Table Detail --%>

          <div class="container">   
                <asp:GridView ID="gvUser" AutoGenerateEditButton="False" 
                 runat="server" CellPadding="4" ForeColor="#333333" GridLines="Both"
                AutoGenerateColumns="False" >
                <EditRowStyle BackColor="#999999" />   
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />   
                <HeaderStyle BackColor="#428bca" Font-Bold="True" ForeColor="White" />   
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />   
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />   
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />   
                <SortedAscendingCellStyle BackColor="#E9E7E2" />   
                <SortedAscendingHeaderStyle BackColor="#506C8C" />   
                <SortedDescendingCellStyle BackColor="#FFFDF8" />   
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                <Columns>
                <asp:BoundField HeaderText="Name" 
                DataField="UserName" 
                SortExpression="Name">
                <ItemStyle Width="140px"></ItemStyle>
                </asp:BoundField>

                <asp:BoundField HeaderText="Email" 
                DataField="Email" 
                SortExpression="Email">
                <ItemStyle Width="140px"></ItemStyle>
                </asp:BoundField>

                <asp:BoundField HeaderText="Mobile" 
                DataField="Mobile" 
                SortExpression="Mobile">
                <ItemStyle Width="140px"></ItemStyle>
                </asp:BoundField>

                     <asp:BoundField HeaderText="User Role" 
                DataField="UserRole" 
                SortExpression="UserRole">
                <ItemStyle Width="140px"></ItemStyle>
                </asp:BoundField>

                <asp:BoundField HeaderText="Mobile" 
                DataField="Mobile" 
                SortExpression="Mobile">
                <ItemStyle Width="140px"></ItemStyle>
                </asp:BoundField>
                </Columns> 
            </asp:GridView>   
        </div> 
     </div>
</asp:Content>
