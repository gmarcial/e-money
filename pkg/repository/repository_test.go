package repository

import "testing"

func TestUnitDontAnalyzeARepositoryWithZeroStars(t *testing.T){
	//Arrange
	repository := &Repository{
		ID:            10,
		Name:          "Test",
		Description:   "Test description",
		QuantityStars: 0,
	}

	//Action
	popularityResult := repository.AnalyzePopularity()

	//Assert
	if popularityResult != unknown {
		t.Error("A repository with zero stars don't to be analyzed")
	}
}

func TestUnitAnalyzeAUnpopularRepository(t *testing.T){
	//Arrange
	for i := 1; i <= 100; i++ {
		repository := &Repository{
			ID:            10,
			Name:          "Test",
			Description:   "Test description",
			QuantityStars: i,
		}

		//Action
		popularityResult := repository.AnalyzePopularity()

		//Assert
		if popularityResult != unpopular {
			t.Errorf("A repository with %v stars don't was analyzed how unpopular: %v", repository.QuantityStars, popularityResult)
		}
	}
}

func TestUnitAnalyzeAPopularRepository(t *testing.T){
	//Arrange
	for i := 101; i <= 500; i++ {
		repository := &Repository{
			ID:            10,
			Name:          "Test",
			Description:   "Test description",
			QuantityStars: i,
		}

		//Action
		popularityResult := repository.AnalyzePopularity()

		//Assert
		if popularityResult != popular {
			t.Errorf("A repository with %v stars don't was analyzed how popular: %v", repository.QuantityStars, popularityResult)
		}
	}
}

func TestUnitAnalyzeAVeryPopularRepository(t *testing.T){
	//Arrange
	repository := &Repository{
		ID:            10,
		Name:          "Test",
		Description:   "Test description",
		QuantityStars: 1000,
	}

	//Action
	popularityResult := repository.AnalyzePopularity()

	//Assert
	if popularityResult != veryPopular {
		t.Errorf("A repository with %v stars don't was analyzed how very popular: %v", repository.QuantityStars, popularityResult)
	}
}
