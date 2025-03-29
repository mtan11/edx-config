<?php
if ($_GET['key'] === 'edxpull123') {
    if ($_GET['source'] === 'strapi') {
        echo nl2br(htmlspecialchars(shell_exec('sudo /bin/bash /root/edx/deploy_strapi.sh 2>&1')));
    } else if ($_GET['source'] === 'nextjs') {
        echo nl2br(htmlspecialchars(shell_exec('sudo /bin/bash /root/edx/deploy_nextjs.sh 2>&1')));
    } else if ($_GET['source'] === 'all') {
        echo nl2br(htmlspecialchars(shell_exec('sudo /bin/bash /root/edx/deploy_all.sh 2>&1')));
    } 
} else {
    echo "Unauthorized!";
}
?>
