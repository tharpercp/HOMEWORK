export const fetchSearchGiphys = (searchterm) =>{
    return $.ajax({
        method: "GET",
        url: "http://api.giphy.com/v1/gifs/search?q=" + searchterm + "&api_key=0iYsFs2OLNYa31gWHgpecZql25eGSZEZ&limit=2"
    })
}