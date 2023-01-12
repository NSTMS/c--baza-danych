using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace newTest
{
    public partial class guestBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbForGuestOnline.Text = Application.Get("usersOnline").ToString();
            lbForguestTotal.Text = Application.Get("usersTotal").ToString();

        }
        private void AddXMLContent(XmlDocument doc, XmlElement element,string tag, string value)
        {
            XmlElement newElement =  doc.CreateElement(tag);
            XmlText text = doc.CreateTextNode(value);
            element.AppendChild(newElement);
            newElement.AppendChild(text);
        }

        protected void btnAddToBook_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                XmlDocument document = new XmlDocument();
                document.Load(Server.MapPath("book.xml"));
                XmlElement newElement;
                newElement = document.CreateElement("guest");
                document.DocumentElement.PrependChild(newElement);
                AddXMLContent(document, newElement, "name", tbName.Text);
                AddXMLContent(document, newElement, "email", tbEmail.Text);
                AddXMLContent(document, newElement, "inscription", tbInscription.Text);
                document.Save(Server.MapPath("book.xml"));
            }
        }

    }
}