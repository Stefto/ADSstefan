<html>
	<head>
		<title>Is poker efficient?</title>
	    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
		<link href="css/chartist.min.css" rel="stylesheet">
	</head>
	
<body>
	<?php include 'menu.php' ?>
	<br /><br /><br /><br /><br />
	<div class="container theme-showcase" role="main">
		<p>Hello! my name is Stefan.<br />
		i want to talk about Poker for a bit.<br />
		If you are not familiar with the hands please check the hand explained section.<br />
		All statistics and information here is based on 1.000.000 poker hands.<br />
		</p>
		<h1>Playing cards</h1>
		<p>A poker deck has 52 cards. mean there should be a chance 1.78% of drawing a Ace of spades.<br />
		In poker however you have to 5 cards meaning you have a chance of about 9 % to draw the Ace of Spades, or is it?<br /></p>
		<div class="cards-Diamonds-chart">
		</div>
	</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="js/chartist.min.js"></script>
<script language="javascript">
var Labels =[];
var Series =[];
$.ajax({
	url: "getcards.php",  
    success: function(dat) {
		json = JSON.parse(dat);
		for(var i = 0; i < json.length; i++) {
			var obj = json[i];
			Labels.push(obj.fullname);
			Series.push(obj.occurance);}

    }
  });
var data = {
  labels: Labels,
  series: Series
};

var options = {
  labelInterpolationFnc: function(value) {
    return value[0]
  }
};

var responsiveOptions = [
  ['screen and (min-width: 440px)', {
    chartPadding: 30,
    labelOffset: 100,
    labelDirection: 'explode',
    labelInterpolationFnc: function(value) {
      return value;
    }
  }],
  ['screen and (min-width: 1024px)', {
    labelOffset: 80,
    chartPadding: 20
  }]
];

new Chartist.Pie('.cards-Diamonds-chart', data, options, responsiveOptions);
</script>
</html>