<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="receipt-pmp.ascx.cs" Inherits="P3WebApp.receipt_pmp" %>
<img src="images/pinnacle_logo_white.gif"/><br/>
<span class="style4"><b>Helping You Achieve Your Pinnacle!</b></span>
<h1 align="center">Receipt</h1>
<p>&nbsp;</p>
<table width="100%">
    <tr>
        <td valign="top" align="left" width="130px">
            <h2>Receipt for:&nbsp;</h2>
        </td>
        <td valign="top" align="left">
            <h2><%=StudentName %></h2>
        </td>
        <td valign="top" align="right" rowspan="2">
            Invoice Date: <%=InvoiceDate %><br/>
            Invoice #: <%=InvoiceNum %>
        </td>
    </tr>
    <tr>
        <td valign="top">
            <h2>Address:&nbsp;</h2>
        </td>
        <td valign="top">
            <h2>
            <%=StudentAddress %><br/>
            <%=StudentCityStateZip %>
            </h2>
        </td>
    </tr>
</table>
<table width="100%">
    <tr>
        <td>Course</td>
        <td>Qty</td>
        <td>Description</td>
        <td>Unit Price</td>
        <td>Line Total</td>
    </tr>
    <tr>
        <td><%=Course %></td>
        <td>1</td>
        <td><%=Description %></td>
        <td><%=UnitPrice %></td>
        <td><%=UnitPrice %></td>
    </tr>
    <tr>
        <td colspan="3" rowspan="4" valign="top">
        PAID <%=Paid %>
        </td>
        <td align="right">Subtotal</td>
        <td><%=UnitPrice %></td>
    </tr>
    <tr>
        <td align="right">Discount</td>
        <td><%=Discount %></td>
    </tr>
    <tr>
        <td align="right">Sales Tax</td>
        <td></td>
    </tr>
    <tr>
        <td align="right">Total</td>
        <td><%=Total %></td>
    </tr>
</table>
<p>
<strong>
Thank you for enrolling in the Pinnacle 3 Learning PMP Certification Examination Prep Class. We look forward to helping you achieve your goal!
</strong>
</p>
<p>
<strong>Course Details:</strong><br/>
The course is based on the nine Knowledge Areas of the Guide to the Project Management Body of Knowledge® and the five process groups - Initiating, Planning, Executing, Monitoring & Controlling, and Closing as well as Professional Responsibility and Exam strategies. This course will provide attendees with practical information and skill enhancing tips and techniques that can be applied immediately to the project work environment. At the completion of the course you will have a greater understanding of the PMBOK® Guide and how to effectively use the information within it for the exam as well as practical application to your projects. We guarantee you will possess the necessary information to successfully pass the PMP Certification exam. Our study strategy will increase your comprehension and retention of the key elements of each knowledge area ensuring you are prepared to pass the detailed exam and earn your PMP Credential.
</p>
<ul>
<li>Approved PMP Exam Prep Course - for 36 PDU's/contact hours</li>
<li>4-day class; students are encouraged to take the PMP exam on the fifth day</li>
<li>PMP Certified Instructors with years of training experience</li>
<li>Critical Exam Taking Tips are Revealed</li>
<li>Pre-course "Blueprint For Success"</li>
<li>Various in class accelerated learning techniques</li>
</ul>
<p>&nbsp;</p>
<div align="center">
<strong>Guarantee Terms & Conditions3</strong><br/>
Pass the PMP® --We Guarantee It!<br/>
Our unique learning and memory techniques ensure your success. If by some chance you don't, we will do one or all of the following:
<ul>
<li>Pay your reexamination fee</li>
<li>Pair you with an individual mentor to find and fill in any gaps</li>
<li>Allow you to attend another class at no cost.</li>
</ul>
</div>
<p>&nbsp;</p>
<div align="center">
Pinnacle 3 Learning - 10319 Westlake Dr. Suite 245 Bethesda, MD 20817<br/>
888 808 4PMP (4767) · Fax: (888) 551-3331 · <a href="mailto:custserv@pinnacle3.com">custserv@pinnacle3.com"</a>
</div>