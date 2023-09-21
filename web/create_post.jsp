

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tạo bài viết</title>
    <link rel="stylesheet" href="static/css/create_post.css">
</head>
<body>
    <div class="container">
        <h1 style="color: #007bff;">Tạo bài viết</h1>
        <form action="CreatePost" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <label for="title">Tiêu đề:</label>
                <input type="text" id="title" name="title" required>
            </div>
            <div class="form-group">
                <label for="content">Nội dung:</label>
                <textarea id="content" name="content" rows="4" required></textarea>
            </div>
            <div class="form-group">
                <label for="image">Ảnh:</label>
                <input type="file" id="image" name="image">
            </div>
            <div class="form-group">
                <button type="submit">Đăng bài</button>
            </div>
        </form>
    </div>
</body>
</html>