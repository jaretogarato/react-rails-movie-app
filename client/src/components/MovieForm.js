import React from 'react';
import { Form, Header } from 'semantic-ui-react';
import Dropzone from 'react-dropzone';
import axios from 'axios';

class MovieForm extends React.Component {
  state = { title: '', summary: '', release_year: 1, stars: 1, rank: 1000000000, genre: '', director:'', img_url:'' }

  handleSubmit = (e) => {
    e.preventDefault();
    // let data = new FormData();
    // let { title, summary, file, release_year, stars, rank, genre, director } = this.state;
    // data.append('title', title);
    // data.append('summary', summary);
    // data.append('release_year', release_year);
    // data.append('stars', stars);
    // data.append('rank', rank);
    // data.append('genre', genre);
    // data.append('director', director);
    // data.append('img', file);
    axios.post('/api/movies', { movie: this.state })
      .then( res => {
        this.props.addPost(res.data)
        this.setState({ title: '', file: '' })
      })
  }

  handleChange = (e) => {
    const { name, value } = e.target;
    this.setState({ [name]: value })
  }

  // onDrop = (files) => {
  //   this.setState({ file: files[0] })
  // }

  render() {
    return (
      <div>
        <Header as="h3">Add a New Movie</Header>
        <Form onSubmit={this.handleSubmit}>
          <Form.Input
            required
            type="text"
            label="Title"
            name="title"
            value={this.state.title}
            onChange={this.handleChange}
          />
          <Form.Input
            required
            type="text"
            label="Summary"
            name="summary"
            value={this.state.summary}
            onChange={this.handleChange}
          />
          <Form.Input
            required
            type="text"
            label="Year"
            name="year"
            value={this.state.release_year}
            onChange={this.handleChange}
          />
          <Form.Input
            required
            type="text"
            label="Stars (1-10)"
            name="stars"
            value={this.state.stars}
            onChange={this.handleChange}
          />
          <Form.Input
            required
            type="text"
            label="Rank"
            name="rank"
            value={this.state.rank}
            onChange={this.handleChange}
          />
          <Form.Input
            required
            type="text"
            label="Genre"
            name="genre"
            value={this.state.genre}
            onChange={this.handleChange}
          />
          <Form.Input
            required
            type="text"
            label="Director"
            name="director"
            value={this.state.director}
            onChange={this.handleChange}
          />
          <Form.Input
            type="text"
            label="Image URL"
            name="img_url"
            value={this.state.img_url}
            onChange={this.handleChange}
          />
          {/* <Dropzone
            style={{ border: 'dashed 1px black', width: '100%', height: '50px', marginBottom: '10px', textAlign: 'center' }}
            onDrop={this.onDrop}
          >
            Want to add an image?
          </Dropzone> */}
          <Form.Button>Submit</Form.Button>
        </Form>
      </div>
    )
  }
}

export default MovieForm;
