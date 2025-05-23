
<!--Start Show Session Expire Warning Popup here -->

<div class="modal fade" id="session-expire-warning-modal" aria-hidden="true" data-keyboard="false" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">

    <div class="modal-dialog" role="document">

        <div class="modal-content">

            <div class="modal-header">

                <h4 class="modal-title">Session Expire Warning</h4>

            </div>

            <div class="modal-body">

                Your session will expire in <span id="seconds-timer"></span> seconds. Do you want to extend the session?

            </div>

            <div class="modal-footer">

                <button id="btnOk" type="button" class="btn btn-default" style="padding: 6px 12px; margin-bottom: 0; font-size: 14px; font-weight: normal; border: 1px solid transparent; border-radius: 4px;  background-color: #428bca; color: #FFF;">Ok</button>

                <button id="btnSessionExpiredCancelled" type="button" class="btn btn-default" data-dismiss="modal" style="padding: 6px 12px; margin-bottom: 0; font-size: 14px; font-weight: normal; border: 1px solid transparent; border-radius: 4px; background-color: #428bca; color: #FFF;">Cancel</button>

                <button id="btnLogoutNow" type="button" class="btn btn-default" style="padding: 6px 12px; margin-bottom: 0; font-size: 14px; font-weight: normal; border: 1px solid transparent; border-radius: 4px;  background-color: #428bca; color: #FFF;">Logout now</button>

            </div>

        </div>

    </div>

</div>

<!--End Show Session Expire Warning Popup here -->

<!--Start Show Session Expire Popup here -->

<div class="modal fade" id="session-expired-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">

    <div class="modal-dialog" role="document">

        <div class="modal-content">

            <div class="modal-header">

                <h4 class="modal-title">Session Expired</h4>

            </div>

            <div class="modal-body">

                Your session is expired.

            </div>

            <div class="modal-footer">

                <button id="btnExpiredOk" onclick="sessionExpiredRedirect()" type="button" class="btn btn-primary" data-dismiss="modal" style="padding: 6px 12px; margin-bottom: 0; font-size: 14px; font-weight: normal; border: 1px solid transparent; border-radius: 4px; background-color: #428bca; color: #FFF;">Ok</button>

            </div>

        </div>

    </div>

