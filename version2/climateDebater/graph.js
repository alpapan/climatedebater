var Plot = createPlotlyComponent(Plotly);

ReactDOM.render(
  React.createElement(Plot, {
    data: [{
      type: 'scatterpolar',
      r: [globalChoiceVariables[0], globalChoiceVariables[1], globalChoiceVariables[2], globalChoiceVariables[3], globalChoiceVariables[4], globalChoiceVariables[5], globalChoiceVariables[0]],
      theta: ['GroupA','GroupB','GroupC', 'GroupD', 'GroupE', 'GroupF', 'GroupA'],
      fill: 'toself'
    }],
    revision: 0,
    layout: {
      datarevision: 0,
      polar: {
        radialaxis: {
          visible: true,
          range: [-5, 5]
        }
      },
      showlegend: false
    }
  }),
  document.getElementById('graphroot')
);

//console.log("from graphjs")
//console.log(globalChoiceVariables);
