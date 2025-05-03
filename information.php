<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>information</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Information</title>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 10px;
        }
        table {
            width: 80%;
            max-width: 500px;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            font-size: 15px;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            font-weight: bold; /* Makes text bold */
        }
        th {
            background-color: #4CAF50;
            color: white;
            text-transform: uppercase;
            font-size: 15px;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        td {
            color: #333;
        }
        caption {
            margin-bottom: 5px;
            font-size: 16px;
            font-weight: bold;
        }
    </style>

</head>
<body>
   
<?php include 'header.php'; ?>

<section class="information">
<table>
        <caption><h1>Project Information</h1></caption>
        <tr>
            <th>Project Name</th>
            <td>Green Hygiene</td>
        </tr>
        <tr>
            <th>Team Member</th>
            <td>Tofik Multani, Sohil Fog</td>
        </tr>
        <tr>
            <th>Class</th>
            <td>5BCA_A</td>
        </tr>
        <tr>
            <th>Project Definition</th>
            <td>Online Vegetable Selling</td>
        </tr>
        <tr>
            <th>Project Scope</th>
            <td>Fresh Vegetable selling online in a specific area (Tramba Village)</td>
        </tr>
    </table>

   <div class="row">

      <div class="box">
         
      </div>

      <div class="box">
        
      </div>

   </div>

</section>

<section class="reviews">

   

</section>









<?php include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>