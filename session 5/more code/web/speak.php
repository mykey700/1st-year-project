<?php
if(isset($_POST['words']) )
{
echo "sendd";
 $toSend = $_POST['words'];
 $exec_cmd = 'espeak "hello"';
 $result = shell_exec($exec_cmd);
 $output = shell_exec('espeak "hello"');
 echo "<pre>$output</pre>";
}
?>
<html>
    <head>

    </head>

    <body>
        <form method="post">
            say: <input type="text" name ="words"></br>
            <input type="submit" value="Run">
        </form>
    </body>
</html>