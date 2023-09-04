var data;
<?php
    header('Content-Type: text/javascript; charset=UTF-8');
?>;

    data = [
    {
    x: ['giraffes', 'orangutans', 'monkeys'],
    y: [20, 14, 23],
    type: 'bar'
    }
    ];

    Plotly.newPlot('myDiv', data);