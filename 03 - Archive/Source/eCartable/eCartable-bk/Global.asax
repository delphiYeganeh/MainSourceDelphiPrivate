<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

    //protected void Application_AuthenticateRequest(Object sender, EventArgs e)
    //{

    //    if (Request.IsAuthenticated == true)
    //    {

    //        String[] roles;

    //        // Create the roles cookie if it doesn't exist yet for this session.
    //        if ((Request.Cookies["portalroles"] == null) || (Request.Cookies["portalroles"].Value == ""))
    //        {
    //            // Create a cookie authentication ticket.
    //            FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
    //                1,                              // version
    //                Context.User.Identity.Name,     // user name
    //                DateTime.Now,                   // issue time
    //                DateTime.Now.AddHours(1),       // expires every hour
    //                false,                          // don't persist cookie
    //                roleStr                         // roles
    //                );

    //            // Encrypt the ticket
    //            String cookieStr = FormsAuthentication.Encrypt(ticket);

    //            // Send the cookie to the client
    //            Response.Cookies["portalroles"].Value = cookieStr;
    //            Response.Cookies["portalroles"].Path = "/";
    //            Response.Cookies["portalroles"].Expires = DateTime.Now.AddMinutes(1);
    //        }
    //        else
    //        {
    //            // Get roles from roles cookie
    //            FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(Context.Request.Cookies["portalroles"].Value);

    //            //convert the string representation of the role data into a string array
    //            ArrayList userRoles = new ArrayList();

    //            foreach (String role in ticket.UserData.Split(new char[] { ';' }))
    //            {
    //                userRoles.Add(role);
    //            }

    //            roles = (String[])userRoles.ToArray(typeof(String));
    //        }

    //        // Add our own custom principal to the request containing the roles in the auth ticket
    //        Context.User = new GenericPrincipal(Context.User.Identity, roles);
    //    }
    //}
       
</script>
