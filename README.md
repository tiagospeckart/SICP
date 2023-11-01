# Study code and Exercises from the book Structure and Interpretation od Computer Programs

The programs in the book are written in an old subset of `Scheme`, which is a dialect of `Lisp`.

[Online Book](https://mitp-content-server.mit.edu/books/content/sectbyfn/books_pres_0/6515/sicp.zip/index.html)

## Running on VSCode

1. [Install Racket](https://racket-lang.org/)
2. [Install `Magical Racket` on `VS Code`](https://marketplace.visualstudio.com/items?itemName=evzen-wybitul.magic-racket)
3. [Use the SICP Collection](https://docs.racket-lang.org/sicp-manual/index.html)

## Built-In Functions

### `nil : null?`

An alias for `()`.

### `(inc x) → number?`

- `x : number?`
- Returns `(+ x 1)`.

### `(dec x) → number?`

- `x : number?`
- Returns `(- x 1)`.

### `the-empty-stream : stream?`

The null/empty stream.

### `(cons-stream first-expr rest-expr)`

Produces a stream.

### `(stream-null? s) → boolean?`

- `s : stream?`
- Returns `#t` if `s` is the-empty-stream, `#f` otherwise.

### `(runtime) → natural-number/c`

Returns the current time measured as the number of microseconds passed since a fixed beginning.

### `(random n) → real?`

- `n : positive?`
- Returns a random integer between `0` and `n-1` (inclusive) if `n` is an exact integer. Otherwise, returns a random inexact number between `0` and `n` (exclusive).

### `(amb expr ...)`

The `amb` operator.

Additionally, `true`, `false`, `identity`, and `error` are provided from Racket.
