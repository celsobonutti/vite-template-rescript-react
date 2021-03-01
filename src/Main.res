switch ReactDOM.querySelector("#root") {
| None => Js.Console.error("Could not found an element with the root id.")
| Some(rootElement) => ReactDOM.render(<App />, rootElement)
}
