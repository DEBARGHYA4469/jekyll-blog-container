# Jekyll Blog for Math and Programming

Welcome to the Jekyll Blog Containerization project! This project provides a Docker-based solution to streamline the setup and management of Jekyll blogs tailored for math and programming content.

## Features

- **Easy Setup**: Quickly get started with a Jekyll blog using Docker.
- **Pre-configured Environment**: Includes all necessary dependencies and configurations for a smooth blogging experience.
- **MathJax Integration**: Seamlessly supports MathJax for rendering mathematical equations.
- **Code Syntax Highlighting**: Pre-configured for effective code presentation.
- **Customizable**: Easily adapt the container setup to fit your specific blogging needs.

## Getting Started

### Cloning the Repository

1. Clone this repository to your local machine:
    ```bash
    git clone git@github.com:DEBARGHYA4469/jekyll-blog-container.git
    ```

### Setting Up on Windows with WSL

1. **Create a Symlink:**

   If you’re using Windows with WSL, create a symlink to the cloned repository. Open your WSL terminal and run: (note: Here <USER> is your windows username)
    ```bash
    ln -s /mnt/c/Users/<USER>/jekyll-blog-container/* myblog
    ```

2. **Navigate to the Directory:**

    ```bash
    cd myblog
    ```
3. [Important] Change the `$WORKDIR` in Dockerfile and `volumes` in docker-compose.yaml file based on your username. 

4. **Start the Docker Containers:**

    Build and start the Docker containers with:
    ```bash
    docker-compose up --build
    ```

5. **Access Your Blog:**

   Open your web browser and go to [http://localhost:5000//jekyll-blog-container](http://localhost:5000//jekyll-blog-container) to view your blog.

### Configuring Your Blog

To tailor the blog to your needs, update the configuration in the `_config.yaml` file:

- **baseUrl:** Set this to your blog's URL. For example:
    ```yaml
    url: "https://your-custom-url.com"
    ```
 	For github-io pages, you need to set this to https://<GitHub UserName>.github.io
- **title:** Update this to the title of your blog.
- **email:** Enter your email address.
- **description:** Provide a description for your blog.

### Customizing Your Blog

- **Creating Posts:** Add your blog posts in the `_posts/` folder. Follow the naming convention `YEAR-MONTH-DAY-title.md` for the posts.
- **Creating Pages:** For pages like About and Resume, use `layout: page` in the front matter of the respective Markdown files.
- **Including Code Snippets:** Place your code snippets in the `include/` folder and include them in your HTML files using:
    ```html
    {% include blog1/sample.py %}
    ```
- **Adding Mathematical Expressions:** Use MathJax syntax to include mathematical formulas. For example:
    ```markdown
    $$ f(n) = g(n) + h(n) $$
    ```

## Contributing

If you'd like to contribute to this project, please fork the repository and submit a pull request with your changes. 
