using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eventbrite
{
    public partial class add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddEvent_Click(object sender, EventArgs e)
        {
            // Get event details from the input fields
            string eventName = txtEventName.Text;
            string organizer = txtOrganizer.Text;
            int participants = int.Parse(txtParticipants.Text);
            string eventType = txtEventType.Text;
            string eventKey = txtEventKey.Text;

            // Create a new event object
            var eventadd = new @event
            {
                event_name = eventName,
                username = organizer,
                participants = participants,
                event_type = eventType,
                eventkey = eventKey
            };

            // Add the new event to the database
            using (EventDbContext db = new EventDbContext())
            {
                db.events.Add(eventadd);
                db.SaveChanges();
            }

            // Redirect back to the main page (or any other desired page)
            Response.Redirect("main.aspx");
        }
    }
}
