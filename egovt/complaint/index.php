<?php

require "../config.php";
if(isset($_GET['on']) and isset($_GET['id'])){
	if($_GET['on']=='id' and $_GET['id']!=''){
		if($complaint = $user->getComplaintById($_GET['id'])){
		$status = $complaint['status'];
		if($mlaConst = $user->tagedMLA($complaint['eid'])){
				$mla = $mlaConst['electedMember'];
			  $constituency = $mlaConst['constituency'];
				$district = $mlaConst['did'];
				$district = $user->getDistrict($district);
				$user->updateViews($_GET['id']);
		}}else {
			header('Location: ../dashboard');
			exit();
		}
	}else{
		header('Location: ../dashboard');
		exit();
	}
}else{
	header('Location: ../dashboard');
	exit();
}

 ?>


<!DOCTYPE html>
<html lang="en">
<head>
	<title>Dashboard Community</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="style.css">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
 <meta name="HandheldFriendly" content="true" />
 <meta name="theme-color" content="#333">
</head>
<body>
	<header>
		<div class="container">
			<div class="logo">
			<a href="../dashboard/"><h1><span style="font-family: 'Pacifico', cursive;font-size:35px;">e</span><span style="font-family:'Monoton', cursive;color: #333;font-size:40px;">GOV</span></h1></a>
			</div>
		</div>
	</header>

	<section>
		<div class="main">
			<div class="container">
				<div class="ask">
					<h3><?php echo $complaint['title'];  ?> </h3><p style="font-size:16px;margin-top: 30px;"><?php echo $complaint['prob'];  ?></p>

				</div>
				<div class="abt-comp">
					<div class="row-fluid">
						<div class="col-md-8">
							<div class="post">
								<div class="complnt">
									<h4>Complaint registered description</h4>
									<table>
                  						<tr>
                  							<td class="col-sm-6"><span style="font-size: 16px;font-weight: bold;" >Complaint Id</span></td>
                  							<td class="col-sm-6"><span>  <?php echo $complaint['qid'];  ?></span></td>
                  						</tr>
									<tr>
										<td class="col-sm-6"><span style="font-size: 16px;font-weight: bold;" >views</span></td>
										<td class="col-sm-6"><span>  <?php echo $complaint['views'];  ?></span></td>
									</tr>
									<tr>
										<td class="col-sm-6"><span style="font-size: 16px;font-weight: bold;" >Registered On</span></td>
										<td class="col-sm-6"><span> <?php echo $complaint['time'];  ?></span></td>
									</tr>
									<tr>
										<td class="col-sm-6"><span style="font-size: 16px;font-weight: bold;" >Registered By</span></td>
										<td class="col-sm-6"><span> <?php print(strtoupper($user->registerBy($complaint['uid'])));  ?></span></td>
									</tr>
									<tr>
										<td class="col-sm-6"><span style="font-size: 16px;font-weight: bold;" > Taged MLA</span></td>
										<td class="col-sm-6"><span> Mr.<?php if(isset($mla))echo strtoupper($mla);  ?></span></td>
									</tr>
										<tr>
											<td class="col-sm-6"><span style="font-size: 16px;font-weight: bold;" >Constituency</span></td>
											<td class="col-sm-6"><span><?php if(isset($constituency))echo strtoupper($constituency);  ?></span></td>
										</tr><br>
									<tr>
										<td class="col-sm-6"><span style="font-size: 16px;font-weight: bold;" >District</span></td>
										<td class="col-sm-6"><span><?php if(isset($district))echo strtoupper($district);  ?></span><br></td>
									</tr>
								</table>
								<div class="flowchart">
									<div class="pad-wrap">
										<h3>Status of Complaint</h3>
										<div class="flow" style="background-color:#27ae60;" >Unseen</div> 
										<span> 
										<i class="fa fa-arrow-right" aria-hidden="true"></i></span>
										<div class="flow" <?php if($status>=1) echo 'style="background-color:#333;"'; ?> >Seen</div><span> <i class="fa fa-arrow-right" aria-hidden="true"></i></span>
										<div class="flow" <?php if($status>=2) echo 'style="background-color:#333;"'; ?> >Onwork</div><span> <i class="fa fa-arrow-right" aria-hidden="true"></i></span>
										<div class="flow" <?php if($status>=3) echo 'style="background-color:#333;"'; ?> >Resolved</div>
									</div>
								</div>
									<a href="../report?mla=<?php echo $mla.'&token='.$_SESSION['token']; ?>" ><button class="hove">Generate report of complaint</button></a>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="../dashboard" >
										<button class="hove">Register Complaint</button></a>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="other">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div><?php include('../footer.php'); ?></div>
</body>
</html>
