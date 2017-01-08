/**
 * Created by kevin.schmid on 02.10.2016.
 */

//Shopware Modal for cookie question
// check if cookie exist
if(!Cookies.get('of_agel')) {
    // if not open the modal
    $.modal.open('<div style="padding: 0.5rem;">'+
        '<p>Wein-Wolff tritt für einen verantwortungsvollen Genuss alkoholischer Getränke ab 18 Jahren ein. Bitte betreten Sie diese Website nicht, wenn Sie jünger als 18 Jahre sind.</p>'+
        '<button class="btn is--primary cookie-ok">Ja, Ich bin 18 Jahre oder älter</button>'+
        '<button class="btn is--secondary cookie-not-ok">Nein, Ich bin noch keine 18 Jahre</button>'+
        '</div>',{
        additionalClass: 'of_age',
        width: 600,
        height:225,
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
    window.open('http://www.kenn-dein-limit.info/','_self');
});

