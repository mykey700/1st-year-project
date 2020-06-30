<?php
 $dir = $_REQUEST['d'];
//  $speed = $GET['s'];
//  $time = $_POST['t'];
}
echo $dir;
//echo $speed;
//echo $time;
 $exec_cmd = "./control_2 ". $dir;
 //$result = shell_exec($exec_cmd);
 //echo $exec_cmd;
 $output = shell_exec($exec_cmd);
 echo "<pre>$output</pre>";
}
?>
