var heatmapInstance;
$(document).ready(function (e) {

  const date = new Date();

  function getYear() {
    let year = date.getFullYear() ;
    return year;
  }

  function getMonth() {
    let month = date.getMonth() + 1;
    return month;
  }
  function getWeek() {
    let day = date.getDate();
    if (day >= 1 && day <= 7)
      return 1;
    else if (day >= 8 && day <= 14)
      return 2;
    else if (day >= 15 && day <= 21)
      return 3;
    else if (day > 22)
      return 4;
  }
  function getDay() {
    let day = date.getDate();
    return day;
  }
  function getHour() {
    let hour = date.getHours();
    return hour;
  }



  $('#ch6_y_btn input').prop('checked', true);

  var myVarsetInterval = '';
  $("#image_src_id").show();
  $("#my_camera").hide();
  Webcam.set({
    width: screen.width - 90,
    height: screen.height - 150,
    image_format: 'jpeg',
    jpeg_quality: 90,
    onTick: function () { },
    onSave: function () { },
    onCapture: function () { },
    debug: function () { },
    onLoad: function () {
    }
  });


  /*****************************************************************************************/
  /* ***** Get historical data from API and inert to database*/
  

  function getHistoricalData() {


    let image = $("#image_src_id").attr("src");

    let obj = { flag: 0, data: image };
    let myJSON = JSON.stringify(obj);

    let form_data = new FormData();
    form_data.append('json', myJSON);

    $.ajax({
      type: 'POST',
      url: "/ipsmheat/assets/php/getFaces.php",
      data: form_data,
      contentType: false,
      processData: false,
      success: function (data) {
         json = JSON.parse(data);
          insertPointsToDatabase(json.points);
      }
    });
  }

 


  function insertPointsToDatabase(json) {

      data = JSON.stringify(json);
     // console.log(data);


    let form_data = new FormData();

    form_data.append('year', getYear());
    form_data.append('month', getMonth());
    form_data.append('week', getWeek());
    form_data.append('day', getDay());
    form_data.append('hour', getHour());
    form_data.append('points',data);


 
  

    $.ajax({
      type: 'POST',
      url: "/ipsm/assets/php/savePositionsToDatabase.php",
      data: form_data,
      contentType: false,
      processData: false,
      success: function (responce) {
        // console.log(responce);
      }
    });
  }


  function take_snapshot() {
    // take snapshot and get image data
    Webcam.snap(function (data_uri) {

      var obj = { flag: 1, data: data_uri };
      var myJSON = JSON.stringify(obj);

      $("#image_src_id").attr("src", data_uri);
      let form_data = new FormData();
      form_data.append('json', myJSON);
      $.ajax({
        type: 'POST',
        url: "/ipsmfilter/assets/php/getFaces.php",
        data: form_data,
        contentType: false,
        processData: false,
        success: function (data) {
          data = JSON.parse(data);
          // console.log(data);
          $("#image_container_face_id").empty()
        }
      });

    });
  }

  $("#play").click(function (e) {

    $('#content_body').addClass('active');
    Webcam.attach('#my_camera');

    Webcam.on('load', function () {
      // library is loaded
      myVarsetInterval = setInterval(function () {
        /// call your function here
        take_snapshot();
      }, 800);

      var minutes = 120;
      var interval = 1000 * 60 * minutes;
      setInterval(getHistoricalData, interval);


    });


  });




  /******************************************************************************************/
  /* ***** Generate and Draw charts*/

  

  function pushDataToChart6(flag, year, month, week, day) {
    let form_data = new FormData();

    form_data.append("flag", flag);
    form_data.append("year", year);
    form_data.append("month", month);
    form_data.append("week", week);
    form_data.append("day", day);


    $.ajax({
      type: 'POST',
      url: "/ipsm/assets/php/getPositionsData.php",
      data: form_data,
      contentType: false,
      processData: false,
      success: function (responce) {

        var config = {
            container: document.getElementById('heatmapContainer'),
            radius: 120,
            maxOpacity: .5,
            minOpacity: 0,
            blur: .75,
            gradient: {

              '.5': 'blue',
              '.8': 'yellow',
              '.95': 'red'
            }
          };

         $('.heatmap-canvas').remove();
         heatmapInstance = h337.create(config);


      var data = {
        max: responce.max,
        min: 0,
        data: responce.positions
      };
        // heatmapInstance.setDataMax(12000);
        heatmapInstance.setData(data);

        

       }

    });




  }


  /******************************************************************************************/
  /* ***** Main functions*/

  function chartComboBoxStatus(chart_number, id) {
    $('.chart' + chart_number + ' select').prop("selectedIndex", 0);
    if(id == "ch" + chart_number + "_y_btn"){
      $("#ch" + chart_number + "_y").removeClass('disabled');
    }
    else if (id == "ch" + chart_number + "_mo_btn") {
      $("#ch" + chart_number + "_y").removeClass('disabled');
      $("#ch" + chart_number + "_mo").removeClass('disabled');
    } else if (id == "ch" + chart_number + "_we_btn") {
       $("#ch" + chart_number + "_y").removeClass('disabled');
      $("#ch" + chart_number + "_mo").removeClass('disabled');
      $("#ch" + chart_number + "_we").removeClass('disabled');
    } else {
      $("#ch" + chart_number + "_y").removeClass('disabled');
      $("#ch" + chart_number + "_mo").removeClass('disabled');
      $("#ch" + chart_number + "_da").removeClass('disabled');
    }
  }

 

  $('.ch6.radio-btn').click(function (e) {
 
    var id = $(this).attr('id');
    $(this).parents('.controls').children('.combo-section').children('select').addClass('disabled');
    chartComboBoxStatus(6, id);

  })

$("#ch6_y").change(function (e) {
    let year = $(this).val();
    pushDataToChart6("year", year, 0, 0, 0);
  })

   $("#ch6_mo").change(function (e) {
    if ($("#ch6_y").val() == "all") {
      $("#ch6_y").prop("selectedIndex", 1)
    }
    let year = $("#ch6_y").val();
    let month = $("#ch6_mo").val();
    console.log(year);
    pushDataToChart6("month", year, month, 0, 0);
  })

  $("#ch6_we").change(function (e) {
     if ($("#ch6_y").val() == "all") {
      $("#ch6_y").prop("selectedIndex", 1)
    }
    let year = $("#ch6_y").val();
    let month = $("#ch6_mo").val();
    let week = $("#ch6_we").val();
    pushDataToChart6("week", year, month, week, 0);
  })

  $("#ch6_da").change(function (e) {
     if ($("#ch6_y").val() == "all") {
      $("#ch6_y").prop("selectedIndex", 1)
    }
    let year = $("#ch6_y").val();
    let month = $("#ch6_mo").val();
    let day = $("#ch6_da").val();
    pushDataToChart6("day", year, month, 0, day);
  })

})