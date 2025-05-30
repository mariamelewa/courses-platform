<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="web_project.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="X_UA_Compatible" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" runat="server">
      <title>Account</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="description" runat="server">
     <meta name="description" content="educational websiteFind the right instructor for you. Choose from many topics, skill levels, and languages. Sign Up Online. Get The App. View Blog. Highlights: App Available, Lifetime Access. Lifetime Access. High-Quality Courses. Online Courses">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="viewport" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="stylesheet" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="nav_item" runat="server">
     <li class="nav-item"><a class="nav-link" href="Courses.aspx">COURSES</a></li>
     <li class="nav-item"><a class="nav-link" href="#">CONTACT</a></li>
      <asp:Button ID="signout_btn" runat="server" Text="SIGN OUT" class="btn btn-outline-secondary btn-signout " OnClick="signout_btn_Click" />
</asp:Content>
    
<asp:Content ID="Content7" ContentPlaceHolderID="page_content" runat="server">
     <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.aspx">HOME</a></li>
          <li class="breadcrumb-item"><a href="Courses.aspx">COURSES</a></li>
          <li class="breadcrumb-item active" aria-current="page">Account</li>
                      
        </ol>
      </nav>

      <section class="user-information">
        <div class="account-head">
            <img class="account-image" src="img/account.jpg" >
            <h2>Account</h2>
        </div>
        <div class="user-data">
            <asp:Label ID="username_txt" runat="server" Text=""></asp:Label> <hr>
            <asp:Label ID="gmail" runat="server" Text=""></asp:Label>
       
        </div>

      </section>

      <section class="selected-courses">
        <h3>My Courses</h3>
        <div class="my-courses">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                     <div class="course-card">
                <div class="course-image">
                 <img  src="img/course-img.jpg">
                </div>
                <div class="course-name"> 
            
                    <label class="name" style="color:darkblue;"> <%#Eval("CourseName") %> </label>
                    <label class="teacher" style="color:darkblue;">By: <%#Eval("ProfessorName") %> </label>
                </div>

            </div>
                </ItemTemplate>                                                            
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eduConnectionString %>" SelectCommand="SELECT c.Name As CourseName,l.lecturer_name AS ProfessorName
                   FROM courses.enrollments e
                   INNER JOIN courses.courses c ON e.course_id = c.course_id
                   INNER JOIN courses.customers cs ON e.customer_id = cs.id
                   INNER JOIN courses.lecturers l ON c.lecturer_id = l.lecturer_id where cs.name=@username_txt"  >
                    <selectparameters>
                <asp:controlparameter name="username_txt" controlid="username_txt"/>
            </selectparameters>
            </asp:SqlDataSource>
        
   
        </div>
      </section>


</asp:Content>
