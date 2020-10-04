package repository

import "testing"

func TestIntegrationTryGetANonexistentRepository(t *testing.T){
	//Arrange
	owner := "8123j91i2391"
	name := "8123j91i2391"

	//Action
	_, err := Get(owner, name)

	//Assert
	if err == nil {
		t.Errorf("It was obtained a nonexistent repository.")
	}
}

func TestIntegrationGetARepository(t *testing.T){
	//Arrange
	owner := "gmarcial"
	name := "e-money"

	//Action
	repository, err := Get(owner, name)

	//Assert
	if err != nil {
		t.Errorf("Occurred an error to get a repository: %v", err.Error())
	}

	t.Log(repository)
}
