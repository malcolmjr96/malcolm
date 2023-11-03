tailwind.config = {
    theme: {
        extend: {
            colors: {
                clifford: "#da373d"
            }
        }
    }
};


// Assuming your JSON file is named data.json and is placed in the public directory
const jsonUrl = 'data/basic.json';

// Fetch the JSON file using the Fetch API
fetch(jsonUrl)
  .then((response) => response.json())
  .then((data) => {
    // You can now use the 'data' object which contains the JSON data
    const nameplaceholder = document.getElementById("firstName");
    nameplaceholder.innerHTML = data.name;
    console.log(data); // Example: log the data to the console
  })
  .catch((error) => {
    console.error('Error fetching JSON:', error);
  });

  document.getElementById


