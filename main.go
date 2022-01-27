package main

import (
	_ "myproject/routers"

	beego "github.com/beego/beego/v2/server/web"
)

type Data1 []struct {
	ID         string `json:"id"`
	Url        string `json:"url"`
	Width      string `json:"width"`
	Height     string `json:"height"`
	Mime_type  string `json:"mime_type"`
	Entities   string `json:"entities"`
	Breeds     string `json:"breeds"`
	Animals    string `json:"animals"`
	Categories string `json:"categories"`
}

func main() {
	// req := httplib.Get("https://api.thecatapi.com/v1/images/search")
	// req.Header("x-api-key", `31cf5af0-bb4d-4275-971c-0e161cbdfa0b`)
	// req.Param("limit", "6")
	// req.Param("page", "3")
	// req.Param("breed", "Abyssinian")
	// resp, err := req.Response()
	// if err != nil {
	// 	log.Fatal(err)
	// }
	// body, _ := ioutil.ReadAll(resp.Body)

	// var F Data1

	// err = json.Unmarshal(body, &F)

	// //fmt.Printf("%+v", f[0].Body)

	// for i := 0; i < len(F); i++ {
	// 	fmt.Println(F[i].Url)
	// }
	beego.Run()
}
