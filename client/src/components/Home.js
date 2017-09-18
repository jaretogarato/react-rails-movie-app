import React from 'react';
import axios from 'axios';
import MovieForm from './MovieForm';
import Movie from './Movie';

class Home extends React.Component {
  state = { movies: [] }

  componentDidMount() {
    axios.get('/api/movies')
      .then( res => this.setState({ movies: res.data }) )
  }

  addMovie = (movie) => {
    let { movies } = this.state;
    this.setState({ movies: [movie, ...movies] })
  }

  render() {
    // let { user: { uid } } = this.props;
    let { movies } = this.state;

    let moviePosts = movies.map( p => <Movie key={p.id} {...p} /> );
    return (
      <div>
        <MovieForm addPost={this.addMovie} />
        {moviePosts}
      </div>
    )
  }
}

export default Home;
