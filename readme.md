# TweetPic 

TweetPic allows you to capture and serve images of a tweet. 

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

## Error Handling

The API uses standard HTTP status codes to indicate the success or failure of requests. In case of errors, a JSON response with an "Error" field is typically returned.

## Rate Limiting

A rate limit is applied to the `/tweetpic` endpoint to prevent abuse. If you exceed the rate limit, you'll receive a 429 Too Many Requests response.

## Security

Currently, the API does not require authentication. However, it's recommended to use HTTPS for all requests to ensure data privacy and integrity.

## Additional Notes

- The API serves static files from the root directory.
- Image files are stored in the `./images/` directory.
- The server listens on port 443 for HTTPS connections.

