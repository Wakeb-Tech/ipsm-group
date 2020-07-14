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

  // $('#ch3_mo_btn input').prop('checked', true);
  $('#ch4_y_btn input').prop('checked', true);
  // $('#ch4_mo_btn input').prop('checked', true);

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
      url: "/ipsmcar/assets/php/getData.php",
      data: form_data,
      contentType: false,
      processData: false,
      success: function (data) {
         json = JSON.parse(data);
          // console.log(json);
          insertToDatabase(json);
      }
    });
  }

  function insertToDatabase(json) {

    let form_data = new FormData();

    form_data.append('year', getYear());
    form_data.append('month', getMonth());
    form_data.append('week', getWeek());
    form_data.append('day', getDay());
    form_data.append('hour', getHour());

    for (const values of json.historical) {
      switch (values.type) {
        case "cars":
          form_data.append('count', values.value);
          break;
        default:
          break;
      }
    }

    $.ajax({
      type: 'POST',
      url: "/ipsmcar/assets/php/saveToDatabase.php",
      data: form_data,
      contentType: false,
      processData: false,
      success: function (responce) {
        console.log('saved');
      }
    });
  }


 


  /******************************************************************************************/
  /* ***** MAIN FUNCTON THAT GET CALLED WHEN API RESPOND WITH DATA*/



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
        url: "/ipsmcar/assets/php/getData.php",
        data: form_data,
        contentType: false,
        processData: false,
        success: function (data) {
          data = JSON.parse(data);

          realTimeCharts(data);
          // console.log(data);

          $("#image_container_face_id").empty();

          for (const [key, value] of Object.entries(data.boxes)) {
            $("#image_container_face_id").append('<div style="width:' + data.boxes[key][2] + 'px !important;height:' + data.boxes[key][3] + 'px !important;left:' + data.boxes[key][0] + 'px !important;top:' + data.boxes[key][1] + 'px !important" class="face ' + "car" + '"><small></small><span>' + "car" + '</span></div>');
          }
          

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
      }, 1000);

      var minutes = 60;
      var interval = 1000 * 60 * minutes;
      setInterval(getHistoricalData, interval);


    });


  });



  // $.getJSON("ipsm.json", realTimeCharts); // calls realTimeCharts here.
  function realTimeCharts(json) {

    generateChart2(json.counts);

  }


  /******************************************************************************************/
 

 


  function generateChart2(data) {
    let c_total;
    $('.chart2').removeClass('more');
    $('.chart2 .inner-section .left-section hr').css('background', '#ffffff');

    for (const values of data) {
      if (values.type == "cars") {
        c_total = values.value;
        $('.chart2 p span').text(c_total);
      }
    }

    if (c_total <= 98) {
      for (let i = 0; i < c_total; i++) {
        $($('.chart2 .inner-section .left-section hr')[i]).css('background', '#12EBCE');
      }
    } else
      $('.chart2').addClass('more');

    let person = '<img src="media/car3.svg" alt="">';

    if (c_total <= 40) {
      $('.chart2 .inner-section .right-section').html('');
      for (let j = 0; j < c_total; j++) {
        $('.chart2 .inner-section .right-section').append(person);
      }
    } else {
      $('.chart2 .inner-section .right-section').html('');
      for (let j = 0; j < 40; j++) {
        $('.chart2 .inner-section .right-section').append(person);
      }
    }

  }




  var chrart4;
  function generateChart4() {
    chrart4 = am4core.create("chart4-data", am4charts.XYChart);

    var c_data = [{
      "time": "Week1",
      "people": 1580
    }, {
      "time": "Week2",
      "people": 2000
    }, {
      "time": "Week3",
      "people": 1400
    }, {
      "time": "Week4",
      "people": 570
    }];

    // Add data
    chrart4.data = c_data;

    var xAxis = chrart4.xAxes.push(new am4charts.ValueAxis());
    xAxis.renderer.minGridDistance = 40;

    var yAxis = chrart4.yAxes.push(new am4charts.ValueAxis());

    series4 = chrart4.series.push(new am4charts.LineSeries());
    series4.dataFields.valueX = "time";
    series4.dataFields.valueY = "count";
    series4.strokeWidth = 3;

    var bullet1 = series4.bullets.push(new am4charts.CircleBullet());
    series4.heatRules.push({
      target: bullet1.circle,
      min: 5,
      max: 20,
      property: "radius"
    });

    bullet1.tooltipText = "Number of Cars: {valueY}";

    chrart4.scrollbarX = new am4core.Scrollbar();
    chrart4.scrollbarY = new am4core.Scrollbar();
  }
  generateChart4();

  function pushDataToChart4(flag, year, month, week, day) {
    let form_data = new FormData();

    form_data.append("flag", flag);
    form_data.append("year", year);
    form_data.append("month", month);
    form_data.append("week", week);
    form_data.append("day", day);

    $.ajax({
      type: 'POST',
      url: "/ipsmcar/assets/php/getTotalPeople.php",
      data: form_data,
      contentType: false,
      processData: false,
      success: function (responce) {
        // console.log(responce);
        var json = JSON.parse(responce);
        // console.log(json.count);
        chrart4.data = json.count;
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

  



  $('.ch4.radio-btn').click(function (e) {
    var id = $(this).attr('id');
    $(this).parents('.controls').children('.combo-section').children('select').addClass('disabled');
    chartComboBoxStatus(4, id);
  })

  $("#ch4_y").change(function (e) {
    let year = $(this).val();
    pushDataToChart4("year", year, 0, 0, 0);
  })

   $("#ch4_mo").change(function (e) {
    if ($("#ch4_y").val() == "all") {
      $("#ch4_y").prop("selectedIndex", 1)
    }
    let year = $("#ch4_y").val();
    let month = $("#ch4_mo").val();
    console.log(year);
    pushDataToChart4("month", year, month, 0, 0);
  })

  $("#ch4_we").change(function (e) {
     if ($("#ch4_y").val() == "all") {
      $("#ch4_y").prop("selectedIndex", 1)
    }
    let year = $("#ch4_y").val();
    let month = $("#ch4_mo").val();
    let week = $("#ch4_we").val();
    pushDataToChart4("week", year, month, week, 0);
  })

  $("#ch4_da").change(function (e) {
     if ($("#ch4_y").val() == "all") {
      $("#ch4_y").prop("selectedIndex", 1)
    }
    let year = $("#ch4_y").val();
    let month = $("#ch4_mo").val();
    let day = $("#ch4_da").val();
    pushDataToChart4("day", year, month, 0, day);
  })




})
