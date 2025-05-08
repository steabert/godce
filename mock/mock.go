package indirect

import (
	"fmt"
	"net/http"
)

func Hello() {
	fmt.Println(http.DefaultClient)
}