</div>
<script>
    var sessServerAliveTime = 10 * 60 * 2;
    var sessionTimeout = 1 * 60000;
    var sessLastActivity;
    var idleTimer, remainingTimer;
    var isTimout = false;

    var sess_intervalID, idleIntervalID;
    var sess_lastActivity;
    var timer;
    var isIdleTimerOn = false;
    localStorage.setItem('sessionSlide', 'isStarted');

    function sessPingServer() {
        if (!isTimout) {
            //$.ajax({
            //    url: '/Admin/SessionTimeout',
            //    dataType: "json",
            //    async: false,
            //    type: "POST"
            //});

            return true;
        }
    }

    function sessServerAlive() {
        sess_intervalID = setInterval('sessPingServer()', sessServerAliveTime);
    }

    function initSessionMonitor() {
        $(document).bind('keypress.session', function (ed, e) {
            sessKeyPressed(ed, e);
        });
        $(document).bind('mousedown keydown', function (ed, e) {

            sessKeyPressed(ed, e);
        });
        sessServerAlive();
        startIdleTime();
    }

    $(window).scroll(function (e) {
        localStorage.setItem('sessionSlide', 'isStarted');
        startIdleTime();
    });

    function sessKeyPressed(ed, e) {
        var target = ed ? ed.target : window.event.srcElement;
        var sessionTarget = $(target).parents("#session-expire-warning-modal").length;

        if (sessionTarget != null && sessionTarget != undefined) {
            if (ed.target.id != "btnSessionExpiredCancelled" && ed.target.id != "btnSessionModal" && ed.currentTarget.activeElement.id != "session-expire-warning-modal" && ed.target.id != "btnExpiredOk"
                && ed.currentTarget.activeElement.className != "modal fade modal-overflow in" && ed.currentTarget.activeElement.className != 'modal-header'
                && sessionTarget != 1 && ed.target.id != "session-expire-warning-modal") {
                localStorage.setItem('sessionSlide', 'isStarted');
                startIdleTime();
            }
        }
    }

    function startIdleTime() {
        stopIdleTime();
        localStorage.setItem("sessIdleTimeCounter", $.now());
        idleIntervalID = setInterval('checkIdleTimeout()', 1000);
        isIdleTimerOn = false;
    }

    var sessionExpired = document.getElementById("session-expired-modal");
    function sessionExpiredClicked(evt) {
        window.location = "Logout.html";
    }

    sessionExpired.addEventListener("click", sessionExpiredClicked, false);
    function stopIdleTime() {
        clearInterval(idleIntervalID);
        clearInterval(remainingTimer);
    }

    function checkIdleTimeout() {
        // $('#sessionValue').val() * 60000;
        var idleTime = (parseInt(localStorage.getItem('sessIdleTimeCounter')) + (sessionTimeout));
        if ($.now() > idleTime + 60000) {
            $("#session-expire-warning-modal").modal('hide');
            $("#session-expired-modal").modal('show');
            clearInterval(sess_intervalID);
            clearInterval(idleIntervalID);

            $('.modal-backdrop').css("z-index", parseInt($('.modal-backdrop').css('z-index')) + 100);
            $("#session-expired-modal").css('z-index', 2000);
            $('#btnExpiredOk').css('background-color', '#428bca');
            $('#btnExpiredOk').css('color', '#fff');

            isTimout = true;

            sessLogOut();

        }
        else if ($.now() > idleTime) {
            ////var isDialogOpen = $("#session-expire-warning-modal").is(":visible");
            if (!isIdleTimerOn) {
                ////alert('Reached idle');
                localStorage.setItem('sessionSlide', false);
                countdownDisplay();

                $('.modal-backdrop').css("z-index", parseInt($('.modal-backdrop').css('z-index')) + 500);
                $('#session-expire-warning-modal').css('z-index', 1500);
                $('#btnOk').css('background-color', '#428bca');
                $('#btnOk').css('color', '#fff');
                $('#btnSessionExpiredCancelled').css('background-color', '#428bca');
                $('#btnSessionExpiredCancelled').css('color', '#fff');
                $('#btnLogoutNow').css('background-color', '#428bca');
                $('#btnLogoutNow').css('color', '#fff');

                $("#seconds-timer").empty();
                $("#session-expire-warning-modal").modal('show');

                isIdleTimerOn = true;
            }
        }
    }

    $("#btnSessionExpiredCancelled").click(function () {
        $('.modal-backdrop').css("z-index", parseInt($('.modal-backdrop').css('z-index')) - 500);
    });

    $("#btnOk").click(function () {
        $("#session-expire-warning-modal").modal('hide');
        $('.modal-backdrop').css("z-index", parseInt($('.modal-backdrop').css('z-index')) - 500);
        startIdleTime();
        clearInterval(remainingTimer);
        localStorage.setItem('sessionSlide', 'isStarted');
    });

    $("#btnLogoutNow").click(function () {
        localStorage.setItem('sessionSlide', 'loggedOut');
        window.location = "Logout.html";
        sessLogOut();
        $("#session-expired-modal").modal('hide');

    });
    $('#session-expired-modal').on('shown.bs.modal', function () {
        $("#session-expire-warning-modal").modal('hide');
        $(this).before($('.modal-backdrop'));
        $(this).css("z-index", parseInt($('.modal-backdrop').css('z-index')) + 1);
    });

    $("#session-expired-modal").on("hidden.bs.modal", function () {
        window.location = "Logout.html";
    });
    $('#session-expire-warning-modal').on('shown.bs.modal', function () {
        $("#session-expire-warning-modal").modal('show');
        $(this).before($('.modal-backdrop'));
        $(this).css("z-index", parseInt($('.modal-backdrop').css('z-index')) + 1);
    });

    function countdownDisplay() {

        var dialogDisplaySeconds = 60;

        remainingTimer = setInterval(function () {
                if (localStorage.getItem('sessionSlide') == "isStarted") {
                    $("#session-expire-warning-modal").modal('hide');
                    startIdleTime();
                    clearInterval(remainingTimer);
                }
                else if (localStorage.getItem('sessionSlide') == "loggedOut") {
                    $("#session-expire-warning-modal").modal('hide');
                    $("#session-expired-modal").modal('show');
                }
                else {

                    $('#seconds-timer').html(dialogDisplaySeconds);
                    dialogDisplaySeconds -= 1;
                }
            }
            , 1000);
    };

    function sessLogOut() {
        // $.ajax({
        //     url: 'Logout.html',
        //     dataType: "json",
        //      async: false,
        //      type: "POST"
        //   });

        window.location = "Logout.html";
    }
</script>












<%--<input type="button" id="btnRedirect" value="Redirect" />--%>
<%--<br />--%>
<%--<br />--%>
<%--<div id="dvCountDown" style="display: none">--%>
<%--    You will be redirected after <span id="lblCount"></span>&nbsp;seconds.--%>
<%--</div>--%>
<%--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>--%>
<%--<script type="text/javascript">--%>
<%--    $(function () {--%>
<%--        $("#btnRedirect").click(function () {--%>
<%--            var seconds = 15;--%>
<%--            $("#dvCountDown").show();--%>
<%--            $("#lblCount").html(seconds);--%>
<%--            setInterval(function () {--%>
<%--                seconds--;--%>
<%--                $("#lblCount").html(seconds);--%>
<%--                if (seconds == 0) {--%>
<%--                    $("#dvCountDown").hide();--%>
<%--                    window.location = "/";--%>
<%--                }--%>
<%--            }, 1000);--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>
