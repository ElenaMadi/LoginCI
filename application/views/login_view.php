 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Login Page</title>
     <meta charset="UTF-8">
</head>
<body style="background-image:url('https://images4.alphacoders.com/861/861292.jpg');">
    <center><h1 style="font-size:60px;">Login</h1></center>
<center>
    <?php

    echo form_open('Main/login_action');

    echo validation_errors();

    echo "<p >Username: ";
    echo form_input('username', $this->input->post('username'));
    echo "</p>";

    echo "<p>Password: ";
    echo form_password('password');
    echo "</p>";

    echo "</p>";
    echo form_submit('login_submit', 'Login');
    echo "</p>";

    echo form_close();

    ?> </center>


</body>
</html>
