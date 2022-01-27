var x = document.getElementById("more");
      var y = document.getElementById("pagination");
      $(document).on('change', 'select', function () {
        let order = $('#order').val();
        let category_ids = $('#category_ids').val();
        let breed_id = $('#breed').val();
        let limit = $('#limit').val();
        let mime_types = $('#type').val();
        if (order === "Rand") {
            x.style.display = "block";
            y.style.display = "none";
        } else {
            x.style.display = "none";
            y.style.display = "block";
        }
        $.ajax({
          type: 'GET',
          url: 'http://localhost:8080/data',
          data: {
            "order": order,
            "category_ids": category_ids,
            "breed_id": breed_id,
            "limit": limit,
            "mime_types": mime_types
          },
          success: function (response) {
            console.log(order);
            console.log(breed_id);
            console.log(limit);
            let data = response;
            let html_data = "";
            $.each(data, function (key, value) {
              html_data += '<div class="col-md-4" style="padding-bottom: 10px;">',
                //html_data += '<img src="' + value.url + '" width="400" height="400"></img>',
                  html_data += '<div style="padding-bottom: 10px; background-image: url(' + value.url + '); background-repeat: no-repeat; height: 400px; background-size: cover;">',
                  html_data += '</div>',               
              html_data += '</div>'
            })
            $("#images").html(html_data);
          },
          error: function (error) {
            console.log(error)
          }
        })
      });

      var page = 0;
      $(document).on('click', 'button', function () {
        let order = $('#order').val();
        let category_ids = $('#category_ids').val();
        let breed_id = $('#breed').val();
        let limit = $('#limit').val();
        let mime_types = $('#type').val();
        page = page+1;
        $.ajax({
          type: 'GET',
          url: 'http://localhost:8080/data',
          data: {
            "order": order,
            "category_ids": category_ids,
            "breed_id": breed_id,
            "limit": limit,
            "mime_types": mime_types,
            "page": page,

          },
          success: function (response) {
            console.log(order);
            console.log(breed_id);
            console.log(limit);
            console.log(page);
            let data = response;
            let html_data = "";
            $.each(data, function (key, value) {
              html_data += '<div class="col-md-4" style="padding-bottom: 10px;">',
                //html_data += '<img src="' + value.url + '" width="400" height="400"></img>',
                  html_data += '<div style="padding-bottom: 10px; background-image: url(' + value.url + '); background-repeat: no-repeat; height: 400px; background-size: cover;">',
                  html_data += '</div>',               
              html_data += '</div>'
            })
            $("#images").html(html_data);
          },
          error: function (error) {
            console.log(error)
          }
        })
      });





      var Pagination = {

code: '',

// --------------------
// Utility
// --------------------

// converting initialize data
Extend: function(data) {
    data = data || {};
    Pagination.size = data.size || 300;
    Pagination.page = data.page || 1;
    Pagination.step = data.step || 3;
},

// add pages by number (from [s] to [f])
Add: function(s, f) {
    for (var i = s; i < f; i++) {
        Pagination.code += '<a onclick="pg('+i+');" id="page'+i+'">' + i + '</a>';
    }
},

// add last page with separator
Last: function() {
    Pagination.code += '<i>...</i><a>' + Pagination.size + '</a>';
},

// add first page with separator
First: function() {
    Pagination.code += '<a>1</a><i>...</i>';
},



// --------------------
// Handlers
// --------------------

// change page
Click: function() {
    Pagination.page = +this.innerHTML;
    Pagination.Start();
},

// previous page
Prev: function() {
    Pagination.page--;
    if (Pagination.page < 1) {
        Pagination.page = 1;
    }
    Pagination.Start();
},

// next page
Next: function() {
    Pagination.page++;
    if (Pagination.page > Pagination.size) {
        Pagination.page = Pagination.size;
    }
    Pagination.Start();
},



// --------------------
// Script
// --------------------

// binding pages
Bind: function() {
    var a = Pagination.e.getElementsByTagName('a');
    for (var i = 0; i < a.length; i++) {
        if (+a[i].innerHTML === Pagination.page) a[i].className = 'current';
        a[i].addEventListener('click', Pagination.Click, false);
    }
},

// write pagination
Finish: function() {
    Pagination.e.innerHTML = Pagination.code;
    Pagination.code = '';
    Pagination.Bind();
},

// find pagination type
Start: function() {
    if (Pagination.size < Pagination.step * 2 + 6) {
        Pagination.Add(1, Pagination.size + 1);
    }
    else if (Pagination.page < Pagination.step * 2 + 1) {
        Pagination.Add(1, Pagination.step * 2 + 4);
        Pagination.Last();
    }
    else if (Pagination.page > Pagination.size - Pagination.step * 2) {
        Pagination.First();
        Pagination.Add(Pagination.size - Pagination.step * 2 - 2, Pagination.size + 1);
    }
    else {
        Pagination.First();
        Pagination.Add(Pagination.page - Pagination.step, Pagination.page + Pagination.step + 1);
        Pagination.Last();
    }
    Pagination.Finish();
},



// --------------------
// Initialization
// --------------------

// binding buttons
Buttons: function(e) {
    var nav = e.getElementsByTagName('a');
    nav[0].addEventListener('click', Pagination.Prev, false);
    nav[1].addEventListener('click', Pagination.Next, false);
},

// create skeleton
Create: function(e) {

    var html = [
        '<a>&#9668;</a>', // previous button
        '<span></span>',  // pagination container
        '<a>&#9658;</a>'  // next button
    ];

    e.innerHTML = html.join('');
    Pagination.e = e.getElementsByTagName('span')[0];
    Pagination.Buttons(e);
},

// init
Init: function(e, data) {
    Pagination.Extend(data);
    Pagination.Create(e);
    Pagination.Start();
}
};



/* * * * * * * * * * * * * * * * *
* Initialization
* * * * * * * * * * * * * * * * */

var init = function() {
Pagination.Init(document.getElementById('pagination'), {
    size: 30, // pages size
    page: 1,  // selected page
    step: 3   // pages before and after current
});
};

document.addEventListener('DOMContentLoaded', init, false);


      function pg(value){
        let order = document.getElementById("order").value;
        let category_ids = document.getElementById("category_ids").value;
        let breed_id = document.getElementById("breed").value;
        let limit = document.getElementById("limit").value;
        let mime_types = document.getElementById("type").value;
        let page2 = value;
        console.log(page2);
        $.ajax({
          type: 'GET',
          url: 'http://localhost:8080/data',
          data: {
            "order": order,
            "category_ids": category_ids,
            "breed_id": breed_id,
            "limit": limit,
            "mime_types": mime_types,
            "page": page2,

          },
          success: function (response) {
            console.log(order);
            console.log(breed_id);
            console.log(limit);
            
            let data = response;
            let html_data = "";
            $.each(data, function (key, value) {
              html_data += '<div class="col-md-4" style="padding-bottom: 10px;">',
                //html_data += '<img src="' + value.url + '" width="400" height="400"></img>',
                  html_data += '<div style="padding-bottom: 10px; background-image: url(' + value.url + '); background-repeat: no-repeat; height: 400px; background-size: cover;">',
                  html_data += '</div>',               
              html_data += '</div>'
            })
            $("#images").html(html_data);
          },
          error: function (error) {
            console.log(error)
          }
        })
        
    }
//console.log(Pagination.page);

