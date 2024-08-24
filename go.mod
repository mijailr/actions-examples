module github.com/mijailr/actions-examples

go 1.22.0

require (
  github.com/mijailr/actions-examples/mod1 v0.0.0
  github.com/mijailr/actions-examples/mod2 v0.0.0
)

replace github.com/mijailr/actions-examples/mod1 => ./mod1
replace github.com/mijailr/actions-examples/mod2 => ./mod2
