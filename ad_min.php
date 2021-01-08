<?php
    $title =" تسجيل الدخول " ;
    $start ="css" ;
    $end ="js" ;

    include ("inc/start.php") ;
    session_start();

    // if(isset($_SESSION['email']) && isset($_SESSION['password'])){
    // //- ?????????????????????
    // }

    if($_SERVER['REQUEST_METHOD'] == 'POST'){

        $email      = $_POST['email'];
        $password   = $_POST['password'];

        if($email == 'aaa@bbb.com' && $password =='agalal'){
            $_SESSION['email']      = $email;
            $_SESSION['password']   = $password ;
            $location = 'admin/ka2.php';
        }
        // -----------------------------------------------------------
        elseif($email == 'bbb@aaa.com' && $password =='bmena'){
            $_SESSION['email']=$email;
            $_SESSION['password']= $password ;
            $location = 'admin/ma2.php';
        }
        // // -----------------------------------------------------------
        // elseif($email == 'who-add@galal.eg.com' && $password =='wezo#2000up'){
        //     $_SESSION['email']=$email;
        //     $_SESSION['password']= $password ;
        //     $location ='ma_em_dash.php';
        // }
        // // -----------------------------------------------------------
        // elseif($email == 'kira-zezo7000x@galal.com' && $password =='wow#2000#update'){
        //     $_SESSION['email']=$email;
        //     $_SESSION['password']= $password ;
        //     $location ='bb_bb_dash.php';
        // }
        // // -----------------------------------------------------------
        else{
            $location ='index.php';
            //- ?????????????????????
        }
        if(isset($location)){
        header("location:$location");
        exit();
        }
    }
?>
<section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner text-center">
                        <div class="breadcrumb_iner_item">
                            <h2> هندسة سوهاج للتعليم الاونلاين </h2>
                            <p> تسجيل الدخول </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>
<div class="container">
  <div class="section-top-border text-right">
    <h3 class="mb-30"> ملاحظة هامة </h3>
    <div class="row">
      <div class="col-lg-12">
        <blockquote class="generic-blockquote">
          “ هذه الصفحه مصممة ليدخل اليها الاعضاء المسموح بيها فقط وغير مسموح لاي شخص الدخول اليها مع العلم ان عند دخول اي شخص لهذه الصفحة يتم ارسالة رسالة للمصمم الصفحة بيها بياناتك الشخصية و الوقت اللازم لارسال هذه البيانات هي عشره ثواني وهو الوقت الكافي لقراءة هذه الكتابة , وشكرا ”
        </blockquote>
      </div>
    </div>
  </div>
  <div class="section-top-border text-right">
      <h3 class="mb-30 title_color">تسجيل الدخول  </h3>
      <div class="row">
          <div class="col-lg-12">
              <blockquote class="generic-blockquote">
                    <form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
                      <h5 class="typo-list"> اسم المستخدم </h5>
                      <div class="mt-10">
                          <input type="email" name="email" required="" class="single-input" require style="text-align: left;">
                      </div>
                      <h5 class="typo-list mt-2"> الكود الخاص </h5>
                      <div class="mt-10">
                          <input type="password" name="password" required="" class="single-input" require style="text-align: left;">
                      </div>
                  <div class="text-center mt-4">
                      <button class="genric-btn info circle arrow" type="submit"> الدخول الي لوحة التحكم
                          <span class="lnr lnr-arrow-right"></span>
                      </button>
                  </div>
                  </form>
              </blockquote>    
          </div>    
      </div>    
  </div>    
</div>
<?php
    include ("inc/footer.php") ;
    include ("inc/end.php") ;














    // if($_SERVER['REQUEST_METHOD'] == 'POST'){
         
    //     if(isset($_POST['username']) && isset($_POST['password']) ){
    //         if( $_POST['username'] !='' && $_POST['password'] !=''){

    //             $username   = $_POST['username'];
    //             $password   = $_POST['password'];

    //             if(is_string($username) && is_string($password) ){

    //                 if($username == 'ahmed' && $password =='123' || $username == 'tariq' && $password =='789'){
    //                     // real user
    //                 }else{
    //                     // not user
    //                 };
    //             };
    //         };
    //     };

    // }
