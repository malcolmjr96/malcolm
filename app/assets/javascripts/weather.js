
async function getTime() {
    var dt = new Date();

    var options = { timeZone: "America/New_York",
                    hour12: false,
                    weekday: 'short',
                    year: 'numeric',
                    month: 'short',
                    day: 'numeric',
                    hour: 'numeric',
                    minute: 'numeric'
                };

    // something like "Thursday, February 14, 2019, 02:55"
    console.log(dt.toLocaleString('en-US', options));
    document.getElementById("time").innerHTML = dt.toLocaleString('en-US', options);
};



getTime();
