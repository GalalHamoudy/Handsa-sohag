<?php
    include ("connect.php") ;

    // -------------------------------------------
    // ----------- الموقع الرئيسي--------------
    // -------------------------------------------

    //------- عرض الارقام في الموقع --------
    function row($sql){
        global $con ;
        $stmt = $con->prepare($sql);
        $stmt->execute();
        return $stmt->rowCount();
    }
    //------- عرض الارقام في اللوحة --------
    function roow($a1,$a2){
        global $con ;
        $stmt = $con->prepare('SELECT * FROM `all_P` WHERE type_P = :type AND sub_P = :sub ');
        $stmt->execute(array(
            ':type' => $a1 ,
            ':sub' => $a2
            ));
        return $stmt->rowCount();
    }
    //------- عرض روابط المواد --------
    function dball($a1,$a2,$a3){
        global $con ;
        $stmt = $con->prepare("SELECT * FROM `all_P` WHERE type_P = :type AND sub_P = :sub ");
        $stmt->execute(array(
            ':type' => $a1 ,
            ':sub' => $a2
            ));
        $rows = $stmt->fetchAll();
        if(empty($rows)){
            ?>
            <div class="container">
            <div class="row">
            <div class="col-lg-12">
            <blockquote class="generic-blockquote">
            لاتوجد روابط حتي الان 
            </blockquote>
            </div>
            </div>
            </div>
            <?php
        }
        foreach($rows as $row) {
            echo '<div class="col-sm-6 col-lg-4">';
            echo '<div class="single_special_cource">';
            echo '<div class="special_cource_text">';
            echo '<a target="_blank" href="' . $row['link_P'] . '" class="btn_4"> الذهاب الي الرابط </a>';
            echo " <h3>" . $row['title_P'] . " </h3>";
            echo "<p>" . $row['body_P'] . "</p>";

            echo '<div class="author_info text-right">';
            echo '<h5>' . $a3 . '</h5>';
            echo '<h5>: تم النشر بواسطة </h5>';

            echo "</div>";
            echo "</div>";
            echo "</div>";
            echo "</div>";
        }
    }
    //------- عرض الروابط الاساسية--------
    function dbone($a1){
        global $con ;
        $stmt = $con->prepare("SELECT * FROM `all_P` WHERE type_P = :type AND sub_P = 'link' ");
        $stmt->execute(array(
            ':type' => $a1
            ));
        $rows = $stmt->fetchAll();
        if(empty($rows)){
            ?>
            <div class="container text-right">
            <div class="row">
            <div class="col-lg-12">
            <blockquote class="generic-blockquote">
            لاتوجد روابط حتي الان 
            </blockquote>
            </div>
            </div>
            </div>
            <?php
        }
        foreach($rows as $row) {
        echo "<div class='col-lg-4 col-md-4'>";
        echo '<div class="testimonial_slider text-right">';
        echo '<div class="testimonial_slider_text">';
        echo "<h4>" . $row['title_P'] . "</h4>";
        echo "<a href='". $row['link_P'] . "'class='btn_4' target='_blank'> الذهاب الي الرابط </a>";
        echo "</div>";
        echo "</div>";
        echo "</div>";
        }
    }
    // ------------------------------- all ----------------------
    function the_all($a1,$a2,$a3,$a4,$a5,$a6,$a7,$a8,$a9,$a10,$a11,$a12,$a13,$a14,$a15,$a16,$img = '../'){
        ?>
        <section class="advance_feature learning_part">
            <div class="container">
                <div class="row align-items-sm-center align-items-xl-stretch">
                    <div class="col-lg-6 col-md-6">
                        <div class="learning_img">
                            <img src="<?php echo $img ?>img/advance_feature_img.png" alt="">
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6">
                        <div class="learning_member_text text-right">
                            <h5><?php echo $a2 ?></h5>
                            <h2><?php echo $a1 ?></h2>
                            <p>
                                هنا ستجد جميع المحاضرات والسكاشن والجروبات و جميع الروابط الخاصة ب<?php echo $a2 ?> , يتم نشر
                                وتحديث الروابط بواسطة طلاب داخل القسم
                            </p>
                            <div class="row">
                                <div class="col-sm-6 col-md-12 col-lg-6">
                                    <div class="learning_member_text_iner">
                                        <span class="ti-pencil-alt"></span>
                                        <h4> الروابط الفرعية </h4>
                                        <p> هنا ستجد روابط المحاضرات والسكاشن واهم تعليمات الدكاترة </p>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-12 col-lg-6">
                                    <div class="learning_member_text_iner">
                                        <span class="ti-stamp"></span>
                                        <h4> الروابط الاساسية </h4>
                                        <p> هنا ستجد الروابط الثابته مثل روابط الجروبات او روابط للتواصل مع الدكتور </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- ---------------------------------------------------------------------------  -->
        <div class="container">
            <section class="testimonial_part">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-xl-5">
                            <div class="section_tittle text-center">
                                <p><?php echo $a1 ?></p>
                                <h2><?php echo $a5 ?></h2>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex justify-content-center">
                    <!------------------------------------->
                    <?php dbone($a3) ?>
                    <!------------------------------------->
                    </div>
                </div>
            </section>
        </div>
        <div class="container">
        <section class="testimonial_part">
                <div class="container-fluid">
                    <div class="row justify-content-center">
                        <div class="col-xl-5">
                            <div class="section_tittle text-center">
                                <p><?php echo $a1 ?></p>
                                <h2>الروابط الفرعية</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        <div class="accordion" id="accordionExample">
            <div class="card">
                <div class="card-header" id="headingOne1">
                    <a class="btn btn-link mg_a" type="button" data-toggle="collapse" data-target="#collapseOne1"
                        aria-expanded="false" aria-controls="collapseOne1">
                        <section class="member_counter">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 col-sm-12">
                                    <?php echo roow($a3,$a8) ?>
                                        <div class="single_member_counter">
                                            <h4><?php echo $a7 ?></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </a>
                </div>

                <div id="collapseOne1" class="collapse" aria-labelledby="headingOne1" data-parent="#accordionExample">
                    <div class="card-body">
                        <section class="special_cource padding_top text-right">
                            <div class="container">
                                <div class="row d-flex justify-content-center">
                                <!------------------------------------->
                                <?php dball($a3,$a8,$a4) ?>
                                <!------------------------------------->
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingOne2">
                    <a class="btn btn-link mg_a" type="button" data-toggle="collapse" data-target="#collapseOne2"
                        aria-expanded="false" aria-controls="collapseOne2">
                        <section class="member_counter">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 col-sm-12">
                                    <?php echo roow($a3,$a10) ?>
                                        <div class="single_member_counter">
                                            <h4><?php echo $a9 ?></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </a>
                </div>
                <div id="collapseOne2" class="collapse" aria-labelledby="headingOne2" data-parent="#accordionExample">
                    <div class="card-body">
                        <section class="special_cource padding_top text-right">
                            <div class="container">
                                <div class="row d-flex justify-content-center">
                                <!------------------------------------->
                                <?php dball($a3,$a10,$a4) ?>
                                <!------------------------------------->
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingOne3">
                    <a class="btn btn-link mg_a" type="button" data-toggle="collapse" data-target="#collapseOne3"
                        aria-expanded="false" aria-controls="collapseOne3">
                        <section class="member_counter">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 col-sm-12">
                                    <?php echo roow($a3,$a12) ?>
                                        <div class="single_member_counter">
                                            <h4><?php echo $a11 ?></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </a>
                </div>
                <div id="collapseOne3" class="collapse" aria-labelledby="headingOne3" data-parent="#accordionExample">
                    <div class="card-body">
                        <section class="special_cource padding_top text-right">
                            <div class="container">
                                <div class="row d-flex justify-content-center">
                                <!------------------------------------->
                                <?php dball($a3,$a12,$a4) ?>
                                <!------------------------------------->
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingOne4">
                    <a class="btn btn-link mg_a" type="button" data-toggle="collapse" data-target="#collapseOne4"
                        aria-expanded="false" aria-controls="collapseOne4">
                        <section class="member_counter">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 col-sm-12">
                                    <?php echo roow($a3,$a14) ?>
                                        <div class="single_member_counter">
                                            <h4><?php echo $a13 ?></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </a>
                </div>

                <div id="collapseOne4" class="collapse" aria-labelledby="headingOne4" data-parent="#accordionExample">
                    <div class="card-body">
                        <section class="special_cource padding_top text-right">
                            <div class="container">
                                <div class="row d-flex justify-content-center">
                                <!------------------------------------->
                                <?php dball($a3,$a14,$a4) ?>
                                <!------------------------------------->
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingOne5">
                    <a class="btn btn-link mg_a" type="button" data-toggle="collapse" data-target="#collapseOne5"
                        aria-expanded="false" aria-controls="collapseOne5">
                        <section class="member_counter">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 col-sm-12">
                                    <?php echo roow($a3,$a16) ?>
                                        <div class="single_member_counter">
                                            <h4><?php echo $a15 ?></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </a>
                </div>
                <div id="collapseOne5" class="collapse" aria-labelledby="headingOne5" data-parent="#accordionExample">
                    <div class="card-body">
                        <section class="special_cource padding_top text-right">
                            <div class="container">
                                <div class="row d-flex justify-content-center">
                                <!------------------------------------->
                                <?php dball($a3,$a16,$a4) ?>
                                <!------------------------------------->
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <?php
    }

    // -------------------------------------------
    // -----------CONTROL PANEL--------------
    // -------------------------------------------


    // ------------- جزء العرض داخل اللوحة --------------------
    function dash_all($a4,$a5){
        global $con ;
        $stmt = $con->prepare("SELECT * FROM `all_P` WHERE type_P = :type AND sub_P = :sub ");
        $stmt->execute(array(
            ':type' => $a4 ,
            ':sub' => $a5
            ));
        $rows = $stmt->fetchAll();
        $num=1;
        if(empty($rows)){
            ?>
            <div class="container">
            <div class="row">
            <div class="col-lg-12">
            <blockquote class="generic-blockquote">
            لاتوجد روابط حتي الان 
            </blockquote>
            </div>
            </div>
            </div>
            <?php
        }
        foreach($rows as $row) {
            echo "<div class='table-row'>";
            echo '<div class="visit d-block">
            <div class="btn-group" role="group" aria-label="Basic example">
            <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#a'.$row['id_P'].'">حذف</button> 
            <!-- <a type="button" class="btn btn-primary">تعديل</a> -->
            </div> 
            </div>';
            echo "<div class='visit d-block'>" . $row['link_P'] . "</div>";
            echo "<div class='visit d-block'>" . $row['body_P'] . "</div>";
            echo "<div class='visit d-block'>" . $row['title_P'] . "</div>";
            echo "<div class='visit d-block'>" . $num++ . "</div>";
            echo "</div>";
            echo'
            <div class="modal fade" id="a'.$row['id_P'].'" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
            <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel"></h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <div class="modal-body text-center">
            <h4> هل انت متاكد  ؟ </h4>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">الغاء</button>
            <a type="button" class="btn btn-primary" href=?id=' . $row['id_P'] . '> حذف </a>
            </div>
            </div>
            </div>
            </div>
        ';
        }
    }

    // ----------------------- الارسال للداتا بيز -----------------
    function dash_send($a1){
        global $con ;
        if(isset($_GET['id'])){
            $userid = $_GET['id'];
            $stmt = $con->prepare("DELETE FROM `all_P` WHERE id_P = :id");
            $stmt->bindParam(":id", $userid);
            $stmt->execute();  
            header('Location: ' . $_SERVER['HTTP_REFERER']); 
        }
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (isset($_POST['upload'])) {
               $title 	= $_POST['title'];
               $body 	= $_POST['body'];
               $link 	= $_POST['link'];
               $sub 	= $_POST['sub'];
               $type 	= $a1;   
           }
           $stmt = $con->prepare("INSERT INTO `all_P`(`title_P`, `body_P`, `link_P`, `sub_P`, `type_P`) VALUES (:title,:body,:link,:sub,:type)");
           $stmt->execute(array(
               ':title' => $title ,
               ':body' => $body ,
               ':link' => $link ,
               ':sub' => $sub ,
               ':type' => $type ,
           ));
           ?>
           <div class="alert alert-warning alert-dismissible fade show text-right" role="alert">
           <strong> ! تمت الاضافة بنجاح </strong>
           <button type="button" class="close" data-dismiss="alert" aria-label="Close">
           <span aria-hidden="true">&times;</span>
           </button>
           </div>
           <?php
        }
    }



    function admin_all($a,$aa,$a1,$a2,$a3,$a4,$a5,$a6,$a7,$a8,$a9,$a10,$a11,$a12){
        global $con ;
        ?>
        <section class="blog_part section_padding">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-5">
                        <div class="section_tittle text-center">
                            <p> لوحة التحكم للاضافة والحذف </p>
                            <h2><?php echo $a1 ?></h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ----------------------------------------  -->
        <div class="container">
            <div class="section-top-border text-right">
                <h3 class="mb-30 title_color"> اضافة رابط </h3>
                <div class="row">
                    <div class="col-lg-12">
                        <blockquote class="generic-blockquote">
                            <form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
                                <div class="form-check">
                                    <label class="form-check-label" for="inlineRadio1"><?php echo $a1 ?></label>
                                    <input class="form-check-input" type="radio" name="sub" id="inlineRadio1" value="<?php echo $a2 ?>" checked>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label" for="inlineRadio2"><?php echo $a3 ?></label>
                                    <input class="form-check-input" type="radio" name="sub" id="inlineRadio2" value="<?php echo $a4 ?>">
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label" for="inlineRadio3"><?php echo $a5 ?></label>
                                    <input class="form-check-input" type="radio" name="sub" id="inlineRadio3" value="<?php echo $a6 ?>">
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label" for="inlineRadio4"><?php echo $a7 ?></label>
                                    <input class="form-check-input" type="radio" name="sub" id="inlineRadio4" value="<?php echo $a8 ?>">
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label" for="inlineRadio5"><?php echo $a9 ?></label>
                                    <input class="form-check-input" type="radio" name="sub" id="inlineRadio5" value="<?php echo $a10 ?>">
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label" for="inlineRadio6"><?php echo $a11 ?></label>
                                    <input class="form-check-input" type="radio" name="sub" id="inlineRadio6" value="<?php echo $a12 ?>">
                                </div>
                                <hr>
                                <h5 class="typo-list"> الاسم الاساسي </h5>
                                <div class="mt-10">
                                    <input type="text" name="title" required class="single-input" autocomplete="off">
                                </div>
                                <h5 class="typo-list mt-4">النبذه</h5>
                                <div class="mt-10">
                                    <input type="text" name="body" required class="single-input" autocomplete="off">
                                </div>
                                <h5 class="typo-list  mt-4"> الرابط </h5>
                                <div class="mt-10">
                                    <input type="text" name="link" required class="single-input" autocomplete="off">
                                </div>

                                <div class="text-center mt-4">
                                    <button href="#" class="genric-btn info circle arrow " name="upload"> اضافة
                                        <span class="lnr lnr-arrow-right"></span>
                                    </button>
                                </div>
                            </form>
                        </blockquote>
                    </div>
                </div>
            </div>
        
        <!-- --------------------------------------  -->
        <div class="accordion" id="accordionExample">
            <div class="card">
                <div class="card-header" id="headingOne0">
                    <a class="btn btn-link mg_a" type="button" data-toggle="collapse" data-target="#collapseOne0"
                        aria-expanded="false" aria-controls="collapseOne0">
                        <section class="member_counter">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 col-sm-12">
                                        <h4><?php echo roow($aa,$a2) ?></h4>
                                        <div class="single_member_counter">
                                            <h4><?php echo $a1 ?></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </a>
                </div>
                <div id="collapseOne0" class="collapse" aria-labelledby="headingOne1" data-parent="#accordionExample">
                    <div class="card-body">
                        <div class="container">
                            <div class="section-top-border text-right">
                                <h3 class="mb-30">الجدول</h3>
                                <div class="progress-table-wrap">
                                    <div class="progress-table">
                                        <div class="table-head">
                                            <div class="visit"> التحكم </div>
                                            <div class="visit"> الرابط </div>
                                            <div class="visit">النبذه</div>
                                            <div class="visit"> الاسم </div>
                                            <div class="visit"> الترتيب</div>
                                        </div>
                                        <!------------------------------------->
                                        <?php dash_all($aa,$a2) ?>
                                        <!------------------------------------->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingOne1">
                    <a class="btn btn-link mg_a" type="button" data-toggle="collapse" data-target="#collapseOne1"
                        aria-expanded="false" aria-controls="collapseOne1">
                        <section class="member_counter">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 col-sm-12">
                                        <h4><?php echo roow($aa,$a4) ?></h4>
                                        <div class="single_member_counter">
                                            <h4><?php echo $a3 ?></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </a>
                </div>
                <div id="collapseOne1" class="collapse" aria-labelledby="headingOne1" data-parent="#accordionExample">
                    <div class="card-body">
                        <div class="container">
                            <div class="section-top-border text-right">
                                <h3 class="mb-30">الجدول</h3>
                                <div class="progress-table-wrap">
                                    <div class="progress-table">
                                        <div class="table-head">
                                            <div class="visit"> التحكم </div>
                                            <div class="visit"> الرابط </div>
                                            <div class="visit">النبذه</div>
                                            <div class="visit"> الاسم </div>
                                            <div class="visit"> الترتيب</div>
                                        </div>
                                        <!------------------------------------->
                                        <?php dash_all($aa,$a4) ?>
                                        <!------------------------------------->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingOne2">
                    <a class="btn btn-link mg_a" type="button" data-toggle="collapse" data-target="#collapseOne2"
                        aria-expanded="false" aria-controls="collapseOne2">
                        <section class="member_counter">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 col-sm-12">
                                        <h4><?php echo roow($aa,$a6) ?></h4>
                                        <div class="single_member_counter">
                                            <h4><?php echo $a5 ?></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </a>
                </div>
                <div id="collapseOne2" class="collapse" aria-labelledby="headingOne2" data-parent="#accordionExample">
                    <div class="card-body">
                        <div class="container">
                            <div class="section-top-border text-right">
                                <h3 class="mb-30">الجدول</h3>
                                <div class="progress-table-wrap">
                                    <div class="progress-table">
                                        <div class="table-head">
                                            <div class="visit"> التحكم </div>
                                            <div class="visit"> الرابط </div>
                                            <div class="visit">النبذه</div>
                                            <div class="visit"> الاسم </div>
                                            <div class="visit"> الترتيب</div>
                                        </div>
                                        <!------------------------------------->
                                        <?php dash_all($aa,$a6) ?>
                                        <!------------------------------------->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingOne3">
                    <a class="btn btn-link mg_a" type="button" data-toggle="collapse" data-target="#collapseOne3"
                        aria-expanded="false" aria-controls="collapseOne3">
                        <section class="member_counter">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 col-sm-12">
                                        <h4><?php echo roow($aa,$a8) ?></h4>
                                        <div class="single_member_counter">
                                            <h4><?php echo $a7 ?></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </a>
                </div>
                <div id="collapseOne3" class="collapse" aria-labelledby="headingOne3" data-parent="#accordionExample">
                    <div class="card-body">
                        <div class="container">
                            <div class="section-top-border text-right">
                                <h3 class="mb-30">الجدول</h3>
                                <div class="progress-table-wrap">
                                    <div class="progress-table">
                                        <div class="table-head">
                                            <div class="visit"> التحكم </div>
                                            <div class="visit"> الرابط </div>
                                            <div class="visit">النبذه</div>
                                            <div class="visit"> الاسم </div>
                                            <div class="visit"> الترتيب</div>
                                        </div>
                                        <!------------------------------------->
                                        <?php dash_all($aa,$a8) ?>
                                        <!------------------------------------->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingOne4">
                    <a class="btn btn-link mg_a" type="button" data-toggle="collapse" data-target="#collapseOne4"
                        aria-expanded="false" aria-controls="collapseOne4">
                        <section class="member_counter">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 col-sm-12">
                                        <h4><?php echo roow($aa,$a10) ?></h4>
                                        <div class="single_member_counter">
                                            <h4><?php echo $a9 ?></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </a>
                </div>
                <div id="collapseOne4" class="collapse" aria-labelledby="headingOne4" data-parent="#accordionExample">
                    <div class="card-body">
                        <div class="container">
                            <div class="section-top-border text-right">
                                <h3 class="mb-30">الجدول</h3>
                                <div class="progress-table-wrap">
                                    <div class="progress-table">
                                        <div class="table-head">
                                            <div class="visit"> التحكم </div>
                                            <div class="visit"> الرابط </div>
                                            <div class="visit">النبذه</div>
                                            <div class="visit"> الاسم </div>
                                            <div class="visit"> الترتيب</div>
                                        </div>
                                        <!------------------------------------->
                                        <?php dash_all($aa,$a10) ?>
                                        <!------------------------------------->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" id="headingOne5">
                    <a class="btn btn-link mg_a" type="button" data-toggle="collapse" data-target="#collapseOne5"
                        aria-expanded="false" aria-controls="collapseOne5">
                        <section class="member_counter">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12 col-sm-12">
                                        <h4><?php echo roow($aa,$a12) ?></h4>
                                        <div class="single_member_counter">
                                            <h4><?php echo $a11 ?></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </a>
                </div>
                <div id="collapseOne5" class="collapse" aria-labelledby="headingOne5" data-parent="#accordionExample">
                    <div class="card-body">
                        <div class="container">
                            <div class="section-top-border text-right">
                                <h3 class="mb-30">الجدول</h3>
                                <div class="progress-table-wrap">
                                    <div class="progress-table">
                                        <div class="table-head">
                                            <div class="visit"> التحكم </div>
                                            <div class="visit"> الرابط </div>
                                            <div class="visit">النبذه</div>
                                            <div class="visit"> الاسم </div>
                                            <div class="visit"> الترتيب</div>
                                        </div>
                                        <!------------------------------------->
                                        <?php dash_all($aa,$a12) ?>
                                        <!------------------------------------->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <?php
    }
