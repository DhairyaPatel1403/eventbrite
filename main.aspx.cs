using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eventbrite
{
    public partial class main : System.Web.UI.Page
    {

        protected string Error { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIncrement_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int eventID = int.Parse(btn.CommandArgument);

            // Find the TextBox control for event_key in the same GridView row
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            TextBox txtEventKey = (TextBox)row.FindControl("txtEventKey");
            string enteredKey = txtEventKey.Text;

            // Query the database to get the expected event key based on eventID
            string expectedKey = GetExpectedEventKey(eventID);

            if (enteredKey == expectedKey)
            {
                // Update the count of the event
                using (EventDbContext db = new EventDbContext())
                {
                    var eventToUpdate = db.events.Find(eventID);
                    if (eventToUpdate != null)
                    {
                        eventToUpdate.participants++; // Increment the participant count
                        db.SaveChanges();
                    }
                }


                // Redirect to the confirm.aspx page with the event_id
                Response.Redirect("confirm.aspx?event_id=" + eventID);
            }
            else
            {
                // Handle case when event_key does not match
                // Display an error message or take appropriate action.
                string errorMessage = "Incorrect event key. Please enter the correct key.";
                // You can display the error message using a label or any other method you prefer.
                // Here, we'll use a label for demonstration.
                Error = errorMessage;
            }
        }

        private string GetExpectedEventKey(int eventID)
        {
            // Query the database to retrieve the expected event key based on eventID
            using (EventDbContext db = new EventDbContext())
            {
                var eventKey = db.events.FirstOrDefault(ek => ek.event_id == eventID);
                return eventKey != null ? eventKey.eventkey : string.Empty;
            }
        }

        protected void btnAddEvent_Click(object sender, EventArgs e)
        {
            Response.Redirect("add.aspx");
        }





    }
}
