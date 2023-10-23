using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eventbrite
{
    public partial class confirm : System.Web.UI.Page
    {
        protected string EventId { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the query parameter "event_id" is present in the URL
                if (Request.QueryString["event_id"] != null)
                {
                    int eventID = int.Parse(Request.QueryString["event_id"]);

                    // Use eventID to fetch the event_name from the database
                    string eventName = GetEventName(eventID);

                    // Display the event_name
                    EventId = "Registered for event : " + eventName;

                }
            }
        }

        private string GetEventName(int eventID)
        {
            using (EventDbContext db = new EventDbContext())
            {
                var @event = db.events.Find(eventID); // Note: I used "@event" as a variable name to avoid clashing with the "event" keyword.
                return @event != null ? @event.event_name : "Event not found";
            }

            return "Event Name Not Found";
        }


    }
}
