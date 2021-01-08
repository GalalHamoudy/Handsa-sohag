<?php
    include ("../connect.php") ;
    include ("../fun.php") ;

    $title ="تانية كهرباء " ;
    $start ="../css" ;
    $end ="../js" ;

    include ("../inc/start.php") ;
    include ("../inc/nav1.php") ;

    the_all(
        'الفرقة الثانية','قسم كهرباء','kharaba2','احمد جلال',
        'الروابط الاساسية','link',
        'دوائر كهربائية 3','link1',
        'كهرومغناطيسية 2','link2',
        ' إلكترونيات 2','link3',
        'تحليل نظم ','link4',
        'الاحتمال و الاحصاء','link5',
    );

    include ("../inc/footer1.php");
    include ("../inc/end.php") ;