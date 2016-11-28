$(document).ready ->
  if window.location.pathname == '/'
    labels = []
  dataPoints = []
  $.ajax '/inventors_hired'
    type: 'GET'
    success: (data) ->
      labels = Object.keys(data.records)
      for key of data.records
        dataPoints.push(data.records[key])
    data = {
      labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept', 'Oct']
      datasets: [
        {
          label: "My First dataset",
          fillColor: "rgba(220,220,220,0.2)",
          strokeColor: "rgba(220,220,220,0,1)",
          pointsColor: "rgba(220,220,220,0.1)",
          pointStrokeColor: "#fff"
          pointHighlightFill: "#fff"
          pointHighlightStroke: "rgba(220,220,220,1)"
          data: [65, 59, 80, 81, 56, 55, 40]

       }
      ]
    }

    $('#inventors_hired').empty()
    new Chart($('#inventors_hired').get(0).getContext('2d')).Line(data, {responsive: true}) 

    industryData = []
        $.ajax '/by_industry',
          type: 'GET'
          success: (data) ->
            for type, count of data.robots
              switch type
                when 'Service' then set = {value: count, color: "#517EA6", highlight: 'rgba(81,126,166,.1)', label: type}
                when 'War' then set = {value: count, color: "#AB2116", highlight: 'rgba(171,33,22,.1)', label: type}
                when 'Technician' then set = {value: count, color: "#5A6B75", highlight: 'rgba(90,107,117,.1)', label: type}
                when 'Education' then set = {value: count, color: "#BC774C", highlight: 'rgba(188,119,76,.1)', label: type}
                when 'Science' then set = {value: count, color: "#FDB45C", highlight: 'rgba(253,180,92,.1)', label: type}
              industryData.push(set)

            $('#robots_by_industry').empty()
            new Chart($("#robots_by_industry").get(0).getContext("2d")).PolarArea(industryData)