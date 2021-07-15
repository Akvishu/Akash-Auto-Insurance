<!DOCTYPE html>
<html>
    <head>
        <title>Akash Auto Insurance</title>
        <link rel="icon" href="resource/autoinsurance-icon.png"/>
        
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
        
        <!-- AOS css and JS -->
        <link rel="stylesheet" href="resource/aos/aos.css">
        <script src="resource/aos/aos.js"></script>
        <!-- AOS css and JS END-->

        <!-- fontawesome -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!-- fontawesome END -->

        <!-- Lightbox CSS & Script -->
        <script src="resource/lightbox/ekko-lightbox.js"></script>
        <link rel="stylesheet" href="resource/lightbox/ekko-lightbox.css"/>

        

        <!-- custom css-->
        <link rel="stylesheet" href="resource/custom.css"/>
        <!-- custom css END-->

        <meta name="author" content="Rahul Chauhan"/>
        <meta name="description" content="This is a Auto Insurance website"/>
        <meta name="keywords" content="best Insurance comapny in noida"/>
    </head>
    <body>
    	<!-- Code for message receiving  -->
		<%
			String m=(String)session.getAttribute("msg");
			if(m!=null){
		%>
			<div class="alert alert-danger text-center" role="alert">
			  <%=m %>
			</div>
		<%
			session.setAttribute("msg",null);
			}
		%>
		
		<%
			String u_email=(String)session.getAttribute("u_email");
			String u_name=(String)session.getAttribute("u_name");
			if(u_email!=null){
		%>
        <nav class="navbar navbar-expand-sm sticky-top bg-light">
            <a class="navbar-brand c-font" href="">
              <img class="navbar-brand c-font" src='resource/autoinsurance-icon.png' width="30px"/><span class="text-danger font-weight-bold ">Auto</span><span class="text-muted">Insurance</span>
            </a>
            <button class="navbar-toggler bg-light" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <!-- <span class="navbar-toggler-icon text-dark"> <i class="fas fa-sort-down"></i> </span> -->
                <span class="fa fa-bars"></span> Menu
            </button>
            <div class="collapse navbar-collapse " id="collapsibleNavbar"  >
              <ul class="navbar-nav mx-auto ">
                <li class="nav-item">
                  <a class="nav-link text-secondary" href="index.jsp">HOME</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-secondary" href="UserHome.jsp">Profile</a>
                </li>
                <li class="nav-item">
                	<label class="nav-link"> 
                	Welcome: <b><%=u_name %></b> 
                	<img src='GetPhoto?email=<%=u_email%>&type=user' height='30'/>
                	</label>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-secondary" href="UserInsurance.jsp">Insurance</a>
                </li> 
                <li class="nav-item">
                  <a class="nav-link text-secondary" href="Logout">Logout</a>
                </li>    
              </ul>
              <div >
                  <a class="text-danger h5 mr-3" href="tel:+91-6306732652">CALL US TODAY: +91-6306732652</a>
              </div>
            </div>
        </nav>
        <%}else{ %>
        <nav class="navbar navbar-expand-sm sticky-top bg-light">
            <a class="navbar-brand c-font" href="">
              <img src='resource/autoinsurance-icon.png' width="30px"/> <span class="text-danger font-weight-bold ">Auto</span><span class="text-muted">Insurance</span>
            </a>
            <button class="navbar-toggler bg-light" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <!-- <span class="navbar-toggler-icon text-dark"> <i class="fas fa-sort-down"></i> </span> -->
                <span class="fa fa-bars"></span> Menu
            </button>
            <div class="collapse navbar-collapse " id="collapsibleNavbar"  >
              <ul class="navbar-nav mx-auto ">
                <li class="nav-item">
                  <a class="nav-link text-secondary" href="index.jsp">HOME</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-secondary" href="" data-toggle="modal" data-target="#adminModal" >Admin</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-secondary" href="Company.jsp">Company</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-secondary" href="" data-toggle="modal" data-target="#signInModal">User-Sign In</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-secondary" href="" data-toggle="modal" data-target="#signUpModal">User-Sign Up</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-secondary" href="contact.jsp">CONTACT</a>
                </li>    
              </ul>
              <div >
                  <a class="text-danger h5 mr-3" href="tel:+91-6306732652">CALL US TODAY: +91-6306732652</a>
              </div>
            </div>
        </nav>
        <%} %>
        <section class="c-banner text-white">
            <div class="container">
              <div class="row align-items-center" >
                <div class="col-sm-8">
                  <h1>Accidents Happen. <br/> Be Insured & Be Assured.</h1>
                  <p>
                    <i class="fas fa-check"></i>
                    Very low payment option available
                    <br/>
                    <i class="fas fa-check"></i>
                    Get low quote for the coverage you need
                  </p>
                </div>
                <div class="col-sm-4 bg-danger text-center p-4" data-aos="fade-left" data-aos-duration="1000">
                    <h1>Search Policies</h1>
                    <form action='SearchPolicy.jsp' method="post" >
                      	<b style="font-size:25px;"">Car</b> <input type="radio" name="category" value='Car' checked/>
        				<b style="font-size:25px;""> Bike </b><input type="radio" name="category" value='Bike' /> <br/><br/>
                      	<button class="btn btn-dark w-100 p-3 my-2" name='submit'  type="submit">Search</button>
                    </form>
                </div>
              </div>
            </div>
        </section>
        <section class="c-card">
          <div class="container">
            <div class="row">
              <div class="col-sm-4">
                <div class="card">
                  <i class="far fa-thumbs-up"></i>
                  <h3>Free & Easy To Use</h3>
                  <p>We insure your life.<br>24/7 Online on Life.</p>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="card">
                  <i class="far fa-clock"></i>
                  <h3>Save Time & Money</h3>
                  <p>We are providing best and modern equipment.</p>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="card">
                  <i class="far fa-file-alt"></i>
                  <h3>No Obligation Quote</h3>
                  <p>Taking care of what's important.The power to help you succeed.</p>
                </div>
              </div>
            </div>
          </div>
        </section>
        <section class="my-4">
          <div class="container">
            <div class="row align-items-center">
              <div class="col-md-6">
                <img class="img-fluid" src="resource/image1.jpg"" alt="" >
              </div>
              <div class="col-md-6">
                  <h2 class="text-uppercase">Pay Less & Get More</h2>
                  <p class="text-justify">
                    Very low payment option available. Very low payment option available Very low payment option available Very low payment option available Very low payment option available.
                    Very low payment option available. Very low payment option available Very low payment option available Very low payment option available Very low payment option available
                  </p>
              </div>
            </div>
          </div>
        </section>
        <section class="container-fluid my-4 c-success ">
            <div class="container py-4">
              <div class="row text-center">
                <div class="col-sm-4" data-aos="fade-up" data-aos-delay="100" data-aos-duration="1000">
                  <img src="resource/ak1.jpeg" alt="" />
                  <p class="small">Software Engineer <br>Java Developer .</p>
                  <h5 class="text-danger text-uppercase">Akash Kumar</h5>
                </div>
                <div class="col-sm-4" data-aos="fade-up" data-aos-delay="300" data-aos-duration="1000">
                  <img src="resource/Laxmi.jpeg" alt="" />
                  <p class="small">Senior Software Engineer<br>Software Developer.</p>
                  <h5 class="text-danger text-uppercase">Laxmi Sharma</h5>
                </div>
                <div class="col-sm-4" data-aos="fade-up"data-aos-delay="500" data-aos-duration="1000">
                  <img src="resource/neeraj.jpeg" alt="" />
                  <p class="small"> Senior Software Engineer<br>Software Tester</p>
                  <h5 class="text-danger text-uppercase">Neeraj Vishwakarma</h5>
                </div>
              </div>
            </div>
        </section>
        <section class="my-4">
          <div class="container">
            <div class="row align-items-center">
              <div class="col-md-6">
                  <h2 class="text-uppercase">Quality Insurance Leads</h2>
                  <p class="text-justify">
	                  All savings provided by insurers as per IRDAI approved insurance plans. Standard T& C apply.
					
					Actual time for transaction may vary subject to additional data requirements and operational processes.
					
					Policybazaar Insurance Brokers Private Limited (formerly known as Policybazaar Insurance Web Aggregator Private Limited |</p>
              </div>
              <div class="col-md-6">
                <img class="img-fluid" src="resource/image1.jpg"" alt="" >
              </div>
            </div>
          </div>
        </section>
        <section class="my-4">
          <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ul class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1" ></li>
              <li data-target="#myCarousel" data-slide-to="2"></li>
            </ul>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="resource/slide1.jpg" class="w-100" >
                <div class="carousel-caption">
                  <h3>Image 1</h3>
                </div>   
              </div>
              <div class="carousel-item">
                <img src="resource/slide2.jpg" class="w-100" >
                <div class="carousel-caption">
                  <h3>Image 2</h3>
                </div>    
              </div>
              <div class="carousel-item">
                <img src="resource/slide3.jpg" class="w-100" >
                <div class="carousel-caption">
                  <h3>Image 3</h3>
                </div>   
              </div>
            </div>
            <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
              <!-- <span class="carousel-control-prev-icon"></span> -->
              <i class="fas fa-arrow-left text-danger"></i>
            </a>
            <a class="carousel-control-next" href="#myCarousel" data-slide="next">
              <span class="carousel-control-next-icon"></span>
            </a>
          </div>
        </section>
        <section class="container-fluid jumbotron  my-4 ">
            <div class="container">
              <h1 class="text-center">Photo Gallery</h1>
              <div class="row">
                <div class="col-sm-4">
                  <a href="resource/person1.jpg" data-toggle="lightbox" data-gallery="example-gallery">
                    <img src="resource/person2.jpg" class="img-fluid" alt=""/>
                  </a>
                </div>
                <div class="col-sm-4">
                  <a href="resource/person2.jpg" data-toggle="lightbox" data-gallery="example-gallery">
                    <img src="resource/akash.jpeg" class="img-fluid" alt=""/>
                  </a>
                </div>
                <div class="col-sm-4">
                  <a href="resource/person3.jpg" data-toggle="lightbox" data-gallery="example-gallery">
                    <img src="resource/akash2.jpg" class="img-fluid" alt=""/>
                  </a>
                </div>
                <!-- Images do not visible on page but in gallery slider (lightbox) -->
                <div class="col-sm">
                  <a href="resource/image1.jpg" data-toggle="lightbox" data-gallery="example-gallery">
                  </a>
                </div>
                <div class="col-sm">
                  <a href="resource/image1.jpg" data-toggle="lightbox" data-gallery="example-gallery">
                  </a>
                </div>
              </div>
            </div>
            
        </section>
       <footer class="bg-dark p-4">
          <p class="text-white">
            Design by <a href="https://instagram.com/akash_kumar_44" target="_blank">Akash Kumar</a> &copy; Reights reserved
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Social Media: 
            <a href="https://facebook.com/100022892142466"><i class="fab fa-facebook"></i></a>
            &nbsp;
            <a href="https://instagram.com/akash_kumar_44"><i class="fab fa-instagram"></i></a>
               &nbsp;
                <a href="https://www.linkedin.com/in/akash-kumar-97730a1ab"><i class="fab fa-linkedin"></i></a>
             &nbsp;
            <a href="https://www.youtube.com/channel/UCFLTWTaz4IlzhRKWC0Qkwpg"><i class="fab fa-youtube"></i></a>
             &nbsp;
              <a href="https://twitter.com/Akashku75368933?s=08"><i class="fab fa-twitter"></i></a>
          </p>
        </footer>

        <a id="myTopBtn"><i class="fas fa-chevron-circle-up display-4 text-danger"></i></a>

        <!-- Modal Admin login code -->
        <div class="modal fade" id="adminModal"  aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header bg-danger text-white">
                <h3 class="modal-title" >Admin Login</h3>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form action="AdminLogin" method="post">
                  <div class="form-group">
                    <label for="email">Admin Email ID:</label>
                    <input type="text" class="form-control" placeholder="Enter admin email id" id="email" name="email" required>
                  </div>
                  <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" placeholder="Enter password" id="pwd" name="password" required>
                  </div>
                  <button type="submit" class="btn btn-primary">Login</button>
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              </div>
            </div>
          </div>
        </div>
        <!-- Modal Sign IN code -->
        <div class="modal fade" id="signInModal"  aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header bg-primary text-white">
                <h3 class="modal-title" >User Login</h3>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form action="UserLogin" method="post">
                  <div class="form-group">
                    <label for="email">User Email ID:</label>
                    <input type="email" class="form-control" placeholder="Enter User email id" id="email" name="email" required>
                  </div>
                  <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" placeholder="Enter password" id="pwd" name="password" required>
                  </div>
                  <button type="submit" class="btn btn-primary">Login</button>
                </form>
                <a href='ForgetPassword.jsp'>Forget Password?</a>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              </div>
            </div>
          </div>
        </div>
        <!-- Modal Sign UP code -->
        <div class="modal fade" id="signUpModal"  aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header bg-success text-white">
                <h3 class="modal-title" >User Registration</h3>
                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form action="UserRegister" method="post" enctype="multipart/form-data">
                  <div class="form-group">
                    <label for="email">User Email ID:</label>
                    <input type="email" class="form-control" placeholder="Enter email id" id="email" name="email" required>
                  </div>
                  <div class="form-group">
                    <label for="email">User Name:</label>
                    <input type="text" class="form-control" placeholder="Enter name" id="name" name="name" required>
                  </div>
                  <div class="form-group">
                    <label for="email">User Phone:</label>
                    <input type="text" class="form-control" placeholder="Enter Phone" id="phone" name="phone" required>
                  </div>
                  <div class="form-group">
                    <label for="email">User Address:</label>
                    <textarea rows='3' class="form-control" placeholder="Enter Address" name="address" required></textarea>
                  </div>
                  <div class="form-group">
                    <label for="email">User Photo:</label>
                    <input type="file" class="form-control" name="photo" required>
                  </div>
                  <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" placeholder="Enter password" id="pwd" name="password" required>
                  </div>
                  <button type="submit" class="btn btn-primary">Register</button>
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              </div>
            </div>
          </div>
        </div>
    </body>
    <script>
      AOS.init();

      //script for light box
      $(document).on('click', '[data-toggle="lightbox"]', function(event) {
          event.preventDefault();
          $(this).ekkoLightbox();
      });

      //Script for Scroll to Top button for hide and show
      $(window).scroll(function() {
          if ($(this).scrollTop()) {
              $('#myTopBtn').fadeIn();
          } else {
              $('#myTopBtn').fadeOut();
          }
      });
      //script for scroll to top
      $("#myTopBtn").click(function () {
        $("html, body").animate({scrollTop: 0}, 1000);
      });

      
    </script>
</html>