package controllers

import (
	"encoding/json"
	"io/ioutil"
	"log"

	"github.com/beego/beego/v2/client/httplib"
	beego "github.com/beego/beego/v2/server/web"
)

type SearchController struct {
	beego.Controller
}
type DataController struct {
	beego.Controller
}

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

type Data2 []struct {
	Id   int    `json:"id"`
	Name string `json:"name"`
}
type Data3 []struct {
	Id   string `json:"id"`
	Name string `json:"name"`
}

func (c *DataController) Get() {
	limit := c.GetString("limit")
	breed := c.GetString("breed_id")
	mime := c.GetString("mime_types")
	order := c.GetString("order")
	category := c.GetString("category_ids")
	page := c.GetString("page")
	req := httplib.Get("https://api.thecatapi.com/v1/images/search")
	req.Header("x-api-key", `31cf5af0-bb4d-4275-971c-0e161cbdfa0b`)
	req.Param("limit", limit)
	req.Param("page", page)
	req.Param("breed_id", breed)
	req.Param("mime_types", mime)
	req.Param("order", order)
	req.Param("category_ids", category)
	resp, err := req.Response()
	if err != nil {
		log.Fatal(err)
	}
	body, _ := ioutil.ReadAll(resp.Body)
	var F Data1
	err = json.Unmarshal(body, &F)
	c.Data["json"] = &F
	c.ServeJSON()
}

func (c *SearchController) Get() {
	req1 := httplib.Get("https://api.thecatapi.com/v1/breeds")
	req1.Header("x-api-key", `31cf5af0-bb4d-4275-971c-0e161cbdfa0b`)
	resp1, err20 := req1.Response()
	if err20 != nil {
		log.Fatal(err20)
	}
	var Bd Data3
	body1, _ := ioutil.ReadAll(resp1.Body)
	err20 = json.Unmarshal(body1, &Bd)
	c.Data["B"] = &Bd

	req2 := httplib.Get("https://api.thecatapi.com/v1/categories")
	req2.Header("x-api-key", `31cf5af0-bb4d-4275-971c-0e161cbdfa0b`)
	resp2, err21 := req2.Response()
	if err21 != nil {
		log.Fatal(err21)
	}
	var Category Data2
	body2, _ := ioutil.ReadAll(resp2.Body)
	err21 = json.Unmarshal(body2, &Category)
	c.Data["C"] = &Category

	breed := c.GetString("breed_id")
	mime := c.GetString("mime_types")
	order := c.GetString("order")
	category := c.GetString("category_ids")
	page := c.GetString("page")
	req := httplib.Get("https://api.thecatapi.com/v1/images/search")
	req.Header("x-api-key", `31cf5af0-bb4d-4275-971c-0e161cbdfa0b`)
	req.Param("limit", "9")
	//req.Param("limit", limit)
	req.Param("page", page)
	req.Param("breed_id", breed)
	req.Param("mime_types", mime)
	req.Param("order", order)
	req.Param("category_ids", category)
	resp, err := req.Response()
	if err != nil {
		log.Fatal(err)
	}
	body, _ := ioutil.ReadAll(resp.Body)
	var F Data1
	err = json.Unmarshal(body, &F)
	c.Data["F"] = &F
	c.TplName = "index.tpl"
}
