<?php
    ob_start();
    session_start();
    include ("../connect.php") ;
    include ("../fun.php") ;

    $title =" لوحة التحكم " ;
    $start ="../css" ;
    $end ="../js" ;

    include ("../inc/start.php") ; 


    if($_SESSION['email'] == 'bbb@aaa.com' && $_SESSION['password'] == 'bmena' ){

        dash_send('madany2');
    

    
        admin_all(
            'قسم مدني','madany2',
            'الروابط الاساسية','link',
            'نظرية انشاءات 3','link1',
            'تصميم منشأت خرسانية 1','link2',
            'مساحة 2','link3',
            '2 خواص و مقاومة مواد','link4',
            'هيدروليكا 1','link5',
        
        );
    
    
    
    
    
    
    
    
        include ("../inc/end.php") ;
        }else{
            header('location:../index.php');
            ob_end_flush();
        }