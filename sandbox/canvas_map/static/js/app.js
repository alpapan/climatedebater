// Map drawing function using html canvas

; (function () {

    // setup config variables and start the program
    function init() {

        // Grab the canvas area and set a 2D context
        const canvas = document.getElementById('mapCanvas');
        const context = canvas.getContext('2d');

        // Grab the canvas coordinates
        const canvasLeft = canvas.getBoundingClientRect().left + canvas.clientLeft;
        const canvasTop = canvas.getBoundingClientRect().top + canvas.clientTop;

        // Set canvas background (streets)
        context.fillStyle = "#020202";
        context.fillRect(0, 0, 700, 450);

        // Buildings location settings
        let buildings = [
            {
                name: 'Library',
                top: 0,
                left: 0,
                height: 130,
                width: 200
            },
            {
                name: 'Local Pub',
                top: 0,
                left: 230,
                height: 130,
                width: 150
            },
            {
                name: 'Supermarket',
                top: 0,
                left: 410,
                height: 130,
                width: 290
            },
            {
                name: 'University',
                top: 170,
                left: 0,
                height: 150,
                width: 330
            },
            {
                name: 'Student Accom',
                top: 170,
                left: 360,
                height: 150,
                width: 340
            },
            {
                name: 'Sports Centre',
                top: 360,
                left: 0,
                height: 100,
                width: 250
            },
            {
                name: 'Shopping Mall',
                top: 360,
                left: 280,
                height: 100,
                width: 420
            },
        ];

        // Set shared building text styles
        context.font = '20px Bookman'
        context.textAlign = 'center'
        context.textBaseline = 'alphabetic'

        // Draw each building
        buildings.forEach(function (element) {
            context.strokeStyle = '#999';
            context.lineWidth = 9;
            context.strokeRect(element.left, element.top, element.width, element.height);
            context.fillStyle = '#eee';
            context.fillRect(element.left, element.top, element.width, element.height);
            // Add building label
            context.fillStyle = 'black';
            context.fillText(element.name, element.left + element.width / 2, element.top + element.height / 2)
        });

        // Draw street markings
        // set line color and width
        context.strokeStyle = '#889';
        context.lineWidth = 2;

        y = 10
        while (y < 700) {
            context.beginPath();
            context.moveTo(y, 150);
            context.lineTo(y + 20, 150);
            context.stroke();

            context.beginPath();
            context.moveTo(y, 340);
            context.lineTo(y + 20, 340);
            context.stroke();

            y += 35
        }

        // Add event listener for `click` events on buildings.
        canvas.addEventListener('click', function (event) {
            // Grab relative location of click
            let x = event.pageX - canvasLeft;
            let y = event.pageY - canvasTop;

            // Collision detection between clicked offset and element.
            buildings.forEach(function (element) {
                if (y > element.top && y < element.top + element.height
                    && x > element.left && x < element.left + element.width) {
                    alert(`You are entering the ${element.name}`);
                }
            });

        }, false);

    }

    // wait for the HTML to load
    document.addEventListener('DOMContentLoaded', init)

})()
