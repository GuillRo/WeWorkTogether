

const changeTab = () => {

  const tabs = document.querySelectorAll('.tab-underlined');

  tabs.forEach(tab => tab.addEventListener("click", (event) => {
    if (event.currentTarget.classList.contains('inactive')){
      document.querySelector('.active').classList.replace('active', 'inactive')
      if (event.currentTarget.innerText=="My workspaces"){
        document.getElementById('tab-bookings').style.display = "none";
        document.getElementById('tab-workspaces').style.display = "";

      } else if (event.currentTarget.innerText=="My bookings"){
        document.getElementById('tab-bookings').style.display = "";
        document.getElementById('tab-workspaces').style.display = "none";      }
      event.currentTarget.classList.replace('inactive','active');
    }    
  }))
}
export { changeTab };