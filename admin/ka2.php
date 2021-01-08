<?php
    ob_start();
    session_start();
    include ("../connect.php") ;
    include ("../fun.php") ;

    $title =" لوحة التحكم " ;
    $start ="../css" ;
    $end ="../js" ;

    include ("../inc/start.php") ; 


    if($_SESSION['email'] == 'aaa@bbb.com' && $_SESSION['password'] == 'agalal' ){

        dash_send('kharaba2');
    

    
        admin_all(
            'قسم كهرباء','kharaba2',
            'الروابط الاساسية','link',
            'دوائر كهربائية 3','link1',
            'كهرومغناطيسية 2','link2',
            ' إلكترونيات 2','link3',
            'تحليل نظم ','link4',
            'الاحتمال و الاحصاء','link5',
        
        );
    
    
    
    
    
    
    
    
        include ("../inc/end.php") ;
        }else{
            header('location:../index.php');
            ob_end_flush();
        }