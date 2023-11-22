<head>
<style>
.back-img{
   	position: relative;
    width: 1000px;
    height: 500px;
	background-size:cover;
	background-repeat:no-repeat;
}
</style>
</head>
<body>

<div  class="container-fluid" style="height:10px; background-color: #757575;"></div>

<div class="container-fluid p-3">
	<div class="row">
		<div class="col-md-3">
			<h3>Genex</h3>
		</div>
		<div class="col-md-6">	
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>

	<div class="col-md-3">
		<a href="" class="btn btn"style="background-color: #e3f2fd;">Login</a> 
		<a href="" class="btn btn-primary">Register</a>
	</div>
	</div>
</div>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" style="width:70px;" href="#"><i class="fas fa-house"></i> Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">

        <li class="nav-item active">
        <a class="nav-link"  href="#"><i class="fa-solid fa-address-card ml-2"></i>About us </a>
      </li>
      <li class="nav-item active dropdown">
        <a class="nav-link dropdown-toggle"  href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa-solid fa-computer"></i> Items
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Category 1</a>
          <a class="dropdown-item" href="#">Category 2</a>
          <a class="dropdown-item" href="#">Category 3</a>
          <a class="dropdown-item" href="#">Category 4</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">methana monada?</a>
        </div>
      </li>
      

      
      <li class="nav-item active ">
        <a class="nav-link" style="width:70px;" href="#"><i class="fa-solid fa-cart-shopping"></i>   Cart</a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link disabled" href="#"><i class="fa-solid fa-handshake"></i>Services</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <button class="btn btn-light my-2 my-sm-0 " type="submit"><i class="fa-regular fa-user"></i> Profile</button>  
      <button class="btn btn-light my-2 my-sm-0 ml-2" type="submit"><i class="fa-solid fa-phone-volume"></i> Contact us</button>
    </form>
  </div>
</nav>


<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
    <div class="container-fluid back-img">
      <img class="d-block w-100" src="img/cp3.webp" alt="First slide">
    </div>
    </div>
    <div class="carousel-item">
    <div class="container-fluid back-img">
      <img class="d-block w-100" src="img/cp3.jpg" alt="Second slide">
    </div>
    </div>
    <div class="carousel-item">
    <div class="container-fluid back-img">
      <img class="d-block w-100" src="img/cp1.jpg" alt="Third slide">
    </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<br><br>
</body>