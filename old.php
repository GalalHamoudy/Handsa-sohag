<?php
    include ("connect.php") ;
    include ("fun.php") ;
    $title =" قديم " ;
    $start ="css" ;
    $end ="js" ;
    include ("inc/start.php") ;
    include ("inc/nav.php") ;
?>

<!--  -->

<hr>
<hr>
<hr>
<hr>


<!--  -->
<div class="container">
<div class="section-top-border text-right">
<!--  -->
<div class="progress-table-wrap">
<div class="progress-table">
<table class="table">
  <thead>
    <tr>
      <th scope="col">الرابط</th>
      <th scope="col">المضمون</th>
      <th scope="col">العنوان</th>
      <th scope="col">المادة</th>
      <th scope="col">الفرقة</th>
    </tr>
  </thead>
  <tbody>
<!-- -------------------------------------------------------------------------- -->
<?php
    $stmt = $con->prepare("SELECT * FROM `all_PP` ORDER by `type_P`,`sub_P` DESC");
    $stmt->execute();
    $rows = $stmt->fetchAll();
    foreach($rows as $row) {
?>

<?php
      // ---------------------------------------------------------------
      if($row['type_P'] == 'kharaba'){
        echo '<tr class="table-primary"> ';
      }elseif ($row['type_P'] == 'madane') {
       echo '<tr class="table-secondary">';
      }elseif ($row['type_P'] == 'emara') {
       echo '<tr class="table-success">';
      }else {
       echo '<tr class="table-info">';
      }
      // ---------------------------------------------------------------
       ?>
      <th><a href="<?php echo $row['link_P'] ?>"><button type="button" class="btn btn-dark">اذهب</button></a></th>
      <td><?php echo $row['body_P'] ?></td>
      <td><?php echo $row['title_P'] ?></td>
      <td><?php
      // ---------------------------------------------------------------
      if($row['sub_P'] == 'asas'){
        echo 'رابط اساسي';
      }elseif ($row['sub_P'] == 'ram') {
       echo 'ديجيتل';
      }elseif ($row['sub_P'] == 'crkt') {
       echo 'سيركت';
      }elseif ($row['sub_P'] == 'ele') {
        echo 'الالكترونات';
       }elseif ($row['sub_P'] == 'feld') {
        echo 'فيلد';
       }elseif ($row['sub_P'] == 'thrmo') {
        echo 'ثرمو';
       }elseif ($row['sub_P'] == 'inch') {
        echo 'إنشاءات';
       }elseif ($row['sub_P'] == 'rsm') {
        echo 'رسم';
       }elseif ($row['sub_P'] == 'alya') {
        echo 'آلية';
       }elseif ($row['sub_P'] == 'mate') {
        echo 'ماتريال';
       }elseif ($row['sub_P'] == 're') {
        echo 'ري';
       }elseif ($row['sub_P'] == 'msah') {
        echo 'مساحة';
       }elseif ($row['sub_P'] == 'tsmem') {
        echo 'تصميم';
       }elseif ($row['sub_P'] == 'ench') {
        echo 'إنشاء';
       }elseif ($row['sub_P'] == 'manz') {
        echo 'منظور';
       }elseif ($row['sub_P'] == 'nzrea') {
        echo 'نظريات';
       }elseif ($row['sub_P'] == 'prma') {
        echo 'برمجة';
       }elseif ($row['sub_P'] == 'hand') {
        echo 'تكامل و هندسة';
       }elseif ($row['sub_P'] == 'brsm') {
        echo 'رسم';
       }elseif ($row['sub_P'] == 'kemya') {
        echo 'كمياء';
       }elseif ($row['sub_P'] == 'fesa') {
        echo 'فيزياء';
       }else {
       echo 'Error';
      }
      // ---------------------------------------------------------------
       ?></td>
      <td><?php
      // ---------------------------------------------------------------
      if($row['type_P'] == 'kharaba'){
        echo ' اولي كهرباء ';
      }elseif ($row['type_P'] == 'madane') {
       echo ' اولي مدني';
      }elseif ($row['type_P'] == 'emara') {
       echo ' اولي عمارة';
      }else {
       echo 'اعدادي هندسة';
      }
      // ---------------------------------------------------------------
       ?></td>
    </tr>

<?php
    }

?>


<!-- -------------------------------------------------------------------------- -->

  </tbody>
</table>
</div>
</div>
<!--  -->
</div>
</div>
<?php
    include ("inc/footer.php") ;
    include ("inc/end.php") ;