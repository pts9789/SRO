import React from 'react';
import NavBar from './nav_bar/nav_bar';
import Footer from './footer/footer';
const App = (props) => {
    const Modal = props.modal;
    return (
    <div>
      <header>
        <NavBar />
      </header>

      <h1>SRO(ttenTomatoes)</h1>
      { Modal ? <Modal /> : null }

      <footer>
        <Footer />
      </footer>
    </div>
  );
};

export default App;
