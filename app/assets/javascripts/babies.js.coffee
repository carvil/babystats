# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

window.build_graph = (opts) ->
  $ ->
    $(document).ready ->
      chart = new Highcharts.Chart(
        chart:
          renderTo: opts.render_to_div
          type: "spline"
        title:
          text: opts.title
        subtitle:
          text: opts.subtitle
        xAxis:
          type: "datetime"
        yAxis:
          title:
            text: opts.yaxis_title
        tooltip:
          crosshairs: true
          shared: true
        series: opts.data
      )
