        const showCalendar = () => {

        const bookbtnall = document.querySelectorAll('.show-cal');
        if (bookbtnall) {
              bookbtnall.forEach((bookbtn) => {
              bookbtn.addEventListener("click", (event) => {
              bookbtnall.forEach((bookpurg) => { if(bookpurg) {
              bookpurg.innerHTML = "Show calendar";
              bookpurg.nextElementSibling.style.display = "none";
              } else { } });
              event.currentTarget.innerHTML = "<strong>Select dates please</strong>";
              event.currentTarget.nextElementSibling.style.display = "unset";
              event.stopPropagation();
            });

            });

        } else { } };

        const hideCalendar = () => {
          window.addEventListener("click", function(){
            const hideall = document.querySelectorAll('.show-cal');
            console.log(hideall);
              if (hideall) {
                hideall.forEach((hide) => {

                  hide.innerHTML = "Show calendar";
                  hide.nextElementSibling.style.display = "none";

                }); } else { }
          });
        };


        const hideCalendarBtn = () => {

        console.log("hideCalendar function");
        const hidebtnall = document.querySelectorAll('.hide-btn');
        console.log(hidebtnall);
        if (hidebtnall) {
          hidebtnall.forEach((hidebtn) => {

            hidebtn.addEventListener("click", (event) => {

            console.log("--- hide current target ---");
            console.log(event.currentTarget);
            console.log("--- hide current target node parent ---");
            console.log(event.currentTarget.parentNode);

              event.currentTarget.parentNode.innerHTML = "Show calendar";
              event.stopPropagation();
            });

            });

        } else { }



      };


        console.log("hello from showcalendar.js");

        export { showCalendar };
