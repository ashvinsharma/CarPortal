<jsp:include page="header.jsp">
    <jsp:param name="title" value="Homepage"/>
</jsp:include>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="http://avtocentr.com.ua/uploads/gallery_photo/photo/0021/01.jpg" alt="lite services" width="1200" height="700">
            <div class="carousel-caption">
                <h3>Hatchback:budget mein hai</h3>
                <p>chinta mat kr</p>
            </div>      
        </div>
        <div class="item">
            <img src="http://fleet.com.pl/fleetmarket/wp-content/uploads/sites/2/2016/10/Fiat_Tipo_Sedan.jpg" alt="Chicago" width="1200" height="700">
            <div class="carousel-caption">
                <h3>Sedan</h3>
                <p>Chalo jeb dheeli karo</p>
            </div>      
        </div>
        <div class="item">
            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Lexus_GS_450h_F_Sport_%E2%80%93_Frontansicht%2C_17._Juni_2012%2C_D%C3%BCsseldorf.jpg/1200px-Lexus_GS_450h_F_Sport_%E2%80%93_Frontansicht%2C_17._Juni_2012%2C_D%C3%BCsseldorf.jpg" alt="Los Angeles" width="1200" height="700">
            <div class="carousel-caption">
                <h3>Luxury Segment</h3>
                <p>Bhool hi jao !</p>
            </div>      
        </div>
    </div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<div class="container text-center">
    <h3> The CAR PORTAL </h3>
    <p><em> We love to serve you!</em></p>
    <p> Book or hire cars whenever , wherever required 
        Easiest and the fastest way to rent the vehicle of your choice</p><br>
    <div class="row">
        <div class="col-sm-4">
            <p class="text-center"><strong>Lite</strong></p><br>
            <a href="#lite" data-toggle="collapse">
                <img src="https://3.imimg.com/data3/BW/CK/MY-8679314/sedan-car-volkswagen-new-beetal-500x500.jpg"  class="img-circle car"  alt="lite cars" width="255" height="255">
            </a>
            <div id="lite" class="collapse">
                <p>hello kem cho?</p>
                <p>maja maa!</p>
            </div>
        </div>
        <div class="col-sm-4">
            <p class="text-center"><strong>Pro</strong></p><br>
            <a href="#pro" data-toggle="collapse">
                <img src="http://hondanelspruit.co.za/wp-content/uploads/2016/08/2-500x500.jpg "  class="img-circle car" alt="pro cars" width="255" height="255">  
            </a>
            <div id="pro" class="collapse">
                <p>hello kem cho?</p>
                <p>maja maa!</p>
            </div>
        </div>
        <div class="col-sm-4">
            <p calss="text-center"><strong>Gold</strong></p><br>
            <a href ="#gold" data-toggle="collapse">
                <img src="https://static.wixstatic.com/media/85f891_f1d4704f99d045179822ae9102027efa~mv2_d_6000_4000_s_4_2.jpg/v1/fill/w_500,h_500,al_c,q_90/file.jpg" class="img-circle car" alt="gold cars" width="255" height="255"> 
            </a>
            <div id="gold" class="collapse">
                <p>hello kem cho?</p>
                <p>maja maa!</p>
            </div>

        </div>
    </div>
</div>
<br><br>
<style>
#googleMap {
    width: 100%; /* Span the entire width of the screen */
    height: 400px; /* Set the height to 400 pixels */
   
}
</style>
<div id="googleMap"></div>
<script>
function myMap() {
var myCenter = new google.maps.LatLng(26.9363, 75.932);
var mapProp = {center:myCenter, zoom:12, scrollwheel:false, draggable:true, mapTypeId:google.maps.MapTypeId.ROADMAP};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
var marker = new google.maps.Marker({position:myCenter});
marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB7szX5X8cVnVtGNJlxrCfiOoKkDJENF1M&callback=myMap"></script>


<div>

    <jsp:include page="footer.jsp"/> 








