# TweetPic 

TweetPic allows you to capture and serve images of a tweet. 
tweetpic.taila9d411.ts.net
//this was run in Linux/Debian 12 x64
//filled .env
//with https

Require
- go
- chrome

1. manual chrome/ium headless with "chromium --headless=old --disable-gpu --remote-debugging-port=9222"
2. bash build_run.sh (?sudo) 

## Endpoints
### 1. Get Tweet Picture

Retrieves a picture of a specified tweet.

- **URL:** `/tweetpic`
- **Method:** GET
- **Query Parameters:**
  - `id` (required): The ID of the tweet to capture

#### Responses

- **200 OK**
  - Content-Type: application/json
  - Schema:
    ```json
    {
      "TweetPicUrl": "/image?name=123e4567-e89b-12d3-a456-426614174000.jpeg"
    }
    ```

- **400 Bad Request**
  - Content-Type: application/json
  - Schema:
    ```json
    {
      "Error": "Tweet Doesnt Exist"
    }
    ```

- **429 Too Many Requests**
  - Content-Type: application/json
  - Schema:
    ```json
    {
      "Error": "Too many requests, slow down!"
    }
    ```

### 2. Serve Image

Serves the generated tweet image.

- **URL:** `/image`
- **Method:** GET
- **Query Parameters:**
  - `name` (required): The name of the image file to serve

#### Responses

- **200 OK**
  - Content-Type: image/jpeg, image/png, or image/gif
  - Content: Binary image data

- **400 Bad Request**
  - Content-Type: text/plain
  - Content: Error message

- **404 Not Found**
  - Content-Type: text/plain
  - Content: Error message

### 3. Health Check

Checks the health status of the API.

- **URL:** `/health-check`
- **Method:** GET

#### Responses

- **200 OK**
  - Content-Type: application/json
  - Schema:
    ```json
    {
      "Status": 200
    }
    ```

## Additional Notes

- The API serves static files from the root directory.
- Tweet screenshot image files are stored in the `./images/` directory.
- The server listens on port 443 for HTTPS connections.

