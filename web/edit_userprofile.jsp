<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="static/css/edit_profile.css">
</head>
<body>
    
    <form class="form" action="EditUserProfile" method="POST" enctype="multipart/form-data">
        <h2 style="color: #3a78ffec;">Edit Profile</h2>
        <p>Name: <input type="text" placeholder="Name" name="name"></p>
        <p>Email: <input type="email" placeholder="Email" name="email"></p>
        <p>Phone number: <input type="text" placeholder="Phone Number" name="phone"></p>
        <p>Image: <input type="file" id="image" name="image"></p>
        <button>Edit Profile</button>
    </form>
</body>
</html>


