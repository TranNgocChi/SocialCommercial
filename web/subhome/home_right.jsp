<%@page import="DAO.AdminDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.User"%>
<link rel="stylesheet" href="static/css/style.css">

            <div class="home-right">
                <div class="home-right-wrapper">

                    <div class="event-friend">
                        <hr>
                    
                        <div class="friend">
                            <h3 class="heading">Suggested for you <span>see all</span></h3>
                            <%  AdminDAO manage = new AdminDAO();
                                for(User user : manage.getRandomUsers(session.getAttribute("id"))){%>
                            <ul>
                                <li><img src="<%= user.getImage() %>" alt="user"></li>
                                <li>
                                    <b><%= user.getFullname() %></b>
                                    <p>Follow you</p>
                                    <a href="UserProfileSocial?user_id=<%= user.getId() %>"><button>View Profile</button></a>
                                    <a href=""><button class="friend-remove">remove</button></a>
                                </li>
                            </ul>
                            <% } %>
                        </div>

                    </div>


                </div>
            </div>
