package routers

import (
	"myproject/controllers"

	beego "github.com/beego/beego/v2/server/web"
)

func init() {
	beego.Router("/search", &controllers.SearchController{})
}

func init() {
	beego.Router("/data", &controllers.DataController{})
}
