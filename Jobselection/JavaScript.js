// your-script.js
function loadHtmlContentBasedOnScreenWidth() {
    const screenWidth = window.innerWidth;
    const contentElement = document.getElementById('content');

    // Determine which ASPX file to load
    const aspxFileName = (screenWidth > 1200) ? 'Main.aspx' : 'Mai.aspx';

    // Make an AJAX request to load the ASPX content
    const xhr = new XMLHttpRequest();
    xhr.open('GET', aspxFileName, true);

    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Inject the ASPX content into the #content div
            contentElement.innerHTML = xhr.responseText;
        }
    };

    xhr.send();
}

// Load content when the page loads and when it's resized
window.addEventListener('load', loadHtmlContentBasedOnScreenWidth);
window.addEventListener('resize', loadHtmlContentBasedOnScreenWidth);
