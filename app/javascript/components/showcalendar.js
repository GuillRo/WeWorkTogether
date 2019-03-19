        const showCalendar = () => {

        const bookbtnall = document.querySelectorAll('.show-cal');
        if (bookbtnall) {
              bookbtnall.forEach((bookbtn) => {
              bookbtn.addEventListener("click", (event) => {
              bookbtnall.forEach((bookpurg) => { if(bookpurg) {
              bookpurg.innerHTML = "Book now";
              bookpurg.nextElementSibling.style.display = "none";
              } else { } });
              let parent_div = event.currentTarget
              parent_div.classList.remove('btn')
              parent_div.classList.remove('btn-info')
              parent_div.classList.remove('btn-xs')
              event.currentTarget.innerHTML = "Select your dates";
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

                  hide.innerHTML = "Book now";
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

              event.currentTarget.parentNode.innerHTML = "Book now";
              event.stopPropagation();
            });

            });

        } else { }



      };


        console.log("hello from showcalendar.js");

        export { showCalendar };
