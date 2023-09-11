<!DOCTYPE html>
<html>
<head>
    <title>Screen Size Routing Example</title>
</head>
<body>
    <script>
        // Detect screen width
        var screenWidth = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;

        // Define screen size thresholds
        var smallScreenThreshold = 1200;
       

        // Redirect based on screen size
        if (screenWidth < smallScreenThreshold) {
            window.location.href = 'mai.aspx';
        }  else {
            window.location.href = 'Main.aspx';
        }
    </script>
</body>
</html>
