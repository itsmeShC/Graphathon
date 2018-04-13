
<?php
require "../config.php";
$uid = NULL;
if($user->checkLogin())
{
	$logedUser = true;
	$uid = $user->getUserId();
	$userName=$_SESSION['user']['username'];
}else {
	$logedUser = false;
}
//Token
if (empty($_SESSION['token'])) {
    $_SESSION['token'] = md5(uniqid(rand(), TRUE));
}
$token = $_SESSION['token'];
//


if(isset($_POST['submit']) and $_POST['token'] and $_POST['title'] and $_POST['complaint'] and $logedUser){
	if($_POST['token']==$_SESSION['token']){
		$qid = substr(md5(uniqid(rand(), TRUE)),0,8);
		$title = $user->crtstr($_POST['title']);
		$prob = $user->crtstr($_POST['complaint']);
		$eid = $user->getEid($_POST['area']);
		if($user->addComplaints($qid,$prob,$uid,$title,$eid)){

		}

	}
}

 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Dashboard Community</title>
 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
 <meta name="HandheldFriendly" content="true" />
 <meta name="theme-color" content="#333">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
  	<link href="https://fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="js/jquery.easy-autocomplete.min.js"></script>
	<link rel="stylesheet" href="js/easy-autocomplete.min.css">
	<script>
	var token = '<?php echo $token; ?>';

	</script>
</head>
<body>
	<header>
		<div class="container">
			<div class="logo">
				<h1>
					<span class="sp">e</span>
					<span class="sp2">GOV</span>
				</h1>
			</div>
		<div class="ui-widget">
			<table>
				<tr>
					<td>
		  				<form method = "get" action="../report" >
		  					<div class="form-group">
		   						<input type="text" id="report" class="form-control" name="mla" placeholder="Ex. Trivendra singh rawat">
									<input type='hidden' value="<?php echo $token; ?>" name= 'token' >
		   					</div>

		  			</td>
		  			<td>
		  				<button id="check" type="submit" class="hove"><i class="fa fa-search" aria-hidden="true"></i>&nbsp;Check report</button>
							</form>
		  			</td>
		  			<td>
							 <?php
              if($logedUser){?>
		  				<a href="../sout.php" ><button class="right hove">
						Sign out
					</button></a>
					<?php }else{ ?>
						<a href="../account" ><button class="right hove">
					  Sign in
					</button></a>
				<?php }?>

		  			</td>
		  		</tr>
		  	</table>
		</div>
	</div>
	</header>
