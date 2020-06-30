<?php
if(isset($_POST['speed']) && isset($_POST['time']))
{
 $speed = $_POST['speed'];
 $time = $_POST['time'];
 $exec_cmd = "./control_2 f -s ". $speed ." -t ". $time;
 //$result = shell_exec($exec_cmd);
 echo $exec_cmd;
 $output = shell_exec($exec_cmd);
 echo "<pre>$output</pre>";
}
?>
<html>
    <head>

    </head>

    <body>
        <form method="post">
            speed: <input type="text" name ="speed"></br>
            time: <input type="text" name ="time"></br>
            <input type="submit" value="Run">
        </form>
    </body>
</html>