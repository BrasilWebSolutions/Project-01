import React from "react";
import ReactDOM from "react-dom";
import Site from "./Site";

import "./styles.css";

function App() {
  return (
    <div className="App">
      <Site />
    </div>
  );
}

const rootElement = document.getElementById("root");
ReactDOM.render(<App />, rootElement);
