%%raw(`import './App.css'`);

@module("./logo.svg") external logo: string = "default"

@react.component
let make = () => {
  let (count, setCount) = React.useState(_ => 0)

  <div className="App">
    <header className="App-header">
      <img src=logo className="App-logo" alt="logo" />
      <p> {React.string("Hello Vite + ReScript React!")} </p>
      <p>
        <button onClick={_ => setCount(count => count + 1)}>
          {React.string(`count is: ${Belt.Int.toString(count)}`)}
        </button>
      </p>
      <p>
        {React.string("Edit ")}
        <code> {React.string("App.res")} </code>
        {React.string(" and save to test HMR updates.")}
      </p>
      <p>
        <a
          className="App-link" href="https://reactjs.org" target="_blank" rel="noopener noreferrer">
          {React.string("Learn React")}
        </a>
        {React.string(" | ")}
        <a
          className="App-link"
          href="https://rescript-lang.org/"
          target="_blank"
          rel="noopener noreferrer">
          {React.string("Learn ReScript")}
        </a>
        {React.string(" | ")}
        <a
          className="App-link"
          href="https://vitejs.dev/guide/features.html"
          target="_blank"
          rel="noopener noreferrer">
          {React.string("Vite Docs")}
        </a>
      </p>
    </header>
  </div>
}
