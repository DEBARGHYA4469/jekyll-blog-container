# Use the official Ruby image as a base
FROM ruby:3.1

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs vim && apt-get clean

# Set the working directory
WORKDIR /home/dkundu/myblog

# Copy the Gemfile and Gemfile.lock
COPY Gemfile ./

# Print the current working directory
RUN pwd

# Print the contents of the current directory
RUN ls -la

# Install the dependencies
RUN bundle install

# Copy the rest of the application
COPY . .

# Expose the port Jekyll will run on
EXPOSE 4000

# Start Jekyll server
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]

