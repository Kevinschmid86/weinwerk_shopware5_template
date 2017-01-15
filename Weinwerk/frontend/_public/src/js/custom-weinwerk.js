//Shopware Modal for cookie question
//Get current url
var current_url = window.location.protocol + "//" + window.location.host + "/" + window.location.pathname;
//Check if checkout is in url
if (current_url.search('checkout') > 0)
{
    // check if cookie exist
    if(!Cookies.get('of_agel')) {
        // if not open the modal
        $.modal.open('<div style="padding: 0.5rem;">'+
            '<p>weinwerk.de tritt für einen verantwortungsvollen Genuss alkoholischer Getränke ein. Ein Erwerb von alkoholhaltigen Getränken darf bei uns nur erfolgen, wenn Sie 18 Jahre oder älter sind. Bitte bestätigen Sie ihr Alter:</p>'+
            '<button class="btn is--primary cookie-ok">Ja, Ich bin 18 Jahre oder älter</button>'+
            '<button class="btn is--secondary cookie-not-ok">Nein, Ich bin noch keine 18 Jahre</button>'+
            '</div>',{
            additionalClass: 'of_age',
            width: 600,
            height:230,
            closeOnOverlay: false,
            showCloseButton: false,
        });
    }

// trigger the function if button is clicked
    $('.of_age .cookie-ok').on('click', function() {
        // Set the cookie
        Cookies.set('of_agel', true, { expires: 7 });
        // and close the modal
        $.modal.close();
    });

// trigger the function if button is clicked
    $('.of_age .cookie-not-ok').on('click', function() {
        // Set the cookie
        window.open('http://www.sinalco.de/produkte','_self');
    });
}

