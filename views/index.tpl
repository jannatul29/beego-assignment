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
    <link href="/static/css/style.css" rel="stylesheet">
    <title>beego</title>
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
                  <div class="container" style="background-color: rgb(3, 3, 3); text-align: center; color: white;">
                  <div class="row no-gutters" >
                    <div class="col-lg-12 col-md-6" >
                        <h3>IMAGES/SEARCH</h3>
                    </div>
                  </div>
                </div>
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
                               <button type="button" class="btn btn-primary col-12" id="more"><i class="fas fa-redo" style= "padding: 0px 10px 0px 0px;"></i>MORE</button>
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

