<html>
<head>
	<meta charset="utf-8"/> 
	<title>MAVEN-SSM</title>
</head>
<body>
id:<input type="text" id="id">
<button id="btn" onclick="findByNameUser()">press</button>
<div id="box"></div>
<script type="text/javascript">
	var un = document.getElementById("btn");
	var id=document.getElementById("id");
	function findByNameUser(){
	var xmlHttp = null;
	
	if(window.XMLHttpRequest){
		xmlHttp = new XMLHttpRequest();
	}else{
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	xmlHttp.onreadystatechange = function(){
		if(xmlHttp.status == 200 && xmlHttp.readyState == 4){
			var box = document.getElementById("box");
			var user = eval("("+xmlHttp.responseText +")");
			
			box.innerHTML += "id=" + user["id"] + ", name=" + user["name"] + ", gender=" + user["gender"]
			+ ", relationship=" + user["relationship"] + ", age=" + user["age"]
			+ ", birth=" + user["birth"] + ", height=" + user["height"] + ", weight="
			+ user["weight"] + ", nation=" + user["nation"] + ", bloodType=" + user["bloodType"]
			+ ", health=" + user["health"] + ", nativePlace=" + user["nativePlace"]
			+ ", tel=" + user["tel"] + ", email=" + user["email"] + ", company=" + user["company"]
			+ ", marry=" + user["marry"] + ", location=" + user["location"] + ", salary="
			+ user["salary"] + ", hobby=" + user["hobby"] + ", city=" + user["city"] + "<br/>";
		}
	}

	xmlHttp.open("get", "findById?id="+id.value, true);
	xmlHttp.send();
}

</script>	
</body>
</html>