package main

import (
	"io"
	"os"
	"text/tabwriter"
)

func main() {
	w := tabwriter.NewWriter(os.Stdout, 0, 0, 1, ' ', 0)
	io.Copy(w, os.Stdin)
	w.Flush()
}
