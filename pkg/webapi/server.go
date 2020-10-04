package webapi

import (
	"github.com/gmarcial/e-money/pkg/repository"
	"github.com/go-chi/chi"
	"github.com/go-chi/chi/middleware"
	"log"
	"net/http"
)

func Serve(){
	router := chi.NewRouter()
	router.Use(middleware.Logger)

	router.Get("/test", func(writer http.ResponseWriter, request *http.Request) {
		rep, err := repository.Get("gmarcial", "e-money")
		if err != nil {
			panic(err.Error())
		}

		popularity := rep.AnalyzePopularity()
		_, err = writer.Write([]byte(popularity))
		if err != nil {
			panic(err.Error())
		}
	})

	log.Print(http.ListenAndServe(":5000", router))
}
