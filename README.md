# [www.cmessinides.com](https://www.cmessinides.com)

My personal portfolio site

![The homepage of www.cmessinides.com. Screenshot.](screenshot.png)

## Why I made this

My [previous site](https://github.com/cmessinides/v1-cmessinides.com), built with [Gatsby](https://www.gatsbyjs.org/) and [Styled Components](https://www.styled-components.com/), felt too unwieldly to update. (By no fault of those technologies &mdash; I simply find it faster to use plain HTML and CSS at this point in time.) I made this version using [Parcel](https://parceljs.org/) to speed up development, simplify the code base, and try out a new design.

## What it does

Parcel builds a static site from files in the `src` directory. The entry file is `index.pug`, and Parcel automatically processes and outputs any stylesheets, scripts, images, and other pages linked from `index.pug`.

The `src/data` directory holds JSON data files that represent site configuration, collections of similar items (like projects or writing samples), or any other information that needs to be accessible everywhere in the site. The data in these files is made available to [Pug](https://pugjs.org) files via the `locals` object exported by the `pug.config.js` file, which Parcel automatically detects and runs ([Parcel documentation](https://parceljs.org/pug.html#example-3---pug-with-locals)).

## How to use it

In the terminal, clone the repository and navigate into the project directory:

```bash
$ git clone https://github.com/CMessinides/cmessinides.com.git
$ cd cmessinides.com
```

Install dependencies:

```bash
yarn install
# or npm install
```

Start a development server:

```bash
yarn start
# npm run start
```

Build a static version of the site:

```bash
yarn build
# npm run build
```

This site is hosted on [Netlify](https://www.netlify.com) &mdash; pushing or merging changes into the `master` branch will trigger a deploy.

## License

MIT
