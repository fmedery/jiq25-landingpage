# AGENTS.md

This file provides guidance to agents when working with code in this repository.

## Project Overview

This is a single-page web application built with vanilla HTML, CSS, and JavaScript. It uses Tailwind CSS loaded via a CDN. To run the project, simply open the `index.html` file in a web browser.

## Key Patterns

- **Language Translation**: The site supports English and French. Text content is managed within a `translations` object in the main script. To add or modify text, edit this object and use the `data-key` attribute on the corresponding HTML elements.
- **Image Animation**: The images in the "era boxes" have a randomized animation start time. This is controlled by the `--start-delay` CSS custom property, which is set dynamically with JavaScript.

## Development

- **Dependencies**: All dependencies are loaded via CDNs in the `index.html` file. There is no package manager or build process.
- **Styling**: Styling is done with Tailwind CSS and a few custom CSS rules in the `<style>` tag of the `index.html` file.

## Assets

- **Google Logo**: The Google logo is the official logo and should not be replaced.

## Deployment

The application is deployed to Cloud Run using a `cloudbuild.yaml` file. The `Dockerfile` builds an Nginx image that serves the static content of the website. The `nginx.conf` file configures Nginx to listen on port 8080 and serve the `index.html` file as the root.