<?php if(!$logedUser){ ?>
	<section>

		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<div class="post">
						<div class="headng">
            				<h3>Registered complaints</h3>
            				<a href="../account" ><button class="hove">Register complaint</button></a>
            			</div>
									<?php if($otherComplaintsExist=$user->otherComplaints($uid)){ ?>

									<?php	foreach ($otherComplaintsExist as $key => $value): ?>
										<div class="panel panel-default hove2"style="cursor: pointer;" onclick="redirect('<?php echo $otherComplaintsExist[$key]["qid"]; ?>')" >
											 <div class="panel-body">
												 <div class="views">
													 <center><h4><?php echo $otherComplaintsExist[$key]['views'];  ?><br>Views</h4></center>
												 </div>
												 <div class="link">

														 <span style="font-size: 19px;font-weight: bold;"><?php echo $otherComplaintsExist[$key]['title'];  ?></span>&nbsp;&nbsp;<span  style="font-size: 17px;color: #3397D6;" ><?php echo substr($otherComplaintsExist[$key]['prob'],0,120).'.....';  ?></span>
												 </div>
												 <div class="time">
													 <span style="color:#6a737c;margin-right: 10px;">
														<?php echo $otherComplaintsExist[$key]['time'];  ?>
													 </span>
													 <span><a href="javascript:void(0)">@<?php echo $user->getNameByUID($otherComplaintsExist[$key]['uid']); ?></a></span>
												 </div>
											 </div>
									 </div>
								 <?php endforeach; } ?>



					</div>
				</div>

					<div class="col-md-1">
					</div>

					<div class="col-md-4">
						<div class="posts">
							<pre>Old Complaints</pre>
							<?php if($oldComplaints=$user->oldComplaints()){?>
		 <?php foreach ($oldComplaints as $key => $value): ?>
			 <div class="other-post" style="cursor: pointer;" onclick="redirect('<?php echo $oldComplaints[$key]["qid"]; ?>')">
					<div class="link">

							<span style="font-size: 14px;font-weight: bold;"><?php echo $oldComplaints[$key]['title'];  ?></span>&nbsp;&nbsp;
							<span  style="font-size: 12px;color: #3397D6;" ><?php echo substr($oldComplaints[$key]['prob'],0,120).'.....';  ?> </span>
					</div>
					<div class="time">
						<span style="color:#6a737c;margin-right: 10px;">
							<?php echo $oldComplaints[$key]['time'];  ?>
						</span>
						<span><a href="javascript:void(0)">@<?php echo $user->getNameByUID($oldComplaints[$key]['uid']); ?></a></span>
					</div>
				</div>
		 <?php endforeach; }?>


		  				</div>
		  				<div class="ad-foto">
		  					<pre>Advertisements</pre>
		  					<div class="foto">
		  						<img src="../swachhata-abhiyaan-app.jpg">
		  					</div>
		  				</div>
					</div>
				</div>
			</div>
			<footer>
    <div class="container-fluid">
      <div class="content-wrap">
        <div class="footer_head">
          <div class="flogo">e</div><h1><span style="font-family:'Monoton', cursive;font-size:36px;">GOV</span></h1>
        </div>
          <div class="footer-content">
            <ul>
              <li><a href="javascript:void(0)">About us</a></li>
              <li><a href="javascript:void(0)" id="click_about">Feedback us</a></li>
              <li><a href="javascript:void(0)">Terms</a></li>
              <li><a href="javascript:void(0)">Help</a></li>
              <li><a href="javascript:void(0)">Privacy</a></li>
            </ul>
          </div>
          <span>&copy; &nbsp;Copyright 2k17 ShC.</span>
      </div>
    </div>
</footer>
	</section>
<?php }else{ ?>
	<section>

		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<div class="post">
						<form method="post" action="" >
						<table>

							<tr>
								<td>
									<label>Title</label>
								</td>
								<td>
									<div class="form-group">
										<input type="text" name="title" placeholder="Whats your complaint? Be specific" class="form-control" required>
									</div>
									<div >
										<input type="hidden" name="token" value="<?php echo $token; ?>" >
									</div>
								</td>
								<td>
									<button type="button" id="how" >How to ask?</button>
								</td>
							</tr>
						</table>


						<div class="desc">
							<div class="form-group">
								<h4>Explain briefly about your complaint</h4>
								<textarea class="form-control" name="complaint" placeholder="Full detail of complaint ,complaint should be clear" required class="form-control"></textarea>
							</div>

							<div class="dist">
								<h4>Select District</h4>
								<select name='did' required >
									<option value='1' >Almora</option>
									<option value='2' >Bageshwar</option>
									<option value='3' >Chamoli</option>
									<option value='4' >Champawat</option>
									<option value='5' >Dehradun</option>
									<option value='6' >Haridwar</option>
									<option value='7' >Nainital</option>
									<option value='8' >Pauri</option>
									<option value='9' >Pithoragarh</option>
									<option value='10' >Rudraprayag</option>
									<option value='11' >Tehri</option>
									<option value='12' >U.S Nagar</option>
									<option value='13' >Uttarkashi</option>
								</select>
							</div>

							<div class="pin">
								<div class="form-group">
									<h4>Area</h4>
									<input type="text" name="area" id="area" class="form-control" placeholder="Ex. Kashipur" required >
								</div>
							</div>

							<div class="addrs">
								<div class="form-group">
									<h4>Full address</h4>
									<input type="text" name="address" placeholder="Ex. Behind church , Cement town  Dehradun" class="form-control" required >
								</div>
							</div>
						</div>

						<div class="butn">
							<?php 	if($logedUser){   ?>
								<button type="submit" style="background-color:#333" name="submit" class="btn btn-primary">Register Your Complaint</button>

							<?php }else{ ?>
								</form>
								 <button  type="button" style="background-color:#333" class="btn btn-primary" onclick="account();" >login and post</button>
							 <?php } ?>
						</div>


						<div class="post-item">

							<?php if($myComplaints=$user->myComplaints($uid)){ ?>
								<h3>My Complaints</h3>
							<?php	foreach ($myComplaints as $key => $value): ?>
								<div class="panel panel-default"style="cursor: pointer;" onclick="redirect('<?php echo $myComplaints[$key]["qid"]; ?>')" >
									 <div class="panel-body">
										 <div class="views">
											 <center><h4><?php echo $myComplaints[$key]['views'];  ?><br>Views</h4></center>
										 </div>
										 <div class="link">

												 <span style="font-size: 19px;font-weight: bold;"><?php echo $myComplaints[$key]['title'];  ?></span>&nbsp;&nbsp;
												 <span  style="font-size: 17px;color: #3397D6;" ><?php echo substr($myComplaints[$key]['prob'],0,320).'.....';  ?></span>
										 </div>
										 <div class="time">
											 <span style="color:#6a737c;margin-right: 10px;">
												<?php echo $myComplaints[$key]['time'];  ?>
											 </span>
											 <span><a href="#">@<?php echo $userName;  ?></a></span>
										 </div>
									 </div>
							 </div>
						 <?php endforeach; } ?>


							</div>
						</div>
					</div>

					<div class="col-md-1">
					</div>

					<div class="col-md-4">
						<div class="posts">
							<pre>Recent Complaints By Others</pre>
							<?php if($otherComplaints=$user->otherComplaints($uid)){?>
		 <?php foreach ($otherComplaints as $key => $value): ?>
			 <div class="other-post" style="cursor: pointer;" onclick="redirect('<?php echo $otherComplaints[$key]["qid"]; ?>')">
					<div class="link">

							<span style="font-size: 14px;font-weight: bold;"><?php echo $otherComplaints[$key]['title'];  ?></span>&nbsp;&nbsp;
							<span  style="font-size: 12px;color: #3397D6;" ><?php echo substr($otherComplaints[$key]['prob'],0,120).'.....';  ?> </span>
					</div>
					<div class="time">
						<span style="color:#6a737c;margin-right: 10px;">
							<?php echo $otherComplaints[$key]['time'];  ?>
						</span>
						<span><a href="javascript:void(0)">@<?php echo $user->getNameByUID($otherComplaints[$key]['uid']); ?></a></span>
					</div>
				</div>
		 <?php endforeach; }?>


							</div>
					</div>
				</div>
			</div>
			<footer>
		<div class="container-fluid">
			<div class="content-wrap">
				<div class="footer_head">
					<div class="flogo">e</div><h1><span style="font-family:'Monoton', cursive;font-size:36px;">GOV</span></h1>
				</div>
					<div class="footer-content">
						<ul>
							<li><a href="javascript:void(0)">About us</a></li>
							<li><a href="javascript:void(0)" id="click_about">Feedback us</a></li>
							<li><a href="javascript:void(0)">Terms</a></li>
							<li><a href="javascript:void(0)">Help</a></li>
							<li><a href="javascript:void(0)">Privacy</a></li>
						</ul>
					</div>
					<span>&copy; &nbsp;Copyright 2k17 ShC.</span>
			</div>
		</div>
</footer>
	</section>
	<?php } ?>
		<div class="popup" >
			 <h3>How to register a Complaint?</h3><span  id="close" onclick="hide()">x</span>
			 <ul type="circle">
				 <li>In title field you just have to put title in 20-30 words.</li>
				 <li>In Discuss field you have to give the info in detail so that it is understandable by ministers ,everything should be clear.</li>
				 <li>Select your district</li>
				 <li>Enter your area zone(City) Ex. Kashipur</li>
				 <li>Provide your full address</li>
			 </ul>
		 </div>
	<script src="js/script.js" ></script>
</body>
</html>
