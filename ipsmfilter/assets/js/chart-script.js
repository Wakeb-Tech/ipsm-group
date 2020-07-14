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

   $('#ch3_y_btn input').prop('checked', true);
  // $('#ch3_mo_btn input').prop('checked', true);
  $('#ch4_y_btn input').prop('checked', true);
  // $('#ch4_mo_btn input').prop('checked', true);
  $('#ch5_y_btn input').prop('checked', true);

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
      url: "/ipsmfilter/assets/php/getFaces.php",
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

    for (const values of json.pres) {
      switch (values.emotion) {
        case "angry":
          form_data.append('angry', values.value);
          break;
        case "disgust":
          form_data.append('disgust', values.value);
          break;
        case "happy":
          form_data.append('happy', values.value);
          break;
        case "neutral":
          form_data.append('neutral', values.value);
          break;
        case "sad":
          form_data.append('sad', values.value);
          break;
        case "surprise":
          form_data.append('surprise', values.value);
          break;
        case "fear":
          form_data.append('fear', values.value);
          break;
        case "people":
          form_data.append('people', values.value);
          break;
        default:
          break;
      }
    }

    $.ajax({
      type: 'POST',
      url: "/ipsm/assets/php/saveToDatabase.php",
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
        url: "/ipsmfilter/assets/php/getFaces.php",
        data: form_data,
        contentType: false,
        processData: false,
        success: function (data) {
          data = JSON.parse(data);

          realTimeCharts(data);
          // console.log(data);

          $("#image_container_face_id").empty();

          for (const [key, value] of Object.entries(data.emotions)) {
            $("#image_container_face_id").append('<div style="width:' + data.faces[key][2] + 'px !important;height:' + data.faces[key][3] + 'px !important;left:' + data.faces[key][0] + 'px !important;top:' + data.faces[key][1] + 'px !important" class="face ' + value + '"><small></small><span>' + value + '</span></div>');
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
      }, 800);

      var minutes = 120;
      var interval = 1000 * 60 * minutes;
      setInterval(getHistoricalData, interval);


    });


  });



  // $.getJSON("ipsm.json", realTimeCharts); // calls realTimeCharts here.
  function realTimeCharts(json) {

    generateChart2(json.counts);

    // generateChart3(json);
    generateChart1(json);

  }


  /******************************************************************************************/
  /* ***** Generate and Draw charts*/

  function setChart1Data(emotion, deg) {
    var can = $("#" + emotion + "Data")[0];
    var ctx = can.getContext('2d');
    var cx = 17.5;
    var cy = 17.5;
    ctx.canvas.width = 35;
    ctx.canvas.height = 35;
    ctx.beginPath();
    ctx.moveTo(cx, cy);
    ctx.arc(cx, cy, 17, 0, deg * Math.PI / 180);
    ctx.fillStyle = "#ffffff";
    ctx.lineTo(cx, cy);
    ctx.closePath();
    ctx.fill();
  }

  function generateChart1(data) {
    // console.log(data.counts);

    let max = 0, percentage;

    for (const values of data.counts) {
      if (values.emotion == "faces") {
        max = values.value;
      }
    }

    for (const values of data.counts) {
      if (values.emotion != "people" && values.emotion != "faces") {

        percentage = ((values.value * 100) / max).toFixed(0);
        $("." + values.emotion + "-chart span").text(percentage + "%");
        if (percentage == "NAN")
          setChart1Data(values.emotion, 0);
        else
          setChart1Data(values.emotion, (percentage * 3.6));
      }

    }


  }


  function generateChart2(data) {
    let c_total;
    $('.chart2').removeClass('more');
    $('.chart2 .inner-section .left-section hr').css('background', '#ffffff');

    for (const values of data) {
      if (values.emotion == "people") {
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

    let person = '<img src="media/person2.svg" alt="">';

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



  var chart3;
  function generateChart3(data) {
    console.log(data);
    chart3 = am4core.create("chart3-data", am4charts.PieChart);

    chart3.data = data;
    chart3.innerRadius = am4core.percent(30);

    // Add and configure Series
    pieSeries3 = chart3.series.push(new am4charts.PieSeries());
    pieSeries3.dataFields.value = "value";
    pieSeries3.dataFields.category = "emotion";

    pieSeries3.colors.list = [
      am4core.color("#0B5CB5"),
      am4core.color("#069EFC"),
      am4core.color("#089269"),
      am4core.color("#4d80e4"),
      am4core.color("#297ca0"),
      am4core.color("#00818a")
    ];

    pieSeries3.ticks.template.disabled = true;
    pieSeries3.alignLabels = false;
    pieSeries3.labels.template.text = "{emotion}";
    pieSeries3.labels.template.radius = am4core.percent(-30);
    pieSeries3.labels.template.fill = am4core.color("white");
  }

  function pushDataToChart3(flag, year, month, week, day) {


    let form_data = new FormData();

    form_data.append("flag", flag);
    form_data.append("year", year);
    form_data.append("month", month);
    form_data.append("week", week);
    form_data.append("day", day);

    $.ajax({
      type: 'POST',
      url: "/ipsm/assets/php/getEmotionsData.php",
      data: form_data,
      contentType: false,
      processData: false,
      success: function (responce) {
        var json = JSON.parse(responce);

        let c_array = [];
        let total = 0;

        for (const values of json.pres) {
          if (values.emotion != "people") {
            total = total + values.value;
          }
        }

        for (const values of json.pres) {
          if (values.emotion != "people" && values.value != 0) {
            c_array.push({
              "emotion": values.emotion,
              "value": ((values.value * 100) / total)
            });
          }

          if (values.emotion == "people") {
            if (values.value <= 99) {
              $('.top-info i').text(values.value);
            } else {
              $('.top-info i').text("+99");
            }
            $('.chart3-data').attr("title", "Total Persons: " + values.value);
          }
        }

        generateChart3(c_array);
      }
    });
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
    series4.dataFields.valueY = "people";
    series4.strokeWidth = 3;

    var bullet1 = series4.bullets.push(new am4charts.CircleBullet());
    series4.heatRules.push({
      target: bullet1.circle,
      min: 5,
      max: 20,
      property: "radius"
    });

    bullet1.tooltipText = "Number of people: {valueY}";

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
      url: "/ipsm/assets/php/getTotalPeople.php",
      data: form_data,
      contentType: false,
      processData: false,
      success: function (responce) {
        // console.log(responce);
        var json = JSON.parse(responce);
        chrart4.data = json.people;
      }
    });
  }


  var chart5;
  function generateChart5(json) {
    chart5 = am4core.create("chart5-data", am4charts.XYChart);
    chart5.colors.step = 2;

    var xAxis = chart5.xAxes.push(new am4charts.CategoryAxis());
    xAxis.dataFields.category = "time";
    xAxis.renderer.minGridDistance = 50;
    
    function createAxisAndSeries(field, name, opposite, bullet) {
      var yAxis = chart5.yAxes.push(new am4charts.ValueAxis());
      
      var series = chart5.series.push(new am4charts.LineSeries());
      series.dataFields.valueY = field;
      series.dataFields.categoryX  = "time";
      series.strokeWidth = 2;
      series.yAxis = yAxis;
      series.name = name;
      series.bullets.tooltipText = "{name}: [bold]{valueY}[/]";
      series.tensionX = 0.8;
      series.legendSettings.itemValueText = "[bold]{valueY}[/bold]"; 

      var interfaceColors = new am4core.InterfaceColorSet();

      switch (bullet) {
        case "triangle":
          var bullet = series.bullets.push(new am4charts.Bullet());
          bullet.width = 12;
          bullet.height = 12;
          bullet.horizontalCenter = "middle";
          bullet.verticalCenter = "middle";

          var triangle = bullet.createChild(am4core.Triangle);
          triangle.stroke = interfaceColors.getFor("background");
          triangle.strokeWidth = 2;
          triangle.direction = "top";
          triangle.width = 12;
          triangle.height = 12;
          break;
        case "rectangle":
          var bullet = series.bullets.push(new am4charts.Bullet());
          bullet.width = 10;
          bullet.height = 10;
          bullet.horizontalCenter = "middle";
          bullet.verticalCenter = "middle";

          var rectangle = bullet.createChild(am4core.Rectangle);
          rectangle.stroke = interfaceColors.getFor("background");
          rectangle.strokeWidth = 2;
          rectangle.width = 10;
          rectangle.height = 10;
          break;
        default:
          var bullet = series.bullets.push(new am4charts.CircleBullet());
          bullet.circle.stroke = interfaceColors.getFor("background");
          bullet.circle.strokeWidth = 2;
          break;
      }

      bullet.tooltipText = "{name}: [bold]{valueY}[/]";
      yAxis.renderer.line.strokeOpacity = 1;
      yAxis.renderer.line.strokeWidth = 2;
      yAxis.renderer.line.stroke = series.stroke;
      yAxis.renderer.labels.template.fill = series.stroke;
      yAxis.renderer.opposite = opposite;
      yAxis.renderer.grid.template.disabled = true;
      yAxis.renderer.labels.template.disabled = true; //disables labels
    }

    createAxisAndSeries("angry", "Angry", false, "circle");
    createAxisAndSeries("disgust", "Disgust", false, "triangle");
    createAxisAndSeries("happy", "Happy", false, "rectangle");
    createAxisAndSeries("neutral", "Neutral", false, "circle");
    createAxisAndSeries("sad", "Sad", false, "triangle");
    createAxisAndSeries("surprise", "Surprise", false, "rectangle");
    createAxisAndSeries("fear", "Fear", false, "rectangle");

    chart5.data = json;

    chart5.legend = new am4charts.Legend();
    chart5.cursor = new am4charts.XYCursor();

  };
  generateChart5({});

  function pushDataToChart5(flag, year, month, week, day) {
    let form_data = new FormData();

    form_data.append("flag", flag);
    form_data.append("year", year);
    form_data.append("month", month);
    form_data.append("week", week);
    form_data.append("day", day);

    $.ajax({
      type: 'POST',
      url: "/ipsm/assets/php/getTotalEmotions.php",
      data: form_data,
      contentType: false,
      processData: false,
      success: function (responce) {
        
        var json = JSON.parse(responce);
        var total = 0;
        var chart_data = [];
        // for (const value of json.pres) {
        //   total = total + value.angry + value.disgust + value.happy + value.neutral + value.sad + value.surprise + value.fear;
        // }


        for (const value of json.pres) {
          let total = value.angry + value.disgust + value.happy + value.neutral + value.sad + value.surprise + value.fear;
          chart_data.push({
            "time": value.time,
            "angry": (value.angry / total) * 100,
            "disgust": (value.disgust / total) * 100,
            "happy": (value.happy / total) * 100,
            "neutral": (value.neutral / total) * 100,
            "sad": (value.sad / total) * 100,
            "surprise": (value.surprise / total) * 100,
            "fear": (value.fear / total) * 100,
          })
        }

        chart5.dispose();
        generateChart5(chart_data);
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

  $('.ch3.radio-btn').click(function (e) {
    var id = $(this).attr('id');
    $(this).parents('.controls').children('.combo-section').children('select').addClass('disabled');
    chartComboBoxStatus(3, id);
  })

  $("#ch3_y").change(function (e) {
    let year = $(this).val();
    pushDataToChart3("year", year, 0, 0, 0);
  })

  $("#ch3_mo").change(function (e) {
    if ($("#ch3_y").val() == "all") {
      $("#ch3_y").prop("selectedIndex", 1)
    }
    let year = $("#ch3_y").val();
    let month = $("#ch3_mo").val();
    console.log(year);
    pushDataToChart3("month", year, month, 0, 0);
  })

  $("#ch3_we").change(function (e) {
     if ($("#ch3_y").val() == "all") {
      $("#ch3_y").prop("selectedIndex", 1)
    }
    let year = $("#ch3_y").val();
    let month = $("#ch3_mo").val();
    let week = $("#ch3_we").val();
    pushDataToChart3("week", year, month, week, 0);
  })

  $("#ch3_da").change(function (e) {
     if ($("#ch3_y").val() == "all") {
      $("#ch3_y").prop("selectedIndex", 1)
    }
    let year = $("#ch3_y").val();
    let month = $("#ch3_mo").val();
    let day = $("#ch3_da").val();
    pushDataToChart3("day", year, month, 0, day);
  })





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




  $('.ch5.radio-btn').click(function (e) {
    var id = $(this).attr('id');
    $(this).parents('.controls').children('.combo-section').children('select').addClass('disabled');
    chartComboBoxStatus(5, id);
  })

  $("#ch5_y").change(function (e) {
    let year = $(this).val();
    pushDataToChart5("year", year, 0, 0, 0);
  })

   $("#ch5_mo").change(function (e) {
    if ($("#ch5_y").val() == "all") {
      $("#ch5_y").prop("selectedIndex", 1)
    }
    let year = $("#ch5_y").val();
    let month = $("#ch5_mo").val();
    console.log(year);
    pushDataToChart5("month", year, month, 0, 0);
  })

  $("#ch5_we").change(function (e) {
     if ($("#ch5_y").val() == "all") {
      $("#ch5_y").prop("selectedIndex", 1)
    }
    let year = $("#ch5_y").val();
    let month = $("#ch5_mo").val();
    let week = $("#ch5_we").val();
    pushDataToChart5("week", year, month, week, 0);
  })

  $("#ch5_da").change(function (e) {
     if ($("#ch5_y").val() == "all") {
      $("#ch5_y").prop("selectedIndex", 1)
    }
    let year = $("#ch5_y").val();
    let month = $("#ch5_mo").val();
    let day = $("#ch5_da").val();
    pushDataToChart5("day", year, month, 0, day);
  })

})
