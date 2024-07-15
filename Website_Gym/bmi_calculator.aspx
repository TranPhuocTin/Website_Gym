﻿<%@ Page Title="Advice" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="bmi_calculator.aspx.cs" Inherits="Website_Gym.bim_calculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <!-- Start common page title  -->
    <div data-src="assets/img/common-page-img.png" class="ak-bg">
        <div class="ak-height-200 ak-height-lg-100"></div>
        <div class="container">
            <div class="common-page-title">
                <h2 class="page-title">BMI CALCULATOR</h2>
                <div class="page-subtitle">
                    <a href="">Home</a>
                    <p>/</p>
                    <p>Calculator </p>
                </div>
            </div>
        </div>
        <div class="ak-height-65 ak-height-lg-50"></div>
    </div>
    <!-- End common page title  -->


    <!-- Start Bim Calculation -->
    <div class="bim-calculation" data-aos="fade-up">
        <img src="assets/img/bim-calculator.png" class="bim-calculator-img" alt="...">
        <div class="ak-height-150 ak-height-lg-80"></div>
        <div class="container">
            <div class="col-md-8">
                <form id="form1" runat="server" class="row bim-calculator-from">
                    <div class="col-md-6">
                        <label for="Height" class="label">Your Height*<asp:RegularExpressionValidator ID="height_RegularExpressionValidator" runat="server" ControlToValidate="Height" ErrorMessage="  Nhập số dương" ForeColor="Red" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                        </label>
                        &nbsp;<asp:TextBox ID="Height" runat="server" CssClass="form-control style1 type2" placeholder="Height..."></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label for="Weight" class="label">Your Weight*<asp:RegularExpressionValidator ID="weight_RegularExpressionValidator" runat="server" ControlToValidate="Weight" ErrorMessage="  Nhập số dương" ForeColor="Red" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                        </label>
                        &nbsp;<asp:TextBox ID="Weight" runat="server" CssClass="form-control style1 type2" placeholder="Weight..."></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <label for="Gender" class="label">Select Gender*</label>
                        <asp:DropDownList ID="Gender" runat="server" CssClass="form-select style1 type2">
                            <asp:ListItem Text="Gender..." Value=""></asp:ListItem>
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-6">
                        <label for="Want" class="label">I Want*</label>
                        <asp:DropDownList ID="Want" runat="server" CssClass="form-select style1 type2">
                            <asp:ListItem Text="I Want (Weight Loss)..." Value=""></asp:ListItem>
                            <asp:ListItem Text="Weight Loss" Value="Weight Loss"></asp:ListItem>
                            <asp:ListItem Text="Weight Gain" Value="Weight Gain"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-12">
                        <label for="Age" class="label">Your Age*<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Age" ErrorMessage="  Nhập số dương" ForeColor="Red" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                        </label>
                        &nbsp;<asp:TextBox ID="Age" runat="server" CssClass="form-control style1 type2" placeholder="Age..."></asp:TextBox>
                    </div>
                    <div class="ak-height-35 ak-height-lg-20"></div>
                    <div class="col-md-12">
                        <asp:Button ID="toggleAdvice" runat="server" Text="ASKING FOR ADVICE" CssClass="button-primary style_2 ak-center" OnClick="toggleAdvice_Click" />
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- End Bim Calculation -->

    <!-- Start Advice -->
    <div class="container mt-5" id="advice" style="display: block;">
        <div class="services-details-inner-content">
            <div>
                <asp:Label ID="statusLabel" CssClass="titel aos-init aos-animate" runat="server"/>
            </div>
            <asp:Label ID="advice_des" runat="server" CssClass="desp aos-init aos-animate" data-aos="fade-up">
                           <!-- Advice-->     
            </asp:Label>
            <div class="ak-height-35 ak-height-lg-30"></div>
            <h5 class="title-two aos-init aos-animate" data-aos="fade-up">
                We believe that nutrition plays a crucial role in achieving optimal fitness and overall well-being.
                That's why we offer nutritional guidance and support to help you make informed choices about your
                diet. Whether you're looking to lose weight, gain muscle.
            </h5>

            <div class="ak-height-35 ak-height-lg-30"></div>
            <div class="list-text aos-init aos-animate" data-aos="fade-up">
                <ul class="package-list-content">
                    <li>
                        <svg xmlns="http://www.w3.org/2000/svg" width="27" height="27" viewBox="0 0 27 27" fill="none">
                            <rect x="0.0420837" y="0.742188" width="26" height="26" fill="white" fill-opacity="0.1">
                            </rect>
                            <path d="M7.40184 12.6533C7.12571 12.6541 6.85543 12.7331 6.62228 12.881C6.38914 13.029 6.20265 13.24 6.0844 13.4895C5.96614 13.739 5.92095 14.017 5.95406 14.2911C5.98717 14.5652 6.09722 14.8244 6.27147 15.0386L9.98624 19.5892C10.1187 19.7537 10.2885 19.8842 10.4815 19.9698C10.6745 20.0555 10.8851 20.0939 11.096 20.0818C11.5469 20.0576 11.9539 19.8164 12.2135 19.4198L19.93 6.99236C19.9313 6.9903 19.9326 6.98824 19.9339 6.9862C20.0063 6.87504 19.9829 6.65473 19.8334 6.51633C19.7924 6.47832 19.744 6.44912 19.6912 6.43053C19.6384 6.41193 19.5824 6.40434 19.5266 6.40821C19.4708 6.41208 19.4164 6.42734 19.3667 6.45304C19.317 6.47874 19.2731 6.51434 19.2377 6.55765C19.2349 6.56106 19.232 6.56441 19.2291 6.56771L11.4469 15.3604C11.4173 15.3939 11.3813 15.4212 11.3411 15.4406C11.3009 15.46 11.2572 15.4713 11.2125 15.4737C11.1679 15.4761 11.1233 15.4696 11.0812 15.4547C11.0391 15.4397 11.0004 15.4165 10.9674 15.3864L8.38458 13.0361C8.11634 12.7902 7.76574 12.6536 7.40184 12.6533Z" fill="white"></path>
                        </svg>
                        <span>Gym facilities during hours</span>
                    </li>
                    <li>
                        <svg xmlns="http://www.w3.org/2000/svg" width="27" height="27" viewBox="0 0 27 27" fill="none">
                            <rect x="0.0420837" y="0.742188" width="26" height="26" fill="white" fill-opacity="0.1">
                            </rect>
                            <path d="M7.40184 12.6533C7.12571 12.6541 6.85543 12.7331 6.62228 12.881C6.38914 13.029 6.20265 13.24 6.0844 13.4895C5.96614 13.739 5.92095 14.017 5.95406 14.2911C5.98717 14.5652 6.09722 14.8244 6.27147 15.0386L9.98624 19.5892C10.1187 19.7537 10.2885 19.8842 10.4815 19.9698C10.6745 20.0555 10.8851 20.0939 11.096 20.0818C11.5469 20.0576 11.9539 19.8164 12.2135 19.4198L19.93 6.99236C19.9313 6.9903 19.9326 6.98824 19.9339 6.9862C20.0063 6.87504 19.9829 6.65473 19.8334 6.51633C19.7924 6.47832 19.744 6.44912 19.6912 6.43053C19.6384 6.41193 19.5824 6.40434 19.5266 6.40821C19.4708 6.41208 19.4164 6.42734 19.3667 6.45304C19.317 6.47874 19.2731 6.51434 19.2377 6.55765C19.2349 6.56106 19.232 6.56441 19.2291 6.56771L11.4469 15.3604C11.4173 15.3939 11.3813 15.4212 11.3411 15.4406C11.3009 15.46 11.2572 15.4713 11.2125 15.4737C11.1679 15.4761 11.1233 15.4696 11.0812 15.4547C11.0391 15.4397 11.0004 15.4165 10.9674 15.3864L8.38458 13.0361C8.11634 12.7902 7.76574 12.6536 7.40184 12.6533Z" fill="white"></path>
                        </svg>
                        <span>Use of cardio &amp; strength equipment</span>
                    </li>
                    <li>
                        <svg xmlns="http://www.w3.org/2000/svg" width="27" height="27" viewBox="0 0 27 27" fill="none">
                            <rect x="0.0420837" y="0.742188" width="26" height="26" fill="white" fill-opacity="0.1">
                            </rect>
                            <path d="M7.40184 12.6533C7.12571 12.6541 6.85543 12.7331 6.62228 12.881C6.38914 13.029 6.20265 13.24 6.0844 13.4895C5.96614 13.739 5.92095 14.017 5.95406 14.2911C5.98717 14.5652 6.09722 14.8244 6.27147 15.0386L9.98624 19.5892C10.1187 19.7537 10.2885 19.8842 10.4815 19.9698C10.6745 20.0555 10.8851 20.0939 11.096 20.0818C11.5469 20.0576 11.9539 19.8164 12.2135 19.4198L19.93 6.99236C19.9313 6.9903 19.9326 6.98824 19.9339 6.9862C20.0063 6.87504 19.9829 6.65473 19.8334 6.51633C19.7924 6.47832 19.744 6.44912 19.6912 6.43053C19.6384 6.41193 19.5824 6.40434 19.5266 6.40821C19.4708 6.41208 19.4164 6.42734 19.3667 6.45304C19.317 6.47874 19.2731 6.51434 19.2377 6.55765C19.2349 6.56106 19.232 6.56441 19.2291 6.56771L11.4469 15.3604C11.4173 15.3939 11.3813 15.4212 11.3411 15.4406C11.3009 15.46 11.2572 15.4713 11.2125 15.4737C11.1679 15.4761 11.1233 15.4696 11.0812 15.4547C11.0391 15.4397 11.0004 15.4165 10.9674 15.3864L8.38458 13.0361C8.11634 12.7902 7.76574 12.6536 7.40184 12.6533Z" fill="white"></path>
                        </svg>
                        <span>Access to locker rooms</span>
                    </li>
                    <li>
                        <svg xmlns="http://www.w3.org/2000/svg" width="27" height="27" viewBox="0 0 27 27" fill="none">
                            <rect x="0.0420837" y="0.742188" width="26" height="26" fill="white" fill-opacity="0.1">
                            </rect>
                            <path d="M7.40184 12.6533C7.12571 12.6541 6.85543 12.7331 6.62228 12.881C6.38914 13.029 6.20265 13.24 6.0844 13.4895C5.96614 13.739 5.92095 14.017 5.95406 14.2911C5.98717 14.5652 6.09722 14.8244 6.27147 15.0386L9.98624 19.5892C10.1187 19.7537 10.2885 19.8842 10.4815 19.9698C10.6745 20.0555 10.8851 20.0939 11.096 20.0818C11.5469 20.0576 11.9539 19.8164 12.2135 19.4198L19.93 6.99236C19.9313 6.9903 19.9326 6.98824 19.9339 6.9862C20.0063 6.87504 19.9829 6.65473 19.8334 6.51633C19.7924 6.47832 19.744 6.44912 19.6912 6.43053C19.6384 6.41193 19.5824 6.40434 19.5266 6.40821C19.4708 6.41208 19.4164 6.42734 19.3667 6.45304C19.317 6.47874 19.2731 6.51434 19.2377 6.55765C19.2349 6.56106 19.232 6.56441 19.2291 6.56771L11.4469 15.3604C11.4173 15.3939 11.3813 15.4212 11.3411 15.4406C11.3009 15.46 11.2572 15.4713 11.2125 15.4737C11.1679 15.4761 11.1233 15.4696 11.0812 15.4547C11.0391 15.4397 11.0004 15.4165 10.9674 15.3864L8.38458 13.0361C8.11634 12.7902 7.76574 12.6536 7.40184 12.6533Z" fill="white"></path>
                        </svg>
                        <span>Discounted rates on group fitness</span>
                    </li>
                    <li>
                        <svg xmlns="http://www.w3.org/2000/svg" width="27" height="27" viewBox="0 0 27 27" fill="none">
                            <rect x="0.0420837" y="0.742188" width="26" height="26" fill="white" fill-opacity="0.1">
                            </rect>
                            <path d="M7.40184 12.6533C7.12571 12.6541 6.85543 12.7331 6.62228 12.881C6.38914 13.029 6.20265 13.24 6.0844 13.4895C5.96614 13.739 5.92095 14.017 5.95406 14.2911C5.98717 14.5652 6.09722 14.8244 6.27147 15.0386L9.98624 19.5892C10.1187 19.7537 10.2885 19.8842 10.4815 19.9698C10.6745 20.0555 10.8851 20.0939 11.096 20.0818C11.5469 20.0576 11.9539 19.8164 12.2135 19.4198L19.93 6.99236C19.9313 6.9903 19.9326 6.98824 19.9339 6.9862C20.0063 6.87504 19.9829 6.65473 19.8334 6.51633C19.7924 6.47832 19.744 6.44912 19.6912 6.43053C19.6384 6.41193 19.5824 6.40434 19.5266 6.40821C19.4708 6.41208 19.4164 6.42734 19.3667 6.45304C19.317 6.47874 19.2731 6.51434 19.2377 6.55765C19.2349 6.56106 19.232 6.56441 19.2291 6.56771L11.4469 15.3604C11.4173 15.3939 11.3813 15.4212 11.3411 15.4406C11.3009 15.46 11.2572 15.4713 11.2125 15.4737C11.1679 15.4761 11.1233 15.4696 11.0812 15.4547C11.0391 15.4397 11.0004 15.4165 10.9674 15.3864L8.38458 13.0361C8.11634 12.7902 7.76574 12.6536 7.40184 12.6533Z" fill="white"></path>
                        </svg>
                        <span>Goal setting session with a trainer</span>
                    </li>

                </ul>
                <ul class="package-list-content">
                    <li>
                        <svg xmlns="http://www.w3.org/2000/svg" width="27" height="27" viewBox="0 0 27 27" fill="none">
                            <rect x="0.0420837" y="0.742188" width="26" height="26" fill="white" fill-opacity="0.1">
                            </rect>
                            <path d="M7.40184 12.6533C7.12571 12.6541 6.85543 12.7331 6.62228 12.881C6.38914 13.029 6.20265 13.24 6.0844 13.4895C5.96614 13.739 5.92095 14.017 5.95406 14.2911C5.98717 14.5652 6.09722 14.8244 6.27147 15.0386L9.98624 19.5892C10.1187 19.7537 10.2885 19.8842 10.4815 19.9698C10.6745 20.0555 10.8851 20.0939 11.096 20.0818C11.5469 20.0576 11.9539 19.8164 12.2135 19.4198L19.93 6.99236C19.9313 6.9903 19.9326 6.98824 19.9339 6.9862C20.0063 6.87504 19.9829 6.65473 19.8334 6.51633C19.7924 6.47832 19.744 6.44912 19.6912 6.43053C19.6384 6.41193 19.5824 6.40434 19.5266 6.40821C19.4708 6.41208 19.4164 6.42734 19.3667 6.45304C19.317 6.47874 19.2731 6.51434 19.2377 6.55765C19.2349 6.56106 19.232 6.56441 19.2291 6.56771L11.4469 15.3604C11.4173 15.3939 11.3813 15.4212 11.3411 15.4406C11.3009 15.46 11.2572 15.4713 11.2125 15.4737C11.1679 15.4761 11.1233 15.4696 11.0812 15.4547C11.0391 15.4397 11.0004 15.4165 10.9674 15.3864L8.38458 13.0361C8.11634 12.7902 7.76574 12.6536 7.40184 12.6533Z" fill="white"></path>
                        </svg>
                        <span>Gym facilities during hours</span>
                    </li>
                    <li>
                        <svg xmlns="http://www.w3.org/2000/svg" width="27" height="27" viewBox="0 0 27 27" fill="none">
                            <rect x="0.0420837" y="0.742188" width="26" height="26" fill="white" fill-opacity="0.1">
                            </rect>
                            <path d="M7.40184 12.6533C7.12571 12.6541 6.85543 12.7331 6.62228 12.881C6.38914 13.029 6.20265 13.24 6.0844 13.4895C5.96614 13.739 5.92095 14.017 5.95406 14.2911C5.98717 14.5652 6.09722 14.8244 6.27147 15.0386L9.98624 19.5892C10.1187 19.7537 10.2885 19.8842 10.4815 19.9698C10.6745 20.0555 10.8851 20.0939 11.096 20.0818C11.5469 20.0576 11.9539 19.8164 12.2135 19.4198L19.93 6.99236C19.9313 6.9903 19.9326 6.98824 19.9339 6.9862C20.0063 6.87504 19.9829 6.65473 19.8334 6.51633C19.7924 6.47832 19.744 6.44912 19.6912 6.43053C19.6384 6.41193 19.5824 6.40434 19.5266 6.40821C19.4708 6.41208 19.4164 6.42734 19.3667 6.45304C19.317 6.47874 19.2731 6.51434 19.2377 6.55765C19.2349 6.56106 19.232 6.56441 19.2291 6.56771L11.4469 15.3604C11.4173 15.3939 11.3813 15.4212 11.3411 15.4406C11.3009 15.46 11.2572 15.4713 11.2125 15.4737C11.1679 15.4761 11.1233 15.4696 11.0812 15.4547C11.0391 15.4397 11.0004 15.4165 10.9674 15.3864L8.38458 13.0361C8.11634 12.7902 7.76574 12.6536 7.40184 12.6533Z" fill="white"></path>
                        </svg>
                        <span>Use of cardio &amp; strength equipment</span>
                    </li>
                    <li>
                        <svg xmlns="http://www.w3.org/2000/svg" width="27" height="27" viewBox="0 0 27 27" fill="none">
                            <rect x="0.0420837" y="0.742188" width="26" height="26" fill="white" fill-opacity="0.1">
                            </rect>
                            <path d="M7.40184 12.6533C7.12571 12.6541 6.85543 12.7331 6.62228 12.881C6.38914 13.029 6.20265 13.24 6.0844 13.4895C5.96614 13.739 5.92095 14.017 5.95406 14.2911C5.98717 14.5652 6.09722 14.8244 6.27147 15.0386L9.98624 19.5892C10.1187 19.7537 10.2885 19.8842 10.4815 19.9698C10.6745 20.0555 10.8851 20.0939 11.096 20.0818C11.5469 20.0576 11.9539 19.8164 12.2135 19.4198L19.93 6.99236C19.9313 6.9903 19.9326 6.98824 19.9339 6.9862C20.0063 6.87504 19.9829 6.65473 19.8334 6.51633C19.7924 6.47832 19.744 6.44912 19.6912 6.43053C19.6384 6.41193 19.5824 6.40434 19.5266 6.40821C19.4708 6.41208 19.4164 6.42734 19.3667 6.45304C19.317 6.47874 19.2731 6.51434 19.2377 6.55765C19.2349 6.56106 19.232 6.56441 19.2291 6.56771L11.4469 15.3604C11.4173 15.3939 11.3813 15.4212 11.3411 15.4406C11.3009 15.46 11.2572 15.4713 11.2125 15.4737C11.1679 15.4761 11.1233 15.4696 11.0812 15.4547C11.0391 15.4397 11.0004 15.4165 10.9674 15.3864L8.38458 13.0361C8.11634 12.7902 7.76574 12.6536 7.40184 12.6533Z" fill="white"></path>
                        </svg>
                        <span>Access to locker rooms</span>
                    </li>
                    <li>
                        <svg xmlns="http://www.w3.org/2000/svg" width="27" height="27" viewBox="0 0 27 27" fill="none">
                            <rect x="0.0420837" y="0.742188" width="26" height="26" fill="white" fill-opacity="0.1">
                            </rect>
                            <path d="M7.40184 12.6533C7.12571 12.6541 6.85543 12.7331 6.62228 12.881C6.38914 13.029 6.20265 13.24 6.0844 13.4895C5.96614 13.739 5.92095 14.017 5.95406 14.2911C5.98717 14.5652 6.09722 14.8244 6.27147 15.0386L9.98624 19.5892C10.1187 19.7537 10.2885 19.8842 10.4815 19.9698C10.6745 20.0555 10.8851 20.0939 11.096 20.0818C11.5469 20.0576 11.9539 19.8164 12.2135 19.4198L19.93 6.99236C19.9313 6.9903 19.9326 6.98824 19.9339 6.9862C20.0063 6.87504 19.9829 6.65473 19.8334 6.51633C19.7924 6.47832 19.744 6.44912 19.6912 6.43053C19.6384 6.41193 19.5824 6.40434 19.5266 6.40821C19.4708 6.41208 19.4164 6.42734 19.3667 6.45304C19.317 6.47874 19.2731 6.51434 19.2377 6.55765C19.2349 6.56106 19.232 6.56441 19.2291 6.56771L11.4469 15.3604C11.4173 15.3939 11.3813 15.4212 11.3411 15.4406C11.3009 15.46 11.2572 15.4713 11.2125 15.4737C11.1679 15.4761 11.1233 15.4696 11.0812 15.4547C11.0391 15.4397 11.0004 15.4165 10.9674 15.3864L8.38458 13.0361C8.11634 12.7902 7.76574 12.6536 7.40184 12.6533Z" fill="white"></path>
                        </svg>
                        <span>Discounted rates on group fitness</span>
                    </li>
                    <li>
                        <svg xmlns="http://www.w3.org/2000/svg" width="27" height="27" viewBox="0 0 27 27" fill="none">
                            <rect x="0.0420837" y="0.742188" width="26" height="26" fill="white" fill-opacity="0.1">
                            </rect>
                            <path d="M7.40184 12.6533C7.12571 12.6541 6.85543 12.7331 6.62228 12.881C6.38914 13.029 6.20265 13.24 6.0844 13.4895C5.96614 13.739 5.92095 14.017 5.95406 14.2911C5.98717 14.5652 6.09722 14.8244 6.27147 15.0386L9.98624 19.5892C10.1187 19.7537 10.2885 19.8842 10.4815 19.9698C10.6745 20.0555 10.8851 20.0939 11.096 20.0818C11.5469 20.0576 11.9539 19.8164 12.2135 19.4198L19.93 6.99236C19.9313 6.9903 19.9326 6.98824 19.9339 6.9862C20.0063 6.87504 19.9829 6.65473 19.8334 6.51633C19.7924 6.47832 19.744 6.44912 19.6912 6.43053C19.6384 6.41193 19.5824 6.40434 19.5266 6.40821C19.4708 6.41208 19.4164 6.42734 19.3667 6.45304C19.317 6.47874 19.2731 6.51434 19.2377 6.55765C19.2349 6.56106 19.232 6.56441 19.2291 6.56771L11.4469 15.3604C11.4173 15.3939 11.3813 15.4212 11.3411 15.4406C11.3009 15.46 11.2572 15.4713 11.2125 15.4737C11.1679 15.4761 11.1233 15.4696 11.0812 15.4547C11.0391 15.4397 11.0004 15.4165 10.9674 15.3864L8.38458 13.0361C8.11634 12.7902 7.76574 12.6536 7.40184 12.6533Z" fill="white"></path>
                        </svg>
                        <span>Goal setting session with a trainer</span>
                    </li>

                </ul>
            </div>
            <div class="ak-height-50 ak-height-lg-30"></div>
            <p class="desp aos-init" data-aos="fade-up">Thank you for taking the time to learn more about Gym and how
                we can help you
                achieve your
                fitness goals. With our state-of-the-art facilities, expert personal training services, diverse
                group fitness classes, nutritional guidance, and supportive community, there's no limit to what you
                can accomplish. So why wait? Join us today and take the first step towards a healthier, happier you!
            </p>
            <button type="submit" class="button-primary mt-4" > REGISTER NOW</button>
        </div>
    </div>
    <!--End Advice Text  -->

    <!--End Sliding Text  -->
    <div class="ak-height-135 ak-height-lg-80"></div>
    <section class="sliding-text type2">
        <div class="moving-section-wrap type2 ak-normal text-uppercase">
            <div class="moving-section-in">
                <div class="moving-section">
                    <h4 class="moving-text type2">
                        <span> Stronger every rep </span>
                        <span>💪</span>
                        <span> prouder every ste</span>
                        <span>💪</span>
                        <span>Push your limits</span>
                        <span>💪</span>
                        <span>Exceed your expectations</span>
                        <span>💪</span>
                        <span>Stronger every rep</span>
                        <span>💪</span>
                        <span> prouder every step</span>
                        <span>💪</span>
                        <span>Exceed your expectations</span>
                        <span>💪</span>
                        <span>Stronger every rep</span>
                        <span>💪</span>
                        <span> prouder every step</span>
                        <span>💪</span>

                    </h4>
                </div>
                <div class="moving-section">
                    <h4 class="moving-text type2">
                        <span> Stronger every rep </span>
                        <span>💪</span>
                        <span> prouder every ste</span>
                        <span>💪</span>
                        <span>Push your limits</span>
                        <span>💪</span>
                        <span>Exceed your expectations</span>
                        <span>💪</span>
                        <span>Stronger every rep</span>
                        <span>💪</span>
                        <span> prouder every step</span>
                        <span>💪</span>
                        <span>Exceed your expectations</span>
                        <span>💪</span>
                        <span>Stronger every rep</span>
                        <span>💪</span>
                        <span> prouder every step</span>
                    </h4>
                </div>
            </div>
        </div>
    </section>
    <!--End Sliding Text  -->


        <!-- Script -->
    <script>
         document.getElementById('toggleAdvice').addEventListener('click', function() {
        var adviceSection = document.getElementById('advice');
        if (adviceSection.style.display === 'none') {
            adviceSection.style.display = 'block'; 
        } else {
            adviceSection.style.display = 'none'; 
        }
    });
    </script>
</asp:Content>
