 <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
            <span>
              Bostorek
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
              <li class="nav-item active">
                <a class="nav-link pl-lg-0" href="admin-dashboard.jsp">Home <span class="sr-only">(current)</span></a>
              </li>
              <%
		if ((String) session.getAttribute("uname") != null) {
	%>
	<li class="nav-item">
                <a class="nav-link" href="veiw-customer.jsp"> ViewCustomer</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="admin-view-book.jsp"> ViewBook</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="admin-view-order.jsp">ViewOrder</a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link" href="admin-view-contact.jsp">ViewContact</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="admin-view-profile.jsp"> <%=session.getAttribute("uname") %>  </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="logout.jsp">Logout</a>
              </li>
            </ul>
          <%}else{ 
           response.sendRedirect("admin-login.jsp");
          } %>  
          </div>
        </nav>
      </div>
    </header>