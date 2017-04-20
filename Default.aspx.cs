using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page
{
    //using System.Runtime.Serialization;
    //using System.Text;
    //using System.Net;
    //using System.Runtime.Serialization.Json;
    //using System.IO;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage mailMessage = new MailMessage();
            mailMessage.To.Add(ConfigurationManager.AppSettings["RegEmailToAddress"]);
            mailMessage.To.Add("Shawn.Wyckoff@polynt.com");
            mailMessage.From = new MailAddress(ConfigurationManager.AppSettings["RegEmailFromAddress"]);
            mailMessage.Subject = ConfigurationManager.AppSettings["RegEmailSubject"];
            object[] text = new object[] { this.txtFirstName.Text, this.txtLastName.Text, this.txtEmail.Text, this.txtCompany.Text, this.txtWorkPhone.Text, this.rblType.SelectedItem.Text };
            mailMessage.Body = string.Format("<table><tr><td>First Name</td><td>{0}</td><tr><td>Last Name</td><td>{1}</td></tr><tr><td>Company</td><td>{2}</td></tr><tr><td>Email</td><td>{3}</td></tr><tr><td>Work Phone</td><td>{4}</td></tr><tr><td>Type</td><td>{5}</td></tr></table>", text);
            mailMessage.IsBodyHtml = true;
           // (new SmtpClient(ConfigurationManager.AppSettings["RegEmailSMTPAddress"])).Send(mailMessage);
            this.litMessage.Text = "<div class='alert alert-success'><strong>Thank you!</strong> Your application has been submitted.</div>";
            this.litMessage.Visible = true;
        }
        catch (Exception exception1)
        {
            Exception exception = exception1;
            this.litMessage.Text = string.Format("<div class='alert alert-danger'><strong>Oooopppssss!</strong> Something has gone wrong. {0}</div>", exception.Message);
            this.litMessage.Visible = true;
        }
    }
    }
