package repository

const  (
	unknown = "Não contem nenhuma estrela para que possa ser analisado."
	unpopular = "O Projeto não é popular"
	popular = "O Projeto é popular"
	veryPopular = "O Projeto é muito popular!!!"
)

type Repository struct {
	ID int `json:"id"`
	Name string `json:"name"`
	Description string `json:"description"`
	QuantityStars int `json:"stargazers_count"`
}

func (repository *Repository) AnalyzePopularity() string {
	if repository.QuantityStars == 0 {
		return unknown
	}

	if repository.QuantityStars == 1 || repository.QuantityStars <= 100 {
		return unpopular
	} else if repository.QuantityStars == 101 || repository.QuantityStars <= 500 {
		return popular
	}

	return veryPopular
}

