package repository

import (
	"encoding/json"
	"errors"
	"fmt"
	"net/http"
)

const baseUrl = "https://api.github.com/repos"

func Get(owner, name string) (*Repository, error) {
	url := fmt.Sprintf("%v/%v/%v", baseUrl, owner, name)
	response, err := http.Get(url)
	if err != nil {
		return nil, err
	}

	if response.StatusCode == 404 {
		return nil, errors.New("the repository not found")
	}

	decoder := json.NewDecoder(response.Body)
	repository := new (Repository)
	err = decoder.Decode(repository)
	if err != nil {
		return nil, err
	}

	return repository, nil
}