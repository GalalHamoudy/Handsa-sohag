<?php
    include ("../connect.php") ;
    include ("../fun.php") ;

    $title ="تانية مدني " ;
    $start ="../css" ;
    $end ="../js" ;

    include ("../inc/start.php") ;
    include ("../inc/nav1.php") ;

    the_all(
        'الفرقة الثانية','قسم مدني','madany2','مينا إيهاب',
        'الروابط الاساسية','link',
        'نظرية انشاءات 3','link1',
        'تصميم منشأت خرسانية 1','link2',
        'مساحة 2','link3',
        '2 خواص و مقاومة مواد','link4',
        'هيدروليكا 1','link5',
    );

    include ("../inc/footer1.php");
    include ("../inc/end.php") ;