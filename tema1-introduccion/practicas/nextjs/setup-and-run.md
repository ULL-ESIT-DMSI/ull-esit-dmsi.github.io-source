---
permalink: /nextjs/setup-and-run
--- 

# Setup and run the app

Here is the file tree hierarchy of the project:

```
✗ tree -I node_modules 
.
├── README.md
├── docs
│   └── images
│       ├── generate-api-key.png
│       ├── local-app-runnning.png
│       └── menu-1.png
├── package-lock.json
├── package.json
├── pages
│   ├── api
│   │   └── generate.js
│   ├── index.js
│   └── index.module.css
└── public
    └── dog.png

5 directories, 10 files
```

Proceed as follows:

1. Starting with the assignment repo, install the requirements

   ```bash
   $ npm install
   ```

   Which installs the dependencies listed in `package.json`:

   ```json
   ➜  openai-quickstart-node git:(main) ✗ jq '.dependencies' package.json 
    {
      "next": "^12.1.6",
      "openai": "^3.0.0",
      "react": "17.0.2",
      "react-dom": "17.0.2"
    }
   ```
   Notice that the `next` version major is 12 

2. Make a copy of the example environment variables file

   ```bash
   $ cp .env.example .env
   ```

3. Add your [API key](https://beta.openai.com/account/api-keys) to the newly created `.env` file

4. Run the app

   ```bash
   $ npm run dev
   ```

   The console shows:

   ``` 
   ➜  openai-quickstart-node git:(master) ✗ npm run dev

   > openai-quickstart-node@0.1.0 dev
   > next dev

   ready - started server on 0.0.0.0:3000, url: http://localhost:3000
   info  - Loaded env from /Users/casianorodriguezleon/campus-virtual/2223/learning/openai-learning/openai-quickstart-node/.env
   wait  - compiling...
   event - compiled client and server successfully in 1174 ms (113 modules)
   ```

5. You should now be able to access the app at [http://localhost:3000](http://localhost:3000)! 

   ![](/assets/images/nextjs/local-app-runnning.png)


For the context behind this example app, check out the [Open AI tutorial](https://beta.openai.com/docs/quickstart).
