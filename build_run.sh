mkdir images
go mod tidy
go build -ldflags="-s -w" -o tweetpic
./tweetpic