﻿<%@ Page Title="" Language="C#" MasterPageFile="~/master1.Master" AutoEventWireup="true" CodeBehind="Meetings.aspx.cs" Inherits="web_project.Meetings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="X_UA_Compatible" runat="server">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="page_title" runat="server">
      <title>All Coming Meetings</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="description" runat="server">
     <meta name="description" content="">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="viewport" runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="stylesheet" runat="server">
     <link rel="stylesheet" href="css/meetings.css">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="nav_item" runat="server">
     <li class="nav-item"><a class="nav-link" href="Meetings.aspx">MEETINGS</a></li>
     <li class="nav-item"><a class="nav-link" href="#">CONTACT</a></li>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="page_content" runat="server">
     <section class="heading-page " id="top">
        <div>
            <div>
                <div class="info">
                    <h6 style="color: #fff;">HERE ARE OUR UPCOMING MEETINGS</h6>
                    <h2>UPCOMING MEETINGS</h2>
                </div>
            </div>
        </div>
    </section>


    <section class="meeting-filtration">


        <ul>
            <li data-filter="*" class="list active">All Meetings</li>
            <li data-filter=".soon" class="list"> Soon </li>
            <li data-filter=".imp" class="list">Important</li>
            <li data-filter=".att" class="list">Attractive</li>
        </ul>


        <div class="meeting-filter">

            <div class="meetingitem ">

                <div class="meeting">
                    <div>
                        <a
                            href="meeting_details.aspx"><img
                                src="img/meetings-img/meeting-01.jpg" alt="Online Teaching" ></a>
                    </div>

                    <div class="info-grid-div">

                        <div class="date">
                            <h6>Nov <br> <span class="number">26</span></h6>
                        </div>




                        <div>

                            <a
                                href="meeting_details.aspx">
                                <p class="parag">Online Teaching Techniques</p>
                            </a>
                            <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>

                        </div>



                    </div>
                </div>
            </div>

            <div class="meetingitem ">
                <div class="meeting">
                    <div>
                        <a
                            href="meeting_details.aspx"><img
                                src="img/meetings-img/meeting-02.jpg" alt="Online Teaching" ></a>
                    </div>


                    <div class="info-grid-div">

                        <div class="date">
                            <h6>Nov <br> <span class="number">12</span></h6>
                        </div>




                        <div>

                            <a
                                href="meeting_details.aspx">
                                <p class="parag">Online Teaching Techniques</p>
                            </a>
                            <p>Ensure attendees never miss a word with background noise supression and built-in audio
                                for VoIP
                                and toll..</p>

                        </div>






                    </div>

                </div>
            </div>
            <div class="meetingitem ">
                <div class="meeting">
                    <div>
                        <a
                            href="meeting_details.aspx"><img
                                src="img/meetings-img/meeting-04.jpg" alt="Online Teaching" ></a>
                    </div>

                    <div class="info-grid-div">

                        <div class="date">
                            <h6>Nov <br> <span class="number">20</span></h6>
                        </div>




                        <div>

                            <a
                                href="meeting_details.aspx">
                                <p class="parag">Online Teaching Techniques</p>
                            </a>
                            <p>Ensure attendees never miss a word with background noise supression and built-in audio
                                for VoIP
                                and toll..</p>

                        </div>






                    </div>

                </div>
            </div>
            <div class="meetingitem ">
                <div class="meeting">
                    <div>
                        <a
                            href="meeting_details.aspx"><img
                                src="img/meetings-img/meeting-05.jpg" alt="Online Teaching" ></a>
                    </div>

                    <div class="info-grid-div">

                        <div class="date">
                            <h6>Dec<br> <span class="number">4</span></h6>
                        </div>




                        <div>

                            <a
                                href="meeting_details.aspx">
                                <p class="parag">Online Teaching Techniques</p>
                            </a>
                            <p>Ensure attendees never miss a word with background noise supression and built-in audio
                                for VoIP
                                and toll..</p>

                        </div>

                    </div>

                </div>
            </div>
            <div class="meetingitem ">
                <div class="meeting">
                    <div>
                        <a
                            href="meeting_details.aspx"><img
                                src="img/meetings-img/meeting-06.jpg" alt="Online Teaching" ></a>
                    </div>

                    <div class="info-grid-div">

                        <div class="date">
                            <h6>May<br> <span class="number">18</span></h6>
                        </div>




                        <div>

                            <a
                                href="meeting_details.aspx">
                                <p class="parag">Online Teaching Techniques</p>
                            </a>
                            <p>Ensure attendees never miss a word with background noise supression and built-in audio
                                for VoIP
                                and toll..</p>

                        </div>

                    </div>

                </div>

            </div>
            <div class="meetingitem ">
                <div class="meeting">
                    <div>
                        <a
                            href="meeting_details.aspx"><img
                                src="img/meetings-img/meeting-07.jpg" alt="Online Teaching" ></a>
                    </div>

                    <div class="info-grid-div">

                        <div class="date">
                            <h6>Aug<br> <span class="number">24</span></h6>
                        </div>




                        <div>

                            <a
                                href="meeting_details.aspx">
                                <p class="parag">Online Teaching Techniques</p>
                            </a>
                            <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>

                        </div>

                    </div>

                </div>
            </div>
            <div class="meetingitem ">
                <div class="meeting">
                    <div>
                        <a
                            href="meeting_details.aspx"><img
                                src="img/meetings-img/meeting-08.jpg" alt="Online Teaching" ></a>
                    </div>

                    <div class="info-grid-div">

                        <div class="date">
                            <h6>Aug<br> <span class="number">4</span></h6>
                        </div>




                        <div>

                            <a
                                href="meeting_details.aspx">
                                <p class="parag">Online Teaching Techniques</p>
                            </a>
                            <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>

                        </div>

                    </div>

                </div>



            </div>


            <div class="meetingitem ">
                <div class="meeting">
                    <div>
                        <a
                            href="meeting_details.aspx"><img
                                src="img/meetings-img/meeting-04.jpg" alt="Online Teaching" ></a>
                    </div>

                    <div class="info-grid-div">

                        <div class="date">
                            <h6>Aug<br> <span class="number">4</span></h6>
                        </div>




                        <div>

                            <a
                                href="meeting_details.aspx">
                                <p class="parag">Online Teaching Techniques</p>
                            </a>
                            <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>

                        </div>

                    </div>

                </div>



            </div>


            <div class="meetingitem ">
                <div class="meeting">
                    <div>
                        <a
                            href="meeting_details.aspx"><img
                                src="img/meetings-img/meeting-04.jpg" alt="Online Teaching" ></a>
                    </div>

                    <div class="info-grid-div">

                        <div class="date">
                            <h6>Aug<br> <span class="number">4</span></h6>
                        </div>




                        <div>

                            <a
                                href="meeting_details.aspx">
                                <p class="parag">Online Teaching Techniques</p>
                            </a>
                            <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>

                        </div>

                    </div>

                </div>



            </div>


            <div class="meetingitem ">
                <div class="meeting">
                    <div>
                        <a
                            href="meeting_details.aspx"><img
                                src="img/meetings-img/meeting-09.jpg" alt="Online Teaching" ></a>
                    </div>

                    <div class="info-grid-div">

                        <div class="date">
                            <h6>Oct<br> <span class="number">4</span></h6>
                        </div>




                        <div>

                            <a
                                href="meeting_details.aspx">
                                <p class="parag">Online Teaching Techniques</p>
                            </a>
                            <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>

                        </div>

                    </div>

                </div>



            </div>

            <div class="meetingitem ">
                <div class="meeting">
                    <div>
                        <a
                            href="meeting_details.aspx"><img
                                src="img/meetings-img/meeting-11.jpg" alt="Online Teaching" ></a>
                    </div>

                    <div class="info-grid-div">

                        <div class="date">
                            <h6>Aug<br> <span class="number">17</span></h6>
                        </div>




                        <div>

                            <a
                                href="meeting_details.aspx">
                                <p class="parag">Online Teaching Techniques</p>
                            </a>
                            <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>

                        </div>

                    </div>

                </div>



            </div>
            <div class="meetingitem .soon">
                <div class="meeting">
                    <div>
                        <a
                            href="meeting_details.aspx"><img
                                src="img/meetings-img/meeting-12.jpg" alt="Online Teaching" ></a>
                    </div>

                    <div class="info-grid-div">

                        <div class="date">
                            <h6>Aug<br> <span class="number">31</span></h6>
                        </div>




                        <div>

                            <a
                                href="meeting_details.aspx">
                                <p class="parag">Online Teaching Techniques</p>
                            </a>
                            <p>Morbi in libero blandit lectus<br>cursus ullamcorper.</p>

                        </div>

                    </div>

                </div>



            </div>
        </div>

    </section>



    <ul>
        <div class="logo-m">
            <div>
                <li><a href="https://www.facebook.com/BasantMohamed450">
                        <img src="img/meetings-img/facebook-icon.png" alt="facebook-icon"> </a>
                </li>
            </div>

            <div>
                <li><a href="https://www.instagram.com/basant_art_/">
                        <img src="img/meetings-img/github-icon.svg" alt="github-icon"></a>
                </li>
            </div>

            <div>
                <li><a href="https://www.instagram.com/basant_art_/">
                        <img src="img/meetings-img/insta-icon.png" alt="insta-icon"></a>
                </li>
            </div>
        </div>
    </ul>
</asp:Content>
