import React, { Component } from 'react';
import { Container } from 'semantic-ui-react';
import Home from './components/Home';
import logo from './logo.svg';
import './App.css';
// import axios from 'axios';


class App extends Component {
  render() {
    return (
      <div className="App">
        <div className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h2>Mega Movies</h2>
        </div>
        <Container>
          lalala
          <Home />

        </Container>

      </div>
    );
  }
}

export default App;
