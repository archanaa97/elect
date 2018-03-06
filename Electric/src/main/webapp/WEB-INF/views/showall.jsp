<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<title>show all</title>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body> 
<nav  style="background-color:brown" class="navbar navbar-inverse">
  
  <div class="container-fluid">
  <div class="navbar-header">
  <a class="navbar-brand" href="index"><img class="img-square" src="resources\images\7.png" height="20" width="60"></a>
  </div>
    
    <!-- <ul class="nav navbar-nav">
     <li><a href="index">HOME</a></li>
    <li><a href="Aboutus">About Us</a></li>
    <li><a href="ContactUs">Contact Us</a></li>
    <li><a href="showall">Show All</a></li>
    <li><a href="Product">Product</a></li> 
     <li><a href="Retrieve">Retrieve</a></li> 
    <li><a href="cateogry">Cateogry</a></li> 
    </ul>
    -->
   <!--  <ul class="nav navbar-nav navbar-right">
    
      <li><a href="signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="signin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      
    </ul> -->
    
  </div>
</nav>    
<!-- <div class="container">
<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
<div class="panel-body">
<form ng-submit="addNew()">
<table class="table table-striped table-bordered">
<thead>
<tr>
<th><input type="checkbox" ng-model="selectedAll" ng-click="checkAll()" /></th>
<th>S.NO</th>
<th>NAME</th>
<th>DISCRIPTION</th>
<th>IMAGE</th>
</tr>
</thead>
<tbody>
<tr ng-repeat="personalDetail in personalDetails">
<td>
<input type="checkbox" ng-model="personalDetail.selected"/></td>
<td>
<input type="text" class="form-control" ng-model="personalDetail.S.NO" required/></td>
<td>
<input type="text" class="form-control" ng-model="personalDetail.NAME" required/></td>
<td><input type="text" class="form-control" ng-model="personalDetail.DISCRIPTION" required/></td>
<td><input type="image" class="form-control" ng-model="personalDetail.IMAGE" required/></td>
</tr>
</tbody>
</table>
<div class="form-group">
<input ng-hide="!personalDetails.length" type="button" class="btn btn-danger pull-right" ng-click="remove()" value="Remove">
<input type="submit" class="btn btn-primary addnew pull-right" value="Add New">
</div>
</form>
</div>
</div>
</div>
</div>
</div>
 --><script>
var app = angular.module("myapp", []);
app.controller("ListController",function($scope) {
    $scope.personalDetails = [
        {
            'SNO':'1',
            'NAME':'APPLE TV',
            'DISCRIPTION':'LAPTOP',
            'PRICE':'100000',
            'IMAGE':'resources/images/1.jpg',
            'INFO':'H.264 video up to 1080p, 30 frames per second, High or Main Profile level 4.0 or lower.'
        },
        {
            'SNO':'2',
            'NAME':'sony camera',
            'DISCRIPTION':'camera',
            'PRICE':'15000',
            'IMAGE':'resources/images/2.jpg',
            'INFO':'The 4D AF feature is something functional as this camera can now select the best image among multiple ones.'

            
        },
        {
            'SNO':'3',
            'NAME':'samsung digital watch',
            'DISCRIPTION':'digital watch',
            'PRICE':'5000',
            'IMAGE':'resources/images/3.jpg',
            'INFO':'Samsungs proprietary features eg  Message email Alarm Samsung Pay etc.'
        },
		
        {
            'SNO':'4',
            'NAME':'headphone',
            'DISCRIPTION':'sony ',
            'PRICE':'3500',
            'IMAGE':'resources/images/4.jpg',
            'INFO':'EXTRA BASS for deep punchy sound.High-quality wireless audio with BLUETOOTH technology.'
        },
		
        {
            'SNO':'5',
            'NAME':'Apple laptop',
            'DISCRIPTION':'sony camera',
            'PRICE':'150000',
            'IMAGE':'resources/images/5.jpg',
            'INFO':'13.3 inch diagonal LED backlit display with IPS technology .'
        },
        
        {
            'SNO':'6',
            'NAME':'Fast Track watch',
            'DISCRIPTION':'Watch',
            'PRICE':'4000',
            'IMAGE':'resources/images/6.jpg',
            'INFO':'Band Color Silver Band Material Stainless Steel.'

        },
        
        {
            'SNO':'7',
            'NAME':'IPHONE 6S',
            'DISCRIPTION':'MOBILE',
            'PRICE':'50000',
            'IMAGE':'resources/images/8.jpg',
            'INFO':'Apple iPhone 6s smartphone was launched in September 2015.'
        },
        {
            'SNO':'8',
            'NAME':'SAMSUNG MOBILE',
            'DISCRIPTION':'mobile',
            'PRICE':'10000',
            'IMAGE':'resources/images/9.jpg',
            'INFO':'Dual-SIM support with 4GLTE.5.5 Inch HD  display with Gorilla Glass 4 protection.'
            	
        },
       
		]
        });
</script>
<div class="container" ng-app="myapp" ng-controller="ListController">
	<div ng-controller="ListController" ng-app="myapp">
	
	<form>
	 <h1><center>ALL PRODUCT</center></h1><br/><br/>
    <div class="form-group">
      <div class="input-group">
        
       <!-- <div class="input-group-addon"><i class="fa fa-search"></i></div>  --> 
        <table border=3 align="right">
        	<tr>
        	<td>
        		<input type="text" class="form-control" placeholder="Search here..." ng-model="searchProduct" height="20%" width="10%">
        	</td>
        	</tr>
        </table>
      </div>      
    </div>
  </form>
 
    
 
		<div class="table-responsive">
			<table class="table table-bordered table-striped">
				<thead>
					<th>S.NO.</th>
					<th>Name</th>
					<th>Desc</th>
					<th>Price</th>
					<th>Image</th>
					<th>Info</th>
				</thead>
				
				<tbody>
					<tr ng-repeat="temp in personalDetails | filter:searchProduct">
						<td>{{temp.SNO}}</td>
							<td>{{temp.NAME}}</td>
								<td>{{temp.DISCRIPTION}}</td>
								<td>{{temp.PRICE}}</td>
								<td>{{temp.INFO}}</td>
									<td height="3%" width="2%"><img src="{{temp.IMAGE}}" height="10%" ></td>
									
					</tr>
				</tbody>
			
		</table>
		</div>
		
		
	</div>

</body>
    
       <!-- /*  $scope.addNew = function(personalDetails){
            $scope.personalDetails.push({ 
                'S.NO': personalDetails.S,NO, 
                'NAME': personalDetails.NAME,
                'DISCRIPTION': personalDetails.DISCRIPTION,
                
            });
            $scope.PD = {};
        };
    
        $scope.remove = function(){
            var newDataList=[];
            $scope.selectedAll = false;
            angular.forEach($scope.personalDetails, function(selected){
                if(!selected.selected){
                    newDataList.push(selected);
                }
            }); 
            $scope.personalDetails = newDataList;
        };
    
        $scope.checkAll = function () {
            if (!$scope.selectedAll) {
                $scope.selectedAll = true;
            } else {
                $scope.selectedAll = false;
            }
            angular.forEach($scope.personalDetails, function (personalDetails) {
                personalDetails.selected = $scope.selectedAll;
            });
        };    
}]);

 */ -->
</html>