open System

// Define a type for a message using a Discriminated Union
type GreetingMessage = 

    | Simple of string
    | Complex of string * DateTime

// A function to process the message using pattern matching
let processMessage msg =
    match msg with

    | Simple s -> s
    | Complex (s, dt) -> sprintf "%s at %O" s dt

// The entry point of the application
[<EntryPoint>]
let main argv =
    // Create a complex message value (values are immutable by default)
    let message = Complex ("Hello world", DateTime.Now)

    // Process and print the message
    let output = processMessage message
    printfn "%s" output

    // Use a pipe-forward operator to call a function whose result is ignored
    Console.ReadLine() |> ignore

    // Return an exit code
    0
