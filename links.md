DCE prevention
- https://github.com/golang/go/issues/60464#issuecomment-1568790431

Avoiding global map in text/template
- https://github.com/golang/go/commit/435b9dd1a1bae81a32eafb59a9de7fb2873cd51e

Mitigation since go 1.21:
- https://go-review.googlesource.com/c/go/+/461315/21/src/cmd/compile/internal/staticinit/sched.go
