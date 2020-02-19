# Download Shopify theme for GitHub Actions

This GitHub action is based on https://github.com/pgrimaud/action-shopify.

## Usage

To use the action simply add the following lines to your workflow .yml file.

```yaml
...
  steps:
      - uses: actions/checkout@v1
      - name: Shopify
        uses: sonmic/action-shopify-download@master
        env:
          SHOPIFY_PASSWORD: ${{ secrets.SHOPIFY_PASSWORD }}
          SHOPIFY_STORE_URL: ${{ secrets.SHOPIFY_STORE_URL }}
          SHOPIFY_THEME_ID: ${{ secrets.SHOPIFY_THEME_ID }}
          THEME_PATH: ${{ secrets.THEME_PATH }}
```

### Required Secrets

First you have to generate a private app to get an API KEY on Shopify. [Get API Access](https://shopify.github.io/themekit/#get-api-access).

Then you'll need to provide some secrets to use the action.

* **SHOPIFY_PASSWORD**: Your password from your private app previously created.
* **SHOPIFY_STORE_URL**: Your store url. (e.g. `demo.myshopify.com`).
* **SHOPIFY_THEME_ID** (optional): Your theme id on your Shopify Store. If omitted, it defaults to the live theme.
* **THEME_PATH**: Path of your theme on your GitHub repository. If your theme is at the root of your repository, just use `./`.

### Optional Arguments

The optional argument you can add to improve theme download. Optional args are available on [Theme Kit help](https://shopify.github.io/themekit/configuration/#flags).

#### Examples

```yaml
...
  steps:
      - uses: actions/checkout@v1
      - name: Shopify
        uses: sonmic/action-shopify-download@master
        env:
          SHOPIFY_PASSWORD: ${{ secrets.SHOPIFY_PASSWORD }}
          SHOPIFY_STORE_URL: ${{ secrets.SHOPIFY_STORE_URL }}
          SHOPIFY_THEME_ID: ${{ secrets.SHOPIFY_THEME_ID }}
          THEME_PATH: ${{ secrets.THEME_PATH }}
        with:
          args: --ignored-file=sections/*
```

Your can also combine multiple arguments : 

```yaml
...
  steps:
      - uses: actions/checkout@v1
      - name: Shopify
        uses: sonmic/action-shopify-download@master
        env:
          SHOPIFY_PASSWORD: ${{ secrets.SHOPIFY_PASSWORD }}
          SHOPIFY_STORE_URL: ${{ secrets.SHOPIFY_STORE_URL }}
          SHOPIFY_THEME_ID: ${{ secrets.SHOPIFY_THEME_ID }}
          THEME_PATH: ${{ secrets.THEME_PATH }}
        with:
          args: --ignored-file=sections/* --timeout=30
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
