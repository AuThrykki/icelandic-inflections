import axios from 'axios';

export default (word, autocomplete, callback) => {
  axios.get(`https://ylhyra.is/api/inflection?search=${encodeURIComponent(word)}&autocomplete=${encodeURIComponent(autocomplete)}`)
    .then(function({ data }) {
      callback(data.results)
    })
    .catch(function(error) {
      callback(null)
      console.log(error);
    })
}