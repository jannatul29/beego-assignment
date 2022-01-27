<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <title>beego</title>
    <style>
        #nav {
          padding: 10px;
        }
        #nav a {
          font-weight: bold;
          color: #2c3e50;
        }
        #nav a.router-link-exact-active {
          color: #42b983;
        }
        
        a {
        color: #5c79b8;
      }
      
      a:hover {
        color: #80c792;
        text-decoration: none;
      }
      
      .featured-services {
        padding: 20px 0;
      }
      .featured-services .icon-box {
        padding: 20px;
      }
      .featured-services .icon-box-bg {
        background-image: linear-gradient(0deg, #222222 0%, #2f2f2f 50%, #222222 100%);
      }
      .featured-services .icon {
        margin-bottom: 15px;
      }
      .featured-services .icon i {
        color: #5cb874;
        font-size: 42px;
      }
      .featured-services .title {
        font-weight: 700;
        margin-bottom: 15px;
        font-size: 18px;
      }
      .featured-services .title a {
        color: #ffffff;
        transition: 0.3s;
      }
      .featured-services .icon-box:hover .title a {
        color: #5cb874;
      }
      .featured-services .description {
        line-height: 24px;
        font-size: 14px;
      }
      .featured-services .description a {
        color: #ffffff;
      }
      .featured-services .icon-box:hover .description a {
        color: #5cb874;
      }
      .featured-services .descrip {
        line-height: 24px;
        font-size: 14px;
      }
      .featured-services .descrip a {
        color: #5cb874;
      }
      .featured-services .icon-box:hover .descrip a {
        color: #5cb874;
      }
      #p1 {
        font-size: 30px;
        font-weight: bold;
      }
      #p2 {
        font-size: 20px;
        font-weight: bold;
      }
      .responsive {
        max-width: 100%;
        height: auto;
        }
      @media all and (max-width: 200px){
        select {
         width: 100%; max-width: 100%;
        }
      }
      .custom-select {
        border:none;
        border-bottom-style: solid;
        background-color: #ffffff;
        border-width: 1px;
      }



      #pagination {
    display: inline-block;
    vertical-align: middle;
    border-radius: 4px;
    padding: 1px 2px 4px 2px;
    border-top: 1px solid #AEAEAE;
    border-bottom: 1px solid #FFFFFF;
    background-color: #DADADA;
    background-image: -webkit-linear-gradient(top, #DBDBDB, #E2E2E2);
    background-image:    -moz-linear-gradient(top, #DBDBDB, #E2E2E2);
    background-image:     -ms-linear-gradient(top, #DBDBDB, #E2E2E2);
    background-image:      -o-linear-gradient(top, #DBDBDB, #E2E2E2);
    background-image:         linear-gradient(top, #DBDBDB, #E2E2E2);
}
#pagination a, #pagination i {
    display: inline-block;
    vertical-align: middle;
    width: 22px;
    color: #7D7D7D;
    text-align: center;
    font-size: 10px;
    padding: 3px 0 2px 0;
    -webkit-user-select:none;
       -moz-user-select:none;
        -ms-user-select:none;
         -o-user-select:none;
            user-select:none;
}

#pagination a {
    margin: 0 2px 0 2px;
    border-radius: 4px;
    border: 1px solid #E3E3E3;
    cursor: pointer;
    box-shadow: inset 0 1px 0 0 #FFF, 0 1px 2px rgb(102, 102, 102);
    text-shadow: 0 1px 1px #FFF;
    background-color: #E6E6E6;
    background-image: -webkit-linear-gradient(top, #F3F3F3, #D7D7D7);
    background-image:    -moz-linear-gradient(top, #F3F3F3, #D7D7D7);
    background-image:     -ms-linear-gradient(top, #F3F3F3, #D7D7D7);
    background-image:      -o-linear-gradient(top, #F3F3F3, #D7D7D7);
    background-image:         linear-gradient(top, #F3F3F3, #D7D7D7);
}
#pagination i {
    margin: 0 3px 0 3px;
}
#pagination a.current {
    border: 1px solid #E9E9E9;
    box-shadow: 0 1px 1px #999;
    background-color: #DFDFDF;
    background-image: -webkit-linear-gradient(top, #D0D0D0, #EBEBEB);
    background-image:    -moz-linear-gradient(top, #D0D0D0, #EBEBEB);
    background-image:     -ms-linear-gradient(top, #D0D0D0, #EBEBEB);
    background-image:      -o-linear-gradient(top, #D0D0D0, #EBEBEB);
    background-image:         linear-gradient(top, #D0D0D0, #EBEBEB);
}
      
    </style>
  </head>
    <body>
      <nav class="container-fluid navbar navbar-expand-lg navbar-light " id="nav" style="background-color: rgb(204, 58, 14)">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
             <div class="navbar-nav ms-auto">
                    <li herf="#" class="nav-item nav-link" style="color:white ;">PRICING</li>
                    <li href="#" class="nav-item nav-link" style="color:white ;">ABOUT</li>
                    <li href="#" class="nav-link" style="color:white ;">DOCUMENTTATION</li>
                </div>
            </div>
      </nav>
      <section id="featured-services" class="featured-services section-bg">


      
<div class="container">
        <div class="row no-gutters">
            <div class="col-lg-12 col-md-6">
                <div class="icon-box">
                      <div class="container" style="border-style: ridge;">
                        <div class="row no-gutters">
                            <div class="col-lg-6 col-md-6">
                                    <label class="text-muted">Order</label><br>
                                    <select id="order" class="form-select form-select-sm">
                                    <option value="Rand" selected> Random</option>
                                    <option value="Desc">Desc</option>
                                    <option value="Asc">Asc</option>
                                    </select>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                    <label class="text-muted">Type</label><br>
                                    <select id="type" class="form-select form-select-sm">
                                        <option value="jpg,png,gif">All</option>
                                        <option value="jpg,png">Static</option>
                                        <option value="gif">Animated</option>
                                    </select>
                            </div>
                        </div>
                        <br>
                        <div class="row no-gutters">
                            <div class="col-lg-6 col-md-6">
                                <label class="text-muted">Category</label><br>
                                <select id="category_ids" class="form-select form-select-sm">
                                    <option value="" >None</option>
                                     {{range $i,$v := .C}}
                                      <option value="{{$v.Id}}">{{$v.Name}}</option>
                                    {{end}}
                                 </select>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <label class="text-muted">Breed</label><br>
                                <select id="breed" class="form-select form-select-sm">
                                    <option value="" >None</option>
                                    {{range $i,$v := .B}}
                                      <option value="{{$v.Id}}">{{$v.Name}}</option>
                                    {{end}}
                                </select>
                            </div>
                        </div>
                        <br>

                        <div class="row no-gutters" id="images">
                            {{range $i,$v := .F}}
                            <div class="col-lg-4 col-md-6" style="padding-bottom: 10px;">
                                <!-- <img src="{{$v.Url}}" alt="Girl in a jacket" width="400" height="400"> -->
                                <div style="padding-bottom: 10px; background-image: url({{$v.Url}}); background-repeat: no-repeat; height: 400px; background-size: cover;">
                                </div>
                            </div>
                            {{end}}
                        </div>
                        <br>

                        <div class="row no-gutters">
                          <div class="col-lg-4 col-md-6">
                            <div id="pagination" style="display: none;"></div>
                          </div>
                          <div class="col-lg-6 col-md-6">
                          </div>
                        </div>
                        <br>

                        <div class="row no-gutters">
                            <div class="col-lg-6 col-md-6">
                                <label class="text-muted">Per Page</label><br>
                                <select id="limit" class="form-select form-select-sm">
                                    <option value="9">9</option>
                                    <option value="18">18</option>
                                    <option value="80" >80</option>
                                 </select>
                            </div>
                            <div class="col-lg-6 col-md-6">
                              <label></label><br>
                               <button type="button" class="btn btn-primary" id="more"><i class="fas fa-redo" style= "padding: 0px 10px 0px 0px;"></i>MORE</button>
                          </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="/static/js/reload.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="/static/js/code.js"></script>
    </body>
</html>

