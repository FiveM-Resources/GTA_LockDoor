function display(bool) {
    (bool ? $(".main-container").show() : $(".main-container").hide())
}

window.addEventListener('message', function(event) {

    function onDisplay()
    {
        document.querySelector('.main-container').style.display = "flex";
        document.getElementById('password').focus();
        display(true);
    }


    function onRemove()
    {
        document.querySelector('.main-container').style.display = "none";
        display(false);
    }

    (event.data.active ?  onDisplay() : onRemove());
})

$(document).on('keydown', function() {
    switch (event.keyCode) {
        case 27: // ESC
            $.post('https://GTA_LockDoor/close');
            break;
        case 13: // Enter
            let secureCode = $("#password").val();
            $.post("https://GTA_LockDoor/main", JSON.stringify({
                securityCode: secureCode,
            }))
            break;
    }
